#!/bin/sh -l

pronto run -f github_status github_pr -c "$1"
