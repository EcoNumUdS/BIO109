#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "s.vissault@yahoo.fr"
git config --global user.name "SteveViss"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git slides
cd slides
cp -r ../pres/* ./
git add --all *
git commit -m "Update the slides" || true
git push origin gh-pages
