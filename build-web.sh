#!/bin/sh

minify_js() {
    # bun build "$1" --minify-syntax --minify-whitespace --target browser --outfile "$1"
    esbuild --minify --loader=js <"$1" >"$1.out"
    mv "$1.out" "$1"
}

minify_css() {
    esbuild --minify --loader=css <"$1" >"$1.out"
    mv "$1.out" "$1"
}

minify_html() {
    bunx html-minifier --remove-comments --minify-js esbuild \
        --minify-css esbuild \
        --remove-optional-tags --remove-redundant-attributes \
        --remove-tag-whitespace --collapse-whitespace \
        --use-short-doctype --remove-script-type-attributes --remove-style-link-type-attributes \
        "$1" -o "$1"
}

minify_json() {
    bun repl -e "(async()=>await Bun.write(Bun.stdout,JSON.stringify(require('./$1'))))()" >"$1.out"
    mv "$1.out" "$1"
}

bun run clean
bun run build
(
    cd public || exit

    (
        cd css || exit
        for file in ./*; do
            if [ "${file##*.}" = "css" ]; then
                minify_css "$file"
            fi
        done
    )

    (
        cd js || exit
        for file in ./*; do
            if [ "${file##*.}" = "js" ]; then
                minify_js "$file"
            fi
        done
    )

    minify_html index.html
)
