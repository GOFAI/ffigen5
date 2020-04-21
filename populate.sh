#!/bin/sh
rm -rf Applications
SDK=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk
# CFLAGS="-m64 -isysroot ${SDK} -ObjC"; export CFLAGS
CFLAGS="-m64 -isysroot ${SDK} -isystem /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/10.0.0/include -mmacosx-version-min=10.13 -ObjC"; export CFLAGS
h-to-ffi.sh ${SDK}/usr/include/objc/objc-runtime.h
h-to-ffi.sh ${SDK}/usr/include/objc/objc-exception.h
h-to-ffi.sh ${SDK}/usr/include/objc/Object.h
h-to-ffi.sh ${SDK}/usr/include/objc/Protocol.h
h-to-ffi.sh ${SDK}/System/Library/Frameworks/Cocoa.framework/Headers/Cocoa.h
