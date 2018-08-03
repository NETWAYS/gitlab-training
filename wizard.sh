#!/bin/bash
DIR=$(pwd)
CLANG=${CLANG:-C.UTF-8}
IMAGE=${IMAGE:-netways/showoff:0.19.6}
CNAME=${CNAME:-showoff}
TRAINING=${TRAINING:-$(basename "$DIR")}
DOCKER=${DOCKER:-$(command -v docker)}
GIT=${GIT:-$(command -v git)}
SCRIPT_DIR=$(cd $(dirname $0); pwd -P)
NO_RESET=${NO_RESET:-""}

# Functions

execdocker () {
  if [[ -n $($DOCKER ps -aq -f name=$CNAME 2> /dev/null) ]]; then
    $DOCKER rm -f $CNAME 2> /dev/null
  fi

  $DOCKER run \
    -it \
    --name=$CNAME \
    --rm \
    -p 9090:9090 \
    -v "$DIR:/training" \
    -e "LANG=$CLANG" \
    -e "LANGUAGE=$CLANG" \
    -e "LC_ALL=$CANG" \
    $IMAGE \
    $1
}

printhandouts () {
  echo -e "\n--- RUN SHOWOFF STATIC FOR HANDOUTS ---"
  execdocker "showoff static print"
  echo -e "\n--- RUN WKHTMLTOPDF FOR HANDOUTS ---"
  execdocker "wkhtmltopdf --load-error-handling ignore -s A5 --print-media-type --footer-left [page] --footer-right ©NETWAYS static/index.html ${TRAINING}_${1}-handouts.pdf"
}

printexercises () {
  echo -e "\n--- RUN SHOWOFF STATIC FOR EXERCISES ---"
  execdocker "showoff static supplemental exercises"
  echo -e "\n--- RUN WKHTMLTOPDF FOR EXERCISES ---"
  execdocker "wkhtmltopdf --load-error-handling ignore -s A5 --print-media-type --footer-left [page] --footer-right ©NETWAYS static/index.html ${TRAINING}_${1}-exercises.pdf"
}

printsolutions () {
  echo -e "\n--- RUN SHOWOFF STATIC FOR SOLUTIONS ---"
  execdocker "showoff static supplemental solutions"
  echo -e "\n--- RUN WKHTMLTOPDF FOR SOLUTIONS ---"
  execdocker "wkhtmltopdf --load-error-handling ignore -s A5 --print-media-type --footer-left [page] --footer-right ©NETWAYS static/index.html ${TRAINING}_${1}-solutions.pdf"
}

setlayout () {
  find . -type l -maxdepth 1 -delete
  ln -s global/layouts/$1.css .
}

reset () {
  CHANGES=$($GIT status --porcelain $SCRIPT_DIR | grep -v wizard)
  if [[ -n $CHANGES ]]; then
    if [[ -n $NO_RESET ]]; then
      echo "Git has changes but NO_RESET was provided, abort"
    else
      echo ""
      echo -n "There are changes in '$SCRIPT_DIR', reset ... "
      $GIT status --porcelain $SCRIPT_DIR | grep -v 'wizard' | cut -f3 -d ' ' | xargs $GIT checkout HEAD --
      echo "done"
    fi
  fi

  exit 0
}

# Begin

trap "reset" EXIT

if [[ ! -x $DOCKER ]]; then
  echo "Command 'docker' not found, exit"
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
     sed -i '' 's|^[ \t\s]*"default":.*|    "default": "global/layouts/netways.tpl"|' showoff.json;;
  2) LAYOUT=osmc
     sed -i '' 's|^[ \t\s]*"default":.*|    "default": "global/layouts/osmc.tpl"|' showoff.json;;
  3) LAYOUT=osdc
     sed -i '' 's|^[ \t\s]*"default":.*|    "default": "global/layouts/osdc.tpl"|' showoff.json;;
  4) LAYOUT=osbconf
     sed -i '' 's|^[ \t\s]*"default":.*|    "default": "global/layouts/osbconf.tpl"|' showoff.json;;
esac

setlayout $LAYOUT

echo -e "\n### MODE ###\n"

MODE_DEFAULT=serve
read -p "Which mode? [serve/print] (Default: "$MODE_DEFAULT"): " MODE
MODE="${MODE:-$MODE_DEFAULT}"

if [[ $MODE == serve ]]; then
  echo "--- RUN SHOWOFF SERVE ---"
  execdocker "showoff serve"
elif [[ $MODE == print ]]; then
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
