#!/bin/sh
scan-build -k --status-bugs -o ~/clangout -checker-cfref -warn-objc-missing-dealloc -warn-objc-unused-ivars xcodebuild -sdk iphonesimulator3.0 -configuration Debug clean build

