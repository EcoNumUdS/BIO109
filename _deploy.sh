#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "s.vissault@yahoo.fr"
git config --global user.name "SteveViss"

git clone https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git slides

cd slides
git checkout --orphan gh-pages
git rm -rf .
git checkout master

for dir in */ ; do
    cd $dir
    git checkout gh-pages -- ./pres/assets/ ./pres/libraries/ ./pres/index.html
    cd ..
done

git checkout gh-pages
git commit -m "Update the slides" || true
git push origin gh-pages
