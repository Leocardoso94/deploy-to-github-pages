#!/bin/bash
set -e # exit with nonzero exit code if anything fails

SOURCE_BRANCH="master"

# run our compile script, discussed above
npm run build


# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
    echo "Skipping deploy."
    exit 0
fi


# go to the out directory and create a *new* Git repo
cd build
git init

# inside this git repo we'll pretend to be a new user
git config user.name "Travis CI"
git config user.email "leocardosoti@gmail.com"

# The first and only commit to this new Git repo contains all the
# files present with the commit message "Deploy to GitHub Pages".
git add .
git commit -m "Deploy to GitHub Pages"

# Force push from the current repo's master branch to the remote
# repo's gh-pages branch. (All previous history on the gh-pages branch
# will be lost, since we are overwriting it.) We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be exposed.
 git push --force  --quiet "https://${GH_USER}:${GH_TOKEN}@${GH_REPO}" master:gh-pages > /dev/null 2>&1
