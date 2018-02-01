# publish.sh
# Generates site using Hugo compiler then pushes it to gh-pages branch
# The website pulls from our gh-pages branch to build itself.

# Christopher Choy 2017

#!/bin/sh

DIR=../uchicagowintercare.github.io/

cd $DIR/

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Pulling gh-pages."
git pull

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Cleaning out public/"
rm -rf public/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

echo "Pushing to github"
git push origin gh-pages

echo "Publish COMPLETE. Please remember to update the Custom Domain Field in the git repo's Settings."