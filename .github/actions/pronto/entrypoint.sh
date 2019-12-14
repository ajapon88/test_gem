#!/bin/sh -l

export PATH=$GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH
pronto run -f github_status github_pr -c "$1"
