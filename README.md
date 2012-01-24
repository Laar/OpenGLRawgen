# OpenGLRawgen

OpenGLRawgen is a generator tool to make a Raw FFI import of OpenGL to
haskell in style of OpenGLRaw.

## Project goal

The current (01-2012) OpenGLRaw is quite outdated and not practical to
keep up to date as everything needs to be done by hand. The goal of this
project is to make a generator which can produce most the otherwise
handwritten source of OpenGLRaw. Therefor it tries to keep the work
needed to generate a new version to a minimum and keeping in mind the
current conventions, while also trying to take advantage of the extra
processing power availible.

## Output
The generator has creates all sources in the
`Graphics.Rendering.OpenGL.Raw` namespace. In which it will generate
several sub namespace.

* `Core.Interanal` is generated to house all the code to describe the
   functions and enumerations which are part of a certain
   specification of OpenGL. Parts are put into modules based on the
   first version of the specification to which they were added.
* Extension granter namespaces e.g. `ARB` and `NV`, for each extension
  granting entity there will be a seperate namespace which will
  contain all there extensions.

Furthermore it will make several extra modules to group functions and
enumerations. Most importantly there are modules to do the grouping for
a specific version of the OpenGl specification, they can be found in the
subnamespace `Core`.

### Building
Several steps are needed to be preformed to generate a working cabal
package out of the generated sources. These steps are detailed in
`BuildSources.BUILDING.md`.

### Othersources
Some building blocks of the OpenGLRaw package have been reused from the
old package. These parts are those representing types and the several of
the internals (e.g the ones for retrieving proc-adresses). These are
also found in `BuildSources`, with there License.

## Changes from OpenGLRaw
There are of course some changes from the OpenGLRaw. (The list is
probably not complete, but these are the major points.)

### Core modules
The major change is probably that the core modules have been rearranged
. With the -c flag given to the generator there will also be some
compatibility modules to make the transition easier. In addition all
the types that are generated are exported from all modules. `Raw.hs`
now exports the latest OpenGL specification in stead of all values.

### Naming schemes
Several namings have been changed, there are two naming schemes for
enumerations and functions toggled by the -s and -S flags. -s Gives a
version where all extension suffixes have been removed, -S will result
in keeping them all. -S is default as it results in the least trouble.
As a consequence of name clashes with the -s option, the grouping
modules for extension granters (e.g. `ARB` and `NV`) have been
disabled.

## Implentation
The path from information to code is approximatly divided in three fases
each dedicated to one task in the process. Appart from these parts there
are a few important files.

* `Spec.RawSpec` represents the specification and has the main
   datatypes on which the code operate.
* `Main.Options` defines all the commandline options that can be used
  to influence the process.

### Information source
The implentation is based around the .spec files from the OpenGL
[registry][] which provide a source of all function and enumerations in
use. The (slightly corrected) files are parsed by [noteeds spec parser][parser]
. As some information is only available in the comments of the spec
files two extra files are used to represent the reusing of functions and
enumerations from other categories. All the parsing code can be found in
`Spec.Parsing`.

[registry]: http://www.opengl.org/registry/#specfiles
[parser]: https://raw.github.com/noteed/opengl-api

### Processing
The parsed spec file is processed in several ways to make it ready for
the code generation stage, this is done in `Spec.Processing` where more
information is found about the process.

### CodeGenerating
The processed spec is then used for the actual process of generating the
code. This is done in several parts described in several different
modules.

* `Code.Builder` represents the builder monads used to generate the
   code.
* `Code.Compatibility` has some functions for generating modules that
   are no longer present in the new file structure.
* `Code.GroupModule` has builders for modules that group other modules
   together to reexport them for easy imports.
* `Code.Module` makes the actual enumeration and functions.
* `Code.Raw` binds all the modules together to generate the full
  OpenGLRaw.

#### Dependencies
The generator depends on several packages.
The special ones are

* `haskell-src-exts` for representing the source code.
* `CodeGenerating` to add extra functions to `haskell-src-exts` for
   generating source code, it can be found [here][codegen]
* `opengl-api` [from noteed][parser] for parsing the spec files.

[codegen]:https://github.com/Laar/CodeGenerating
