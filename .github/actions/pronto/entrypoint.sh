#!/bin/sh -l

bundle exec pronto run -f github_status github_pr -c "$1"
