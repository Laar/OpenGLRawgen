#!/bin/bash
if [ $# -lt 1 ]
then
	echo "Needs an cabal command as first argument"
	exit 1
fi
CABAL="$1"
ghc-pkg list
git submodule update --init --recursive
$CABAL --version
$CABAL install CodeGenerating/ OpenGLRawgenBase/OpenGLRawgenBase/ OpenGLRawgenBase/OpenGLRawInterface/ opengl-xmlspec/ --dry-run -v
$CABAL install CodeGenerating/ OpenGLRawgenBase/OpenGLRawgenBase/ OpenGLRawgenBase/OpenGLRawInterface/ opengl-xmlspec/
$CABAL install --only-dependencies
