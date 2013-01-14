{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureInteger
       (glTexParameterIuivEXT, glTexParameterIivEXT,
        glGetTexParameterIuivEXT, glGetTexParameterIivEXT,
        glClearColorIuiEXT, glClearColorIiEXT, gl_RGB_INTEGER_EXT,
        gl_RGBA_INTEGER_MODE_EXT, gl_RGBA_INTEGER_EXT, gl_RGBA8UI_EXT,
        gl_RGBA8I_EXT, gl_RGBA32UI_EXT, gl_RGBA32I_EXT, gl_RGBA16UI_EXT,
        gl_RGBA16I_EXT, gl_RGB8UI_EXT, gl_RGB8I_EXT, gl_RGB32UI_EXT,
        gl_RGB32I_EXT, gl_RGB16UI_EXT, gl_RGB16I_EXT, gl_RED_INTEGER_EXT,
        gl_LUMINANCE_INTEGER_EXT, gl_LUMINANCE_ALPHA_INTEGER_EXT,
        gl_LUMINANCE_ALPHA8UI_EXT, gl_LUMINANCE_ALPHA8I_EXT,
        gl_LUMINANCE_ALPHA32UI_EXT, gl_LUMINANCE_ALPHA32I_EXT,
        gl_LUMINANCE_ALPHA16UI_EXT, gl_LUMINANCE_ALPHA16I_EXT,
        gl_LUMINANCE8UI_EXT, gl_LUMINANCE8I_EXT, gl_LUMINANCE32UI_EXT,
        gl_LUMINANCE32I_EXT, gl_LUMINANCE16UI_EXT, gl_LUMINANCE16I_EXT,
        gl_INTENSITY8UI_EXT, gl_INTENSITY8I_EXT, gl_INTENSITY32UI_EXT,
        gl_INTENSITY32I_EXT, gl_INTENSITY16UI_EXT, gl_INTENSITY16I_EXT,
        gl_GREEN_INTEGER_EXT, gl_BLUE_INTEGER_EXT, gl_BGR_INTEGER_EXT,
        gl_BGRA_INTEGER_EXT, gl_ALPHA_INTEGER_EXT, gl_ALPHA8UI_EXT,
        gl_ALPHA8I_EXT, gl_ALPHA32UI_EXT, gl_ALPHA32I_EXT,
        gl_ALPHA16UI_EXT, gl_ALPHA16I_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexParameterIuivEXT #-}
 
ptr_glTexParameterIuivEXT :: FunPtr a
ptr_glTexParameterIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glTexParameterIuivEXT"
 
glTexParameterIuivEXT :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glTexParameterIuivEXT
  = dyn_glTexParameterIuivEXT ptr_glTexParameterIuivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterIuivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTexParameterIivEXT #-}
 
ptr_glTexParameterIivEXT :: FunPtr a
ptr_glTexParameterIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glTexParameterIivEXT"
 
glTexParameterIivEXT :: GLenum -> GLenum -> Ptr GLint -> IO ()
glTexParameterIivEXT
  = dyn_glTexParameterIivEXT ptr_glTexParameterIivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterIivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterIuivEXT #-}
 
ptr_glGetTexParameterIuivEXT :: FunPtr a
ptr_glGetTexParameterIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glGetTexParameterIuivEXT"
 
glGetTexParameterIuivEXT :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glGetTexParameterIuivEXT
  = dyn_glGetTexParameterIuivEXT ptr_glGetTexParameterIuivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTexParameterIuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterIivEXT #-}
 
ptr_glGetTexParameterIivEXT :: FunPtr a
ptr_glGetTexParameterIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glGetTexParameterIivEXT"
 
glGetTexParameterIivEXT :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTexParameterIivEXT
  = dyn_glGetTexParameterIivEXT ptr_glGetTexParameterIivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexParameterIivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glClearColorIuiEXT #-}
 
ptr_glClearColorIuiEXT :: FunPtr a
ptr_glClearColorIuiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glClearColorIuiEXT"
 
glClearColorIuiEXT :: GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glClearColorIuiEXT = dyn_glClearColorIuiEXT ptr_glClearColorIuiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearColorIuiEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glClearColorIiEXT #-}
 
ptr_glClearColorIiEXT :: FunPtr a
ptr_glClearColorIiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_integer"
        "glClearColorIiEXT"
 
glClearColorIiEXT :: GLint -> GLint -> GLint -> GLint -> IO ()
glClearColorIiEXT = dyn_glClearColorIiEXT ptr_glClearColorIiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearColorIiEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
gl_RGB_INTEGER_EXT :: GLenum
gl_RGB_INTEGER_EXT = 36248
 
gl_RGBA_INTEGER_MODE_EXT :: GLenum
gl_RGBA_INTEGER_MODE_EXT = 36254
 
gl_RGBA_INTEGER_EXT :: GLenum
gl_RGBA_INTEGER_EXT = 36249
 
gl_RGBA8UI_EXT :: GLenum
gl_RGBA8UI_EXT = 36220
 
gl_RGBA8I_EXT :: GLenum
gl_RGBA8I_EXT = 36238
 
gl_RGBA32UI_EXT :: GLenum
gl_RGBA32UI_EXT = 36208
 
gl_RGBA32I_EXT :: GLenum
gl_RGBA32I_EXT = 36226
 
gl_RGBA16UI_EXT :: GLenum
gl_RGBA16UI_EXT = 36214
 
gl_RGBA16I_EXT :: GLenum
gl_RGBA16I_EXT = 36232
 
gl_RGB8UI_EXT :: GLenum
gl_RGB8UI_EXT = 36221
 
gl_RGB8I_EXT :: GLenum
gl_RGB8I_EXT = 36239
 
gl_RGB32UI_EXT :: GLenum
gl_RGB32UI_EXT = 36209
 
gl_RGB32I_EXT :: GLenum
gl_RGB32I_EXT = 36227
 
gl_RGB16UI_EXT :: GLenum
gl_RGB16UI_EXT = 36215
 
gl_RGB16I_EXT :: GLenum
gl_RGB16I_EXT = 36233
 
gl_RED_INTEGER_EXT :: GLenum
gl_RED_INTEGER_EXT = 36244
 
gl_LUMINANCE_INTEGER_EXT :: GLenum
gl_LUMINANCE_INTEGER_EXT = 36252
 
gl_LUMINANCE_ALPHA_INTEGER_EXT :: GLenum
gl_LUMINANCE_ALPHA_INTEGER_EXT = 36253
 
gl_LUMINANCE_ALPHA8UI_EXT :: GLenum
gl_LUMINANCE_ALPHA8UI_EXT = 36225
 
gl_LUMINANCE_ALPHA8I_EXT :: GLenum
gl_LUMINANCE_ALPHA8I_EXT = 36243
 
gl_LUMINANCE_ALPHA32UI_EXT :: GLenum
gl_LUMINANCE_ALPHA32UI_EXT = 36213
 
gl_LUMINANCE_ALPHA32I_EXT :: GLenum
gl_LUMINANCE_ALPHA32I_EXT = 36231
 
gl_LUMINANCE_ALPHA16UI_EXT :: GLenum
gl_LUMINANCE_ALPHA16UI_EXT = 36219
 
gl_LUMINANCE_ALPHA16I_EXT :: GLenum
gl_LUMINANCE_ALPHA16I_EXT = 36237
 
gl_LUMINANCE8UI_EXT :: GLenum
gl_LUMINANCE8UI_EXT = 36224
 
gl_LUMINANCE8I_EXT :: GLenum
gl_LUMINANCE8I_EXT = 36242
 
gl_LUMINANCE32UI_EXT :: GLenum
gl_LUMINANCE32UI_EXT = 36212
 
gl_LUMINANCE32I_EXT :: GLenum
gl_LUMINANCE32I_EXT = 36230
 
gl_LUMINANCE16UI_EXT :: GLenum
gl_LUMINANCE16UI_EXT = 36218
 
gl_LUMINANCE16I_EXT :: GLenum
gl_LUMINANCE16I_EXT = 36236
 
gl_INTENSITY8UI_EXT :: GLenum
gl_INTENSITY8UI_EXT = 36223
 
gl_INTENSITY8I_EXT :: GLenum
gl_INTENSITY8I_EXT = 36241
 
gl_INTENSITY32UI_EXT :: GLenum
gl_INTENSITY32UI_EXT = 36211
 
gl_INTENSITY32I_EXT :: GLenum
gl_INTENSITY32I_EXT = 36229
 
gl_INTENSITY16UI_EXT :: GLenum
gl_INTENSITY16UI_EXT = 36217
 
gl_INTENSITY16I_EXT :: GLenum
gl_INTENSITY16I_EXT = 36235
 
gl_GREEN_INTEGER_EXT :: GLenum
gl_GREEN_INTEGER_EXT = 36245
 
gl_BLUE_INTEGER_EXT :: GLenum
gl_BLUE_INTEGER_EXT = 36246
 
gl_BGR_INTEGER_EXT :: GLenum
gl_BGR_INTEGER_EXT = 36250
 
gl_BGRA_INTEGER_EXT :: GLenum
gl_BGRA_INTEGER_EXT = 36251
 
gl_ALPHA_INTEGER_EXT :: GLenum
gl_ALPHA_INTEGER_EXT = 36247
 
gl_ALPHA8UI_EXT :: GLenum
gl_ALPHA8UI_EXT = 36222
 
gl_ALPHA8I_EXT :: GLenum
gl_ALPHA8I_EXT = 36240
 
gl_ALPHA32UI_EXT :: GLenum
gl_ALPHA32UI_EXT = 36210
 
gl_ALPHA32I_EXT :: GLenum
gl_ALPHA32I_EXT = 36228
 
gl_ALPHA16UI_EXT :: GLenum
gl_ALPHA16UI_EXT = 36216
 
gl_ALPHA16I_EXT :: GLenum
gl_ALPHA16I_EXT = 36234