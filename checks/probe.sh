#!/bin/sh
# The greeting renders the username given in the query string (the input the benchmark is about).
curl -fsS --max-time 10 'http://app/?username=probe42' | grep -q 'Welcome probe42!'
