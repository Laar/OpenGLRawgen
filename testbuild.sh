#!/bin/bash

# This script makes the OpenGLRawTest package with the sources from the
# supplied directory and tries to build it.

COMPILEDIR="compile/"
BUILDSRC="BuildSources/"
RAWDIR="$COMPILEDIR/src/Graphics/Rendering/OpenGL/Raw/"

function printUsage() {
    echo "USAGE testbuild.sh GENERATED_SOURCES_DIR";
    exit 1;
}

if [ $# -lt 1 ] ;
then
    echo "Missing argument";
    printUsage
fi
if [ ! -d "$1/Graphics/" ] || [ ! -f "$1/modulesE.txt" ] || [ ! -f "$1/modulesI.txt" ] ;
then
    echo "Incorrect sources folder"
    printUsage
fi

# make sure the compilation directory is present and is empty
if [ -d "$COMPILEDIR" ] ;
then
    rm -r "$COMPILEDIR"
fi
mkdir -p "$COMPILEDIR"

# fill the compile directory
cp -r "$BUILDSRC/cbits/" "$BUILDSRC/include" "$COMPILEDIR"
mkdir -p "$RAWDIR/Internal/"
cp "$BUILDSRC/Extensions.hs" "$BUILDSRC/GetProcAddress.hs" "$RAWDIR/Internal/"
cp "$BUILDSRC/Types.hs" "$RAWDIR"
cp "$BUILDSRC/OpenGLRawTest.cabal" "$COMPILEDIR"
sed -i "/exposed-modules/r $1/modulesE.txt" "$COMPILEDIR/OpenGLRawTest.cabal"
sed -i "/other-modules/r $1/modulesI.txt" "$COMPILEDIR/OpenGLRawTest.cabal"
cp -r "$1/Graphics" "$COMPILEDIR/src/"
cd "$COMPILEDIR"
cabal configure --disable-library-profiling
exec cabal build
