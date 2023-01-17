find _images/mermaid/ -type f -name '*.mmd' -print0 |
    while IFS= read -r -d '' line; do
        f=$(basename "$line")
        echo $f
        docker run -u `id -u`:`id -g` --rm -v $(pwd)/_images/mermaid:/data minlag/mermaid-cli -e png -i "/data/${f}"
    done
