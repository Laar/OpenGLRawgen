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

rm -r "$TESTDIR"
mkdir "$TESTDIR"
echo "---------------------------"
echo "-- Generating new output --"
echo "---------------------------"
time ./OpenGLRawgen --no-vendorf=input/novendor -o "$TESTDIR/normal/" -c --groups -d input +RTS -sstderr &&
./OpenGLRawgen --no-vendorf=input/novendor -o "$TESTDIR/striped/" -c -s -d input

if [[ $? == 0 ]] ;
then
    echo  "---------------"
    echo  "-- Comparing --"
    echo  "---------------"

    exec diff -r "$TESTDIR" "$REFERENCEDIR"
fi

