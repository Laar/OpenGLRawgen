{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VdpauInterop
       (glVDPAUUnmapSurfacesNV, glVDPAUMapSurfacesNV,
        glVDPAUSurfaceAccessNV, glVDPAUGetSurfaceivNV,
        glVDPAUUnregisterSurfaceNV, glVDPAUIsSurfaceNV,
        glVDPAURegisterOutputSurfaceNV, glVDPAURegisterVideoSurfaceNV,
        glVDPAUFiniNV, glVDPAUInitNV, gl_WRITE_DISCARD_NV,
        gl_SURFACE_MAPPED_NV, gl_SURFACE_REGISTERED_NV,
        gl_SURFACE_STATE_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVDPAUUnmapSurfacesNV #-}
 
ptr_glVDPAUUnmapSurfacesNV :: FunPtr a
ptr_glVDPAUUnmapSurfacesNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUUnmapSurfacesNV"
 
glVDPAUUnmapSurfacesNV :: GLsizei -> Ptr GLintptr -> IO ()
glVDPAUUnmapSurfacesNV
  = dyn_glVDPAUUnmapSurfacesNV ptr_glVDPAUUnmapSurfacesNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUUnmapSurfacesNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAUMapSurfacesNV #-}
 
ptr_glVDPAUMapSurfacesNV :: FunPtr a
ptr_glVDPAUMapSurfacesNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUMapSurfacesNV"
 
glVDPAUMapSurfacesNV :: GLsizei -> Ptr GLintptr -> IO ()
glVDPAUMapSurfacesNV
  = dyn_glVDPAUMapSurfacesNV ptr_glVDPAUMapSurfacesNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUMapSurfacesNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAUSurfaceAccessNV #-}
 
ptr_glVDPAUSurfaceAccessNV :: FunPtr a
ptr_glVDPAUSurfaceAccessNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUSurfaceAccessNV"
 
glVDPAUSurfaceAccessNV :: GLintptr -> GLenum -> IO ()
glVDPAUSurfaceAccessNV
  = dyn_glVDPAUSurfaceAccessNV ptr_glVDPAUSurfaceAccessNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUSurfaceAccessNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr -> GLenum -> IO ())
 
{-# NOINLINE ptr_glVDPAUGetSurfaceivNV #-}
 
ptr_glVDPAUGetSurfaceivNV :: FunPtr a
ptr_glVDPAUGetSurfaceivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUGetSurfaceivNV"
 
glVDPAUGetSurfaceivNV ::
                      GLintptr -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()
glVDPAUGetSurfaceivNV
  = dyn_glVDPAUGetSurfaceivNV ptr_glVDPAUGetSurfaceivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUGetSurfaceivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr ->
                    GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVDPAUUnregisterSurfaceNV #-}
 
ptr_glVDPAUUnregisterSurfaceNV :: FunPtr a
ptr_glVDPAUUnregisterSurfaceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUUnregisterSurfaceNV"
 
glVDPAUUnregisterSurfaceNV :: GLintptr -> IO ()
glVDPAUUnregisterSurfaceNV
  = dyn_glVDPAUUnregisterSurfaceNV ptr_glVDPAUUnregisterSurfaceNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVDPAUUnregisterSurfaceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAUIsSurfaceNV #-}
 
ptr_glVDPAUIsSurfaceNV :: FunPtr a
ptr_glVDPAUIsSurfaceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUIsSurfaceNV"
 
glVDPAUIsSurfaceNV :: GLintptr -> IO ()
glVDPAUIsSurfaceNV = dyn_glVDPAUIsSurfaceNV ptr_glVDPAUIsSurfaceNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUIsSurfaceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr -> IO ())
 
{-# NOINLINE ptr_glVDPAURegisterOutputSurfaceNV #-}
 
ptr_glVDPAURegisterOutputSurfaceNV :: FunPtr a
ptr_glVDPAURegisterOutputSurfaceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAURegisterOutputSurfaceNV"
 
glVDPAURegisterOutputSurfaceNV ::
                               Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr
glVDPAURegisterOutputSurfaceNV
  = dyn_glVDPAURegisterOutputSurfaceNV
      ptr_glVDPAURegisterOutputSurfaceNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVDPAURegisterOutputSurfaceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr)
 
{-# NOINLINE ptr_glVDPAURegisterVideoSurfaceNV #-}
 
ptr_glVDPAURegisterVideoSurfaceNV :: FunPtr a
ptr_glVDPAURegisterVideoSurfaceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAURegisterVideoSurfaceNV"
 
glVDPAURegisterVideoSurfaceNV ::
                              Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr
glVDPAURegisterVideoSurfaceNV
  = dyn_glVDPAURegisterVideoSurfaceNV
      ptr_glVDPAURegisterVideoSurfaceNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVDPAURegisterVideoSurfaceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr a -> GLenum -> GLsizei -> Ptr GLuint -> IO GLintptr)
 
{-# NOINLINE ptr_glVDPAUFiniNV #-}
 
ptr_glVDPAUFiniNV :: FunPtr a
ptr_glVDPAUFiniNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUFiniNV"
 
glVDPAUFiniNV :: IO ()
glVDPAUFiniNV = dyn_glVDPAUFiniNV ptr_glVDPAUFiniNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUFiniNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glVDPAUInitNV #-}
 
ptr_glVDPAUInitNV :: FunPtr a
ptr_glVDPAUInitNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vdpau_interop"
        "glVDPAUInitNV"
 
glVDPAUInitNV :: Ptr a -> Ptr a -> IO ()
glVDPAUInitNV = dyn_glVDPAUInitNV ptr_glVDPAUInitNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVDPAUInitNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr a -> Ptr a -> IO ())
 
gl_WRITE_DISCARD_NV :: GLenum
gl_WRITE_DISCARD_NV = 35006
 
gl_SURFACE_MAPPED_NV :: GLenum
gl_SURFACE_MAPPED_NV = 34560
 
gl_SURFACE_REGISTERED_NV :: GLenum
gl_SURFACE_REGISTERED_NV = 34557
 
gl_SURFACE_STATE_NV :: GLenum
gl_SURFACE_STATE_NV = 34539