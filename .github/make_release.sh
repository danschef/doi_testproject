#!/usr/bin/env bash

API_JSON=$(printf '{"tag_name":"%s",
                    "target_commitish":"master",
                    "name":"%s",
                    "body":"sample message",
                    "draft":false,
                    "prerelease":false}' \
    $CI_COMMIT_TAG $CI_COMMIT_TAG)
AUTH_HEADER="Authorization: token $GITHUB_RELEASE_TOKEN"
curl https://api.github.com/repos/danschef/doi_testproject/releases --data "$API_JSON" -H "$AUTH_HEADER"
# curl --data "$API_JSON" \
#     -H 'Authorization: token $GITHUB_RELEASE_TOKEN' \
#     https://api.github.com/repos/danschef/doi_testproject/releases
# curl https://api.github.com/repos/danschef/doi_testproject/releases --data "$API_JSON" -H "Authorization: token $GITHUB_RELEASE_TOKEN"
