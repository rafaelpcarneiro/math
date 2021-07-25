#!/bin/bash


for file in `ls *tex -1`
do
	pdflatex $file
done

ls * -1 |grep -P "(aux|log|out)$"|xargs rm
