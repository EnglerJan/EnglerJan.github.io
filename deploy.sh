#/usr/bin/bash

dir="$HOME/sc/EnglerJan.github.io"
cd "$dir" || exit 1

cp "$dir"/symlinks/* "$dir/docs/"
git add .
git ci "deploy.sh: $1"
git push
sleep 5
gh run watch
echo "Deployed!"
