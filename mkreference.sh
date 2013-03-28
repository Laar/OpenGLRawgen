#!/bin/bash

# builder for the reference output archive, given a folder it tries to
# build every source folder with testbuild.sh and if succesful compres
# it into an archive.

REFERENCEDIR="referenceoutput/"
REFERENCETAR="referenceoutput.tar.gz"

function printUsage() {
    echo "mkreference.sh SOURCE_DIR"
    exit 1
}

if [ $# -lt 1 ] ;
then
    echo "No Source folder"
    printUsage
fi
if [ ! -d "$1" ]
then
    echo "Non existent source folder"
    printUsage
fi

if [ -d "$REFERENCEDIR" ]
then
    rm -r "$REFERENCEDIR"
fi

cp -r "$1" "$REFERENCEDIR"

for TARGET in $(find "$REFERENCEDIR" -mindepth 1 -maxdepth 1 -type d)
do
    ./testbuild.sh "$TARGET"
    if [ $? -ne 0 ]
    then
        echo "compiling failed for $TARGET"
        rm -r "$REFERENCEDOR"
        exit 1
    fi
done
tar -z -cf "$REFERENCETAR" "$REFERENCEDIR"
