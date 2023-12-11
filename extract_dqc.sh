#!/bin/bash
#
# NOTES
#
# - Must expand templates to avoid a large loss of content.
# - Text will not (redundantly) contain the title string.
# - Keep sections. Section title will be marked by "Section::::".
# - Keep lists. List bullets will be marked by "BULLET::::".
# - Keep tables. They're mostly garbage but can be removed later (remove "^!*").
# - Remove disambiguation pages. Right now there is no use for them.

INPUT=/mnt/nas1/dong-qichang/corpus/wiki/enwiki-latest-pages-articles.xml.bz2
OUTPUT=/mnt/nas1/dong-qichang/corpus/wiki/enwiki-latest-pages-articles

nohup python -m wikiextractor.WikiExtractor $INPUT \
       --json \
       --output $OUTPUT \
       --no-templates \
       --bytes 1024M \
       --links \
       > log.log 2>&1 &
