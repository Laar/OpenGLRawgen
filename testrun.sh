#!/bin/bash
REFERENCEDIR="referenceoutput"
TESTDIR="testoutput"

echo "---------------------------"
echo "-- Generating new output --" 
echo "---------------------------"
time ./OpenGLRawgen --no-vendorf=novendor -o "$TESTDIR" -c -d . && 
echo  "---------------"
echo  "-- Comparing --"
echo  "---------------"
diff "$TESTDIR" "$REFERENCEDIR"

