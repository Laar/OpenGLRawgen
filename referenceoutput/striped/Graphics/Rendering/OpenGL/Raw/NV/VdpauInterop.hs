{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VdpauInterop
       (glVDPAUUnregisterSurface, glVDPAUUnmapSurfaces,
        glVDPAUSurfaceAccess, glVDPAURegisterVideoSurface,
        glVDPAURegisterOutputSurface, glVDPAUMapSurfaces, glVDPAUIsSurface,
        glVDPAUInit, glVDPAUGetSurfaceiv, glVDPAUFini, gl_WRITE_DISCARD,
        gl_SURFACE_STATE, gl_SURFACE_REGISTERED, gl_SURFACE_MAPPED)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVDPAUUnregisterSurface #-}
 
ptr_glVDPAUUnregisterSurface :: FunPtr a
ptr_glVDPAUUnregisterSurface
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUUnregisterSurfaceNV"
 
glVDPAUUnregisterSurface :: GLintptr -> IO ()
glVDPAUUnregisterSurface
  = dyn_glVDPAUUnregisterSurface ptr_glVDPAUUnregisterSurface
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVDPAUUnregisterSurface ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAUUnmapSurfaces #-}
 
ptr_glVDPAUUnmapSurfaces :: FunPtr a
ptr_glVDPAUUnmapSurfaces
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUUnmapSurfacesNV"
 
glVDPAUUnmapSurfaces :: GLsizei -> Ptr GLintptr -> IO ()
glVDPAUUnmapSurfaces
  = dyn_glVDPAUUnmapSurfaces ptr_glVDPAUUnmapSurfaces
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUUnmapSurfaces ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAUSurfaceAccess #-}
 
ptr_glVDPAUSurfaceAccess :: FunPtr a
ptr_glVDPAUSurfaceAccess
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUSurfaceAccessNV"
 
glVDPAUSurfaceAccess :: GLintptr -> GLenum -> IO ()
glVDPAUSurfaceAccess
  = dyn_glVDPAUSurfaceAccess ptr_glVDPAUSurfaceAccess
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUSurfaceAccess ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr -> GLenum -> IO ())
 
{-# NOINLINE ptr_glVDPAURegisterVideoSurface #-}
 
ptr_glVDPAURegisterVideoSurface :: FunPtr a
ptr_glVDPAURegisterVideoSurface
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAURegisterVideoSurfaceNV"
 
glVDPAURegisterVideoSurface ::
                            Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr
glVDPAURegisterVideoSurface
  = dyn_glVDPAURegisterVideoSurface ptr_glVDPAURegisterVideoSurface
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVDPAURegisterVideoSurface ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr)
 
{-# NOINLINE ptr_glVDPAURegisterOutputSurface #-}
 
ptr_glVDPAURegisterOutputSurface :: FunPtr a
ptr_glVDPAURegisterOutputSurface
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAURegisterOutputSurfaceNV"
 
glVDPAURegisterOutputSurface ::
                             Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr
glVDPAURegisterOutputSurface
  = dyn_glVDPAURegisterOutputSurface ptr_glVDPAURegisterOutputSurface
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVDPAURegisterOutputSurface ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr)
 
{-# NOINLINE ptr_glVDPAUMapSurfaces #-}
 
ptr_glVDPAUMapSurfaces :: FunPtr a
ptr_glVDPAUMapSurfaces
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUMapSurfacesNV"
 
glVDPAUMapSurfaces :: GLsizei -> Ptr GLintptr -> IO ()
glVDPAUMapSurfaces = dyn_glVDPAUMapSurfaces ptr_glVDPAUMapSurfaces
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUMapSurfaces ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAUIsSurface #-}
 
ptr_glVDPAUIsSurface :: FunPtr a
ptr_glVDPAUIsSurface
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUIsSurfaceNV"
 
glVDPAUIsSurface :: GLintptr -> IO ()
glVDPAUIsSurface = dyn_glVDPAUIsSurface ptr_glVDPAUIsSurface
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUIsSurface ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAUInit #-}
 
ptr_glVDPAUInit :: FunPtr a
ptr_glVDPAUInit
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUInitNV"
 
glVDPAUInit :: Ptr a -> Ptr a -> IO ()
glVDPAUInit = dyn_glVDPAUInit ptr_glVDPAUInit
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUInit ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr a -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVDPAUGetSurfaceiv #-}
 
ptr_glVDPAUGetSurfaceiv :: FunPtr a
ptr_glVDPAUGetSurfaceiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUGetSurfaceivNV"
 
glVDPAUGetSurfaceiv ::
                    GLintptr -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()
glVDPAUGetSurfaceiv
  = dyn_glVDPAUGetSurfaceiv ptr_glVDPAUGetSurfaceiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUGetSurfaceiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr ->
                    GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVDPAUFini #-}
 
ptr_glVDPAUFini :: FunPtr a
ptr_glVDPAUFini
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUFiniNV"
 
glVDPAUFini :: IO ()
glVDPAUFini = dyn_glVDPAUFini ptr_glVDPAUFini
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUFini ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
gl_WRITE_DISCARD :: GLenum
gl_WRITE_DISCARD = 35006
 
gl_SURFACE_STATE :: GLenum
gl_SURFACE_STATE = 34539
 
gl_SURFACE_REGISTERED :: GLenum
gl_SURFACE_REGISTERED = 34557
 
gl_SURFACE_MAPPED :: GLenum
gl_SURFACE_MAPPED = 34560