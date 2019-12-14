#!/bin/sh -l

export PATH=$GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH
pronto run -f github_pr_review github_pr -c "$1"
