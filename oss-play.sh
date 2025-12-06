#!/usr/bin/env bash
#MODEL=~/models/gpt-oss-120b-F16.gguf
MODEL=~/models/gpt-oss-120b-mxfp4-00001-of-00003.gguf

llama-server \
  -m "$MODEL" \
  --grammar-file cline.gbnf \
  --chat-template-kwargs '{"reasoning_effort": "high"}' \
  --host 0.0.0.0 \
  --port 8080 \
  -c 0 --jinja \
  --verbose 2>&1 | tee server-start.log

