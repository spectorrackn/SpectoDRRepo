#!/bin/bash

cd ../doc 
sphinx-build . ../website

cd ../website
mv -u static/* static
grep -rl --include=*.html '_static' . | xargs sed -i "s/_static/static/g"
