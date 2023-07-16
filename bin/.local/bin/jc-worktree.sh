#!/usr/bin/env bash

selected=$(find ~/work/b2c-frontend.git/duh ~/work/b2c-frontend.git/chore ~/work/b2c-frontend.git/fix ~/work/b2c-frontend.git/feat ~/work/b2c-frontend.git/lab ~/work/b2c-frontend.git/perf -type d -maxdepth 2 | fzf)

# this will clean the worktress with leave overs
#find ~/work/b2c-frontend.git/chore ~/work/b2c-frontend.git/fix ~/work/b2c-frontend.git/feat ~/work/b2c-frontend.git/lab ~/work/b2c-frontend.git/perf -empty -type d -maxdepth 1 -delete


cd "${selected}"
