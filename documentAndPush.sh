#!/bin/bash
R -e "devtools::document()"
git add .
git commit -m "Updates to package"
git push
