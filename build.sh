#!/bin/sh
set -e
cd "$(dirname "$0")"

OUT="${1:-Lakshit_Verma_Resume.pdf}"
typst compile --font-path fonts-cm Lakshit_Verma_Resume.typ "$OUT"
