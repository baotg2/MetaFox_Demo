#!/bin/sh

# shellcheck disable=SC2034
event_type="$1"
org="metafoxapp"
repo="$2"

set -e

/usr/bin/curl -H "Accept: application/vnd.github.everest-preview+json" \
    -H "Authorization: token $GITHUB_PERSONAL_TOKEN" \
    --request POST \
    --data '{"event_type": "'"$event_type"'"}' \
    "https://api.github.com/repos/$org/$repo/dispatches"

echo "dispatched reposition_action $event_type"
echo "actions url: https://github.com/$org/$repo/actions"