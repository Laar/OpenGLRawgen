#!/bin/bash
SPEC_URL="https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/gl.xml"
wget -O "input/gl.xml" "$SPEC_URL"  && ./testrun.sh
