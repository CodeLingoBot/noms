SRC="node_modules/babel-regenerator-runtime/runtime.js main.js"
OUT="tagshow.js"

export NODE_ENV=production

node_modules/.bin/browserify \
    -p bundle-collapser/plugin \
    $SRC \
    | node_modules/.bin/uglifyjs -c -m > $OUT