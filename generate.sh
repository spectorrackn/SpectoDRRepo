#!/bin/bash

cd ../doc 
sphinx-build . ../website

cd ../website
mv -u static/* static
grep -rl 'static' . | xargs sed -i "s/static/static/g"
