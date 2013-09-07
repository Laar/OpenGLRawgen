#!/bin/bash
REFERENCEDIR="referenceoutput"
TESTDIR="testoutput"

if [ ! -d  "$REFERENCEDIR" ] ;
then
    echo "-------------------------"
    echo "-- Unpacking reference --"
    echo "-------------------------"
    tar -z -xf "$REFERENCEDIR.tar.gz"
fi

if [ -d "$TESTDIR" ]
then
    rm -r "$TESTDIR"
fi
mkdir "$TESTDIR"
echo "---------------------------"
echo "-- Generating new output --"
echo "---------------------------"
time ./OpenGLRawgen --no-vendorf=input/novendor -o "$TESTDIR/normal/" -c --groups -d input --warning-file=input/warningfile +RTS -sstderr &&
# ./OpenGLRawgen --no-vendorf=input/novendor -o "$TESTDIR/stripped/" -c -s -d input --warning-file=input/warningfile

if [[ $? == 0 ]] ;
then
    echo  "---------------"
    echo  "-- Comparing --"
    echo  "---------------"

    exec diff -r "$TESTDIR" "$REFERENCEDIR"
fi

