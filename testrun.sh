#!/bin/bash
REFERENCEDIR="referenceoutput"
TESTDIR="testoutput"

echo "---------------------------"
echo "-- Generating new output --"
echo "---------------------------"
time ./OpenGLRawgen --no-vendorf=novendor -o "$TESTDIR" -c -d . +RTS -sstderr &&
echo  "---------------"
echo  "-- Comparing --"
echo  "---------------"

exec diff "$TESTDIR" "$REFERENCEDIR"

