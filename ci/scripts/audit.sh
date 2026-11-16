#!/bin/bash -eux

export cwd=$(pwd)

set +x
git config --global url."https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${GITHUB_REPO_PATH}".insteadOf "https://github.com/${GITHUB_REPO_PATH}"
set -x

pushd $cwd/dp-frontend-feedback-controller
  make audit
popd
