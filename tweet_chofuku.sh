#!/bin/bash
# tweet_chouku.sh: This script tweets "cho-fuku" when CVE for BIND has announced."
#                  ST2 trigger: email(imap)
#                  ST" action: shell(core.local)

export LANG=ja_JP.UTF8
export WORKDIR=/home/stanley/script

cd $WORKDIR
bundle exec ruby tweet.rb $1

exit
