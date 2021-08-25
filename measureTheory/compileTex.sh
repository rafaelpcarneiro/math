#!/bin/sh

# $1 => directory to compile all tex files

for chapter in `ls`
do
    if [ -d $chapter ]; then
        for file in `ls $chapter/*.tex`
        do
            pdflatex  -output-directory=$chapter \
                      -no-shell-escape           \
                      -halt-on-error             \
                      $file
        done
    ls $chapter/* |grep -E "(aux|log|out|toc)"| xargs rm
    echo -e "$chapter ok\n"
    fi
done
