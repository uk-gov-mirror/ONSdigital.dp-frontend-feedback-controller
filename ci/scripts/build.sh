#!/bin/bash -eux

set +x
git config --global url."https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${GITHUB_REPO_PATH}".insteadOf "https://github.com/${GITHUB_REPO_PATH}"
set -x

go install github.com/kevinburke/go-bindata/v4/...@v4.0.2

pushd dp-frontend-feedback-controller
  make build
  cp build/dp-frontend-feedback-controller Dockerfile.concourse ../build
popd
