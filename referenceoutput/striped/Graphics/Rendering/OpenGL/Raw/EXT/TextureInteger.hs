{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureInteger
       (glTexParameterIuiv, glTexParameterIiv, glGetTexParameterIuiv,
        glGetTexParameterIiv, glClearColorIui, glClearColorIi,
        gl_RGB_INTEGER, gl_RGBA_INTEGER_MODE, gl_RGBA_INTEGER, gl_RGBA8UI,
        gl_RGBA8I, gl_RGBA32UI, gl_RGBA32I, gl_RGBA16UI, gl_RGBA16I,
        gl_RGB8UI, gl_RGB8I, gl_RGB32UI, gl_RGB32I, gl_RGB16UI, gl_RGB16I,
        gl_RED_INTEGER, gl_LUMINANCE_INTEGER, gl_LUMINANCE_ALPHA_INTEGER,
        gl_LUMINANCE_ALPHA8UI, gl_LUMINANCE_ALPHA8I,
        gl_LUMINANCE_ALPHA32UI, gl_LUMINANCE_ALPHA32I,
        gl_LUMINANCE_ALPHA16UI, gl_LUMINANCE_ALPHA16I, gl_LUMINANCE8UI,
        gl_LUMINANCE8I, gl_LUMINANCE32UI, gl_LUMINANCE32I,
        gl_LUMINANCE16UI, gl_LUMINANCE16I, gl_INTENSITY8UI, gl_INTENSITY8I,
        gl_INTENSITY32UI, gl_INTENSITY32I, gl_INTENSITY16UI,
        gl_INTENSITY16I, gl_GREEN_INTEGER, gl_BLUE_INTEGER, gl_BGR_INTEGER,
        gl_BGRA_INTEGER, gl_ALPHA_INTEGER, gl_ALPHA8UI, gl_ALPHA8I,
        gl_ALPHA32UI, gl_ALPHA32I, gl_ALPHA16UI, gl_ALPHA16I)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexParameterIuiv #-}
 
ptr_glTexParameterIuiv :: FunPtr a
ptr_glTexParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glTexParameterIuivEXT"
 
glTexParameterIuiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glTexParameterIuiv = dyn_glTexParameterIuiv ptr_glTexParameterIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTexParameterIiv #-}
 
ptr_glTexParameterIiv :: FunPtr a
ptr_glTexParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glTexParameterIivEXT"
 
glTexParameterIiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glTexParameterIiv = dyn_glTexParameterIiv ptr_glTexParameterIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterIuiv #-}
 
ptr_glGetTexParameterIuiv :: FunPtr a
ptr_glGetTexParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glGetTexParameterIuivEXT"
 
glGetTexParameterIuiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glGetTexParameterIuiv
  = dyn_glGetTexParameterIuiv ptr_glGetTexParameterIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexParameterIuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterIiv #-}
 
ptr_glGetTexParameterIiv :: FunPtr a
ptr_glGetTexParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glGetTexParameterIivEXT"
 
glGetTexParameterIiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTexParameterIiv
  = dyn_glGetTexParameterIiv ptr_glGetTexParameterIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glClearColorIui #-}
 
ptr_glClearColorIui :: FunPtr a
ptr_glClearColorIui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glClearColorIuiEXT"
 
glClearColorIui :: GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glClearColorIui = dyn_glClearColorIui ptr_glClearColorIui
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearColorIui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glClearColorIi #-}
 
ptr_glClearColorIi :: FunPtr a
ptr_glClearColorIi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glClearColorIiEXT"
 
glClearColorIi :: GLint -> GLint -> GLint -> GLint -> IO ()
glClearColorIi = dyn_glClearColorIi ptr_glClearColorIi
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearColorIi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
gl_RGB_INTEGER :: GLenum
gl_RGB_INTEGER = 36248
 
gl_RGBA_INTEGER_MODE :: GLenum
gl_RGBA_INTEGER_MODE = 36254
 
gl_RGBA_INTEGER :: GLenum
gl_RGBA_INTEGER = 36249
 
gl_RGBA8UI :: GLenum
gl_RGBA8UI = 36220
 
gl_RGBA8I :: GLenum
gl_RGBA8I = 36238
 
gl_RGBA32UI :: GLenum
gl_RGBA32UI = 36208
 
gl_RGBA32I :: GLenum
gl_RGBA32I = 36226
 
gl_RGBA16UI :: GLenum
gl_RGBA16UI = 36214
 
gl_RGBA16I :: GLenum
gl_RGBA16I = 36232
 
gl_RGB8UI :: GLenum
gl_RGB8UI = 36221
 
gl_RGB8I :: GLenum
gl_RGB8I = 36239
 
gl_RGB32UI :: GLenum
gl_RGB32UI = 36209
 
gl_RGB32I :: GLenum
gl_RGB32I = 36227
 
gl_RGB16UI :: GLenum
gl_RGB16UI = 36215
 
gl_RGB16I :: GLenum
gl_RGB16I = 36233
 
gl_RED_INTEGER :: GLenum
gl_RED_INTEGER = 36244
 
gl_LUMINANCE_INTEGER :: GLenum
gl_LUMINANCE_INTEGER = 36252
 
gl_LUMINANCE_ALPHA_INTEGER :: GLenum
gl_LUMINANCE_ALPHA_INTEGER = 36253
 
gl_LUMINANCE_ALPHA8UI :: GLenum
gl_LUMINANCE_ALPHA8UI = 36225
 
gl_LUMINANCE_ALPHA8I :: GLenum
gl_LUMINANCE_ALPHA8I = 36243
 
gl_LUMINANCE_ALPHA32UI :: GLenum
gl_LUMINANCE_ALPHA32UI = 36213
 
gl_LUMINANCE_ALPHA32I :: GLenum
gl_LUMINANCE_ALPHA32I = 36231
 
gl_LUMINANCE_ALPHA16UI :: GLenum
gl_LUMINANCE_ALPHA16UI = 36219
 
gl_LUMINANCE_ALPHA16I :: GLenum
gl_LUMINANCE_ALPHA16I = 36237
 
gl_LUMINANCE8UI :: GLenum
gl_LUMINANCE8UI = 36224
 
gl_LUMINANCE8I :: GLenum
gl_LUMINANCE8I = 36242
 
gl_LUMINANCE32UI :: GLenum
gl_LUMINANCE32UI = 36212
 
gl_LUMINANCE32I :: GLenum
gl_LUMINANCE32I = 36230
 
gl_LUMINANCE16UI :: GLenum
gl_LUMINANCE16UI = 36218
 
gl_LUMINANCE16I :: GLenum
gl_LUMINANCE16I = 36236
 
gl_INTENSITY8UI :: GLenum
gl_INTENSITY8UI = 36223
 
gl_INTENSITY8I :: GLenum
gl_INTENSITY8I = 36241
 
gl_INTENSITY32UI :: GLenum
gl_INTENSITY32UI = 36211
 
gl_INTENSITY32I :: GLenum
gl_INTENSITY32I = 36229
 
gl_INTENSITY16UI :: GLenum
gl_INTENSITY16UI = 36217
 
gl_INTENSITY16I :: GLenum
gl_INTENSITY16I = 36235
 
gl_GREEN_INTEGER :: GLenum
gl_GREEN_INTEGER = 36245
 
gl_BLUE_INTEGER :: GLenum
gl_BLUE_INTEGER = 36246
 
gl_BGR_INTEGER :: GLenum
gl_BGR_INTEGER = 36250
 
gl_BGRA_INTEGER :: GLenum
gl_BGRA_INTEGER = 36251
 
gl_ALPHA_INTEGER :: GLenum
gl_ALPHA_INTEGER = 36247
 
gl_ALPHA8UI :: GLenum
gl_ALPHA8UI = 36222
 
gl_ALPHA8I :: GLenum
gl_ALPHA8I = 36240
 
gl_ALPHA32UI :: GLenum
gl_ALPHA32UI = 36210
 
gl_ALPHA32I :: GLenum
gl_ALPHA32I = 36228
 
gl_ALPHA16UI :: GLenum
gl_ALPHA16UI = 36216
 
gl_ALPHA16I :: GLenum
gl_ALPHA16I = 36234