#!/bin/bash

GH_ACCOUNT=sguernion
GH_REPOSITORY=blog
GH_REMOTE=master
GH_PAGESBRANCH=travis

# only proceed script when started not by pull request (PR)
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "this is PR, exiting"
  exit 0
fi

# enable error reporting to the console
set -e

# build site with jbake, by default to `_site' folder
mvn clean install

# cleanup
rm -rf ../${GH_REPOSITORY}.${GH_PAGESBRANCH}

#clone `master' branch of the repository using encrypted GH_TOKEN for authentification
git clone https://${GH_TOKEN}@github.com/${GH_ACCOUNT}/${GH_REPOSITORY}.git ../${GH_REPOSITORY}.${GH_PAGESBRANCH}

# copy generated HTML site to `master' branch
cp -R target/blog/* ../${GH_REPOSITORY}.${GH_PAGESBRANCH}

# commit and push generated content to `master' branch
# since repository was cloned in write mode with token auth - we can push there
cd ../${GH_REPOSITORY}.${GH_PAGESBRANCH}
git config user.email ${GIT_EMAIL}
git config user.name ${GIT_NAME}
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --quiet origin ${GH_PAGESBRANCH} > /dev/null 2>&1
