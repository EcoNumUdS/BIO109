#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "s.vissault@yahoo.fr"
git config --global user.name "SteveViss"

git clone https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git slides

cd slides
git checkout -B gh-pages master

for dir in */ ; do
    cd $dir
    cp -r ./pres/* ./
    git add assets/ libraries/ index.html
    cd ..
done

git commit -m "Update the slides" || true
git push origin gh-pages
