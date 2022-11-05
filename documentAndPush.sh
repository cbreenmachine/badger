#!/bin/bash
Rscript 'devtools::document()'
git add .
git commit -m "Updates to package"
git push
