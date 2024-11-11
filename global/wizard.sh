#!/bin/bash
DIR=$(pwd)
CLANG=${CLANG:-C.UTF-8}
IMAGE=${IMAGE:-netways/showoff:0.20.4}
CNAME=${CNAME:-showoff}
TRAINING=${TRAINING:-$(basename "$DIR")}
RUNTIME=${RUNTIME:-$(command -v docker)}
GIT=${GIT:-$(command -v git)}
SCRIPT_DIR=$(cd $(dirname $0); pwd -P)
NO_RESET=${NO_RESET:-""}

# Run given command in the showoff container
execdocker () {
  if [[ -n $($RUNTIME ps -aq -f name=$CNAME 2> /dev/null) ]]; then
    $RUNTIME rm -f $CNAME 2> /dev/null
  fi

  case $RUNTIME in
      *podman*) USERNS=keep-id;;
      *)        USERNS=host;;
  esac

  $RUNTIME run \
    -it \
    --name=$CNAME \
    --rm \
    -p 9090:9090 \
    --user $(id -u) \
    --userns=$USERNS \
    -v "$DIR:/training:z" \
    -e "LANG=$CLANG" \
    -e "LANGUAGE=$CLANG" \
    -e "LC_ALL=$CANG" \
    $IMAGE \
    $1
}

# Generate handouts as showoff HTML and convert HTML to PDF
printhandouts () {
  echo -e "\n--- RUN SHOWOFF STATIC FOR HANDOUTS ---"
  execdocker "showoff static print"
  # Removes showoff's Section markers for PDF output
  sed -i 's/~~~.*~~~ //g' static/index.html
  echo -e "\n--- RUN WKHTMLTOPDF FOR HANDOUTS ---"
  execdocker "wkhtmltopdf --enable-local-file-access --load-error-handling ignore -s ${FORMAT} --print-media-type --footer-left [page] --footer-right ©NETWAYS static/index.html ${TRAINING}_${1}_${FORMAT}-handouts.pdf"
}

# Generate exercises as showoff HTML and convert HTML to PDF
printexercises () {
  echo -e "\n--- RUN SHOWOFF STATIC FOR EXERCISES ---"
  execdocker "showoff static supplemental exercises"
  # Removes showoff's Section markers for PDF output
  sed -i 's/~~~.*~~~ //g' static/index.html
  echo -e "\n--- RUN WKHTMLTOPDF FOR EXERCISES ---"
  execdocker "wkhtmltopdf --enable-local-file-access --load-error-handling ignore -s ${FORMAT} --print-media-type --footer-left [page] --footer-right ©NETWAYS static/index.html ${TRAINING}_${1}_${FORMAT}-exercises.pdf"
}

# Generate solutions as showoff HTML and convert HTML to PDF
printsolutions () {
  echo -e "\n--- RUN SHOWOFF STATIC FOR SOLUTIONS ---"
  execdocker "showoff static supplemental solutions"
  # Removes showoff's Section markers for PDF output
  sed -i 's/~~~.*~~~ //g' static/index.html
  echo -e "\n--- RUN WKHTMLTOPDF FOR SOLUTIONS ---"
  execdocker "wkhtmltopdf --enable-local-file-access --load-error-handling ignore -s ${FORMAT} --print-media-type --footer-left [page] --footer-right ©NETWAYS static/index.html ${TRAINING}_${1}_${FORMAT}-solutions.pdf"
}

setlayout () {
  find . -maxdepth 1 -type l -name *.css -delete
  ln -s global/layouts/$1.css .
}

# Create reference if it doesn't exist
ln -sf . global

if [[ ! -x $RUNTIME ]]; then
  echo "Command '${RUNTIME}' not found, exit"
  exit 1
fi

if [[ ! -x $GIT ]]; then
  echo "Command 'git' not found, exit"
  exit 1
fi

# Wizard

clear

echo "###########################"
echo "  NETWAYS Training Wizard  "
echo "###########################"

