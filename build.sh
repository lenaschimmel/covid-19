#!/bin/sh
# This script is copied from https://github.com/harisont/covid-19/commit/f3ff43e1ec1aa7fa9648b7253cdd199374ad713f
# See https://github.com/harisont/covid-19/issues/2#issuecomment-623906520 for discussion
pandoc --from markdown_strict+footnotes words/words.md -o words/words.html
cat index_head.html words/words.html index_tail.html > index.html