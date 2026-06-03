#/usr/bin/bash

dir="$HOME/sc/EnglerJan.github.io"
cd "$dir" || exit 1

cp "$dir"/symlinks/* "$dir/docs/"
git add .
git ci "Automatic deployment by deploy.sh"
git push
sleep 5
gh run watch
echo "Deployed!"
