#!/bin/bash

git_dir="/Users/yu/AndroidStudioProjects/sohu/sohuvideo_gradle"
cd $git_dir

# git diff --name-only 列出修改的文件名
changeFiles=$(git diff --name-only)
filestr=`echo $changeFiles | sed 's/ /,/g'`
echo "detekt 正在扫描..."

# detekt cli: https://detekt.dev/docs/gettingstarted/cli
detekt -i $filestr
