#!/bin/bash
REFERENCEDIR="referenceoutput"
TESTDIR="testoutput"

echo "---------------------------"
echo "-- Generating new output --"
echo "---------------------------"
time ./OpenGLRawgen --no-vendorf=input/novendor -o "$TESTDIR" -c -d input +RTS -sstderr &&
echo  "---------------"
echo  "-- Comparing --"
echo  "---------------"

exec diff "$TESTDIR" "$REFERENCEDIR"

