#!/usr/bin/env bash

rm -rf Podfile.lock
rm -rf Gemfile.lock

bundle install

echo "[SHELL]current CocoaPods version: $(bundle exec pod --version)"
#pod install --no-repo-update
bundle exec pod install --no-repo-update


