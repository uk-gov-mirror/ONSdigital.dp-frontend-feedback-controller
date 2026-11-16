#!/bin/bash -eux

set +x
git config --global url."https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${GITHUB_REPO_PATH}".insteadOf "https://github.com/${GITHUB_REPO_PATH}"
set -x

pushd dp-frontend-feedback-controller
  go install github.com/kevinburke/go-bindata/go-bindata
  make test-component
popd
