#!/usr/bin/env bash

cat $@ |  # get all the content from the specified files
  tr '[:punct:][:digit:]' ' ' |  # remove punctuation
  tr '[:upper:]' '[:lower:]' |   # to lowercase
  tr ' ' '\n' |  # split on words
  tqdm |
  sort |
  tqdm |
  uniq -c |
  sort -nr > allwords.txt  # sort by most frequent words
