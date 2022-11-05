#!/bin/bash
R CMD 'devtools::document()'
git add .
git commit -m "Updates to package"
git push
