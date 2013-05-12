The generated source can be build by the following steps.

 1. Make a build directory.
 2. Copy the subdirectories `cbits/` and `include/` and the files
    `OpenGLRawTest.cabal` and `Setup.hs` to this directory.
 3. Make the `generated/` directory and copy the generated code into it.
 4. Move `Extensions.hs`, `GetProcAddress.hs` and `Types.hs` to their
    appropriate location in the `src/` directory.
 5. Edit `OpenGLRawTest.cabal` to list the modules in `modulesE.txt`
    and `modulesI.txt` in the exposed-modules and other-modules.
 6. Build it using the standerd method.