echo -e "\n### LAYOUT ###"

echo -e "
   [1] NETWAYS
   [2] OSMC
   [3] OSDC
   [4] OSBConf\n"

LAYOUT_DEFAULT=1
read -p "Which Layout? [1-4] (Default: "$LAYOUT_DEFAULT"): " LAYOUT
LAYOUT="${LAYOUT:-$LAYOUT_DEFAULT}"

while [[ $LAYOUT != [1-4] ]]; do
  echo "Invalid option, try again..."
  read -p "What to print? [1-4] (Default: "$LAYOUT_DEFAULT"): " LAYOUT
  LAYOUT="${LAYOUT:-$LAYOUT_DEFAULT}"
done

case "$LAYOUT" in
  1) LAYOUT=netways
     sed -i 's|^[ \t\s]*"default":.*|    "default": "global/layouts/netways.tpl"|' showoff.json;;
  2) LAYOUT=osmc
     sed -i 's|^[ \t\s]*"default":.*|    "default": "global/layouts/osmc.tpl"|' showoff.json;;
  3) LAYOUT=osdc
     sed -i 's|^[ \t\s]*"default":.*|    "default": "global/layouts/osdc.tpl"|' showoff.json;;
  4) LAYOUT=osbconf
     sed -i 's|^[ \t\s]*"default":.*|    "default": "global/layouts/osbconf.tpl"|' showoff.json;;
esac

setlayout $LAYOUT

echo -e "\n### FORMAT ###"

echo -e "
   [1] A5
   [2] A4\n"

FORMAT_DEFAULT=1
read -p "Which format? [1-2] (Default: "$FORMAT_DEFAULT"): " FORMAT
FORMAT="${FORMAT:-$FORMAT_DEFAULT}"

while [[ $FORMAT != [1-2] ]]; do
  echo "Invalid option, try again..."
  read -p "Which format? [1-2] (Default: "$FORMAT_DEFAULT"): " FORMAT
  FORMAT="${FORMAT:-$FORMAT_DEFAULT}"
done

case "$FORMAT" in
  1) FORMAT=A5;;
  2) FORMAT=A4;;
esac

echo -e "\n### MODE ###"

echo -e "
   [1] serve
   [2] print\n"

MODE_DEFAULT=1
read -p "Which mode? [1-2] (Default: "$MODE_DEFAULT"): " MODE
MODE="${MODE:-$MODE_DEFAULT}"

if [[ $MODE == 1 ]]; then
  echo "--- RUN SHOWOFF SERVE ---"
  execdocker "showoff serve"
elif [[ $MODE == 2 ]]; then
  echo -e "\n### PRINT ###"

  echo -e "
   [1] Handouts
   [2] Handouts & Solutions
   [3] Handouts & Exercises & Solutions
   [4] Exercises & Solutions\n"

  PRINT_DEFAULT=2
  read -p "What to print? [1-4] (Default: "$PRINT_DEFAULT"): " PRINT
  PRINT="${PRINT:-$PRINT_DEFAULT}"

  while [[ $PRINT != [1-4] ]]; do
    echo "Invalid option, try again..."
    read -p "What to print? [1-4] (Default: "$PRINT_DEFAULT"): " PRINT
    PRINT="${PRINT:-$PRINT_DEFAULT}"
  done

  VERSION_DEFAULT=`grep release showoff.json | cut -f2 -d: | tr -d '"' | tr -d " " | tr -d ","`
  read -p "Which version? (Default: "$VERSION_DEFAULT"): " VERSION
  VERSION="${VERSION:-$VERSION_DEFAULT}"

  case "$PRINT" in
    1) printhandouts $VERSION;;
    2) printhandouts $VERSION
       printsolutions $VERSION;;
    3) printhandouts $VERSION
       printexercises $VERSION
       printsolutions $VERSION;;
    4) printexercises $VERSION
       printsolutions $VERSION;;
  esac
fi
