#!/bin/bash
if [ $# -lt 1 ]
then
	echo "Needs an cabal command as first argument"
	exit 1
fi
CABAL="$1"
git submodule update --init --recursive
$CABAL install opengl-api/ CodeGenerating/ OpenGLRawgenBase/OpenGLRawgenBase/ OpenGLRawgenBase/OpenGLRawInterface/
$CABAL install --only-dependencies
