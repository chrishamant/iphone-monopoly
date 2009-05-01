#!/bin/sh
scan-build -k --status-bugs -o ~/clangout -checker-cfref -warn-dead-stores -warn-objc-methodsigs -warn-objc-missing-dealloc -warn-objc-unused-ivars xcodebuild -configuration Debug clean build

