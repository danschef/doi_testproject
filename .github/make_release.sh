#!/usr/bin/env bash

USER=danschef
REPO=doi_testproject
URL_RELEASES=https://api.github.com/repos/$USER/$REPO/releases

# create the release
API_JSON=$(printf '{"tag_name":"%s",
                    "target_commitish":"master",
                    "name":"%s",
                    "body":"",
                    "draft":false,
                    "prerelease":false}' $CI_COMMIT_TAG $CI_COMMIT_TAG)
AUTH_HEADER="Authorization: token $GITHUB_RELEASE_TOKEN"
curl $URL_RELEASES --data "$API_JSON" -H "$AUTH_HEADER"

# get latest release tag name
LATEST_RELEASE=$(curl -s "$URL_RELEASES" | grep -oP '"tag_name": "\K(.*)(?=")')

if [ $LATEST_RELEASE != $CI_COMMIT_TAG ]; then
 echo "Error: Could not properly create the release!" 1>&2
 exit 1
fi
