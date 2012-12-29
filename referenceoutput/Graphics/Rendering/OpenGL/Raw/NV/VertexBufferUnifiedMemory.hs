{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexBufferUnifiedMemory
       (glGetIntegerui64i_vNV, glVertexAttribIFormatNV,
        glVertexAttribFormatNV, glFogCoordFormatNV,
        glSecondaryColorFormatNV, glEdgeFlagFormatNV, glTexCoordFormatNV,
        glIndexFormatNV, glColorFormatNV, glNormalFormatNV,
        glVertexFormatNV, glBufferAddressRangeNV,
        gl_DRAW_INDIRECT_LENGTH_NV, gl_DRAW_INDIRECT_ADDRESS_NV,
        gl_DRAW_INDIRECT_UNIFIED_NV, gl_ELEMENT_ARRAY_LENGTH_NV,
        gl_FOG_COORD_ARRAY_LENGTH_NV, gl_SECONDARY_COLOR_ARRAY_LENGTH_NV,
        gl_EDGE_FLAG_ARRAY_LENGTH_NV, gl_TEXTURE_COORD_ARRAY_LENGTH_NV,
        gl_INDEX_ARRAY_LENGTH_NV, gl_COLOR_ARRAY_LENGTH_NV,
        gl_NORMAL_ARRAY_LENGTH_NV, gl_VERTEX_ARRAY_LENGTH_NV,
        gl_VERTEX_ATTRIB_ARRAY_LENGTH_NV, gl_ELEMENT_ARRAY_ADDRESS_NV,
        gl_FOG_COORD_ARRAY_ADDRESS_NV, gl_SECONDARY_COLOR_ARRAY_ADDRESS_NV,
        gl_EDGE_FLAG_ARRAY_ADDRESS_NV, gl_TEXTURE_COORD_ARRAY_ADDRESS_NV,
        gl_INDEX_ARRAY_ADDRESS_NV, gl_COLOR_ARRAY_ADDRESS_NV,
        gl_NORMAL_ARRAY_ADDRESS_NV, gl_VERTEX_ARRAY_ADDRESS_NV,
        gl_VERTEX_ATTRIB_ARRAY_ADDRESS_NV, gl_ELEMENT_ARRAY_UNIFIED_NV,
        gl_VERTEX_ATTRIB_ARRAY_UNIFIED_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetIntegerui64i_vNV #-}
 
ptr_glGetIntegerui64i_vNV :: FunPtr a
ptr_glGetIntegerui64i_vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glGetIntegerui64i_vNV"
 
glGetIntegerui64i_vNV :: GLenum -> GLuint -> Ptr GLuint64 -> IO ()
glGetIntegerui64i_vNV
  = dyn_glGetIntegerui64i_vNV ptr_glGetIntegerui64i_vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegerui64i_vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribIFormatNV #-}
 
ptr_glVertexAttribIFormatNV :: FunPtr a
ptr_glVertexAttribIFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glVertexAttribIFormatNV"
 
glVertexAttribIFormatNV ::
                        GLuint -> GLint -> GLenum -> GLsizei -> IO ()
glVertexAttribIFormatNV
  = dyn_glVertexAttribIFormatNV ptr_glVertexAttribIFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribIFormatNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glVertexAttribFormatNV #-}
 
ptr_glVertexAttribFormatNV :: FunPtr a
ptr_glVertexAttribFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glVertexAttribFormatNV"
 
glVertexAttribFormatNV ::
                       GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> IO ()
glVertexAttribFormatNV
  = dyn_glVertexAttribFormatNV ptr_glVertexAttribFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribFormatNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glFogCoordFormatNV #-}
 
ptr_glFogCoordFormatNV :: FunPtr a
ptr_glFogCoordFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glFogCoordFormatNV"
 
glFogCoordFormatNV :: GLenum -> GLsizei -> IO ()
glFogCoordFormatNV = dyn_glFogCoordFormatNV ptr_glFogCoordFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glSecondaryColorFormatNV #-}
 
ptr_glSecondaryColorFormatNV :: FunPtr a
ptr_glSecondaryColorFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glSecondaryColorFormatNV"
 
glSecondaryColorFormatNV :: GLint -> GLenum -> GLsizei -> IO ()
glSecondaryColorFormatNV
  = dyn_glSecondaryColorFormatNV ptr_glSecondaryColorFormatNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glSecondaryColorFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glEdgeFlagFormatNV #-}
 
ptr_glEdgeFlagFormatNV :: FunPtr a
ptr_glEdgeFlagFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glEdgeFlagFormatNV"
 
glEdgeFlagFormatNV :: GLsizei -> IO ()
glEdgeFlagFormatNV = dyn_glEdgeFlagFormatNV ptr_glEdgeFlagFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glEdgeFlagFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> IO ())
 
{-# NOINLINE ptr_glTexCoordFormatNV #-}
 
ptr_glTexCoordFormatNV :: FunPtr a
ptr_glTexCoordFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glTexCoordFormatNV"
 
glTexCoordFormatNV :: GLint -> GLenum -> GLsizei -> IO ()
glTexCoordFormatNV = dyn_glTexCoordFormatNV ptr_glTexCoordFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glIndexFormatNV #-}
 
ptr_glIndexFormatNV :: FunPtr a
ptr_glIndexFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glIndexFormatNV"
 
glIndexFormatNV :: GLenum -> GLsizei -> IO ()
glIndexFormatNV = dyn_glIndexFormatNV ptr_glIndexFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorFormatNV #-}
 
ptr_glColorFormatNV :: FunPtr a
ptr_glColorFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glColorFormatNV"
 
glColorFormatNV :: GLint -> GLenum -> GLsizei -> IO ()
glColorFormatNV = dyn_glColorFormatNV ptr_glColorFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glNormalFormatNV #-}
 
ptr_glNormalFormatNV :: FunPtr a
ptr_glNormalFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glNormalFormatNV"
 
glNormalFormatNV :: GLenum -> GLsizei -> IO ()
glNormalFormatNV = dyn_glNormalFormatNV ptr_glNormalFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glVertexFormatNV #-}
 
ptr_glVertexFormatNV :: FunPtr a
ptr_glVertexFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glVertexFormatNV"
 
glVertexFormatNV :: GLint -> GLenum -> GLsizei -> IO ()
glVertexFormatNV = dyn_glVertexFormatNV ptr_glVertexFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexFormatNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glBufferAddressRangeNV #-}
 
ptr_glBufferAddressRangeNV :: FunPtr a
ptr_glBufferAddressRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glBufferAddressRangeNV"
 
glBufferAddressRangeNV ::
                       GLenum -> GLuint -> GLuint64 -> GLsizeiptr -> IO ()
glBufferAddressRangeNV
  = dyn_glBufferAddressRangeNV ptr_glBufferAddressRangeNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferAddressRangeNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint64 -> GLsizeiptr -> IO ())
 
gl_DRAW_INDIRECT_LENGTH_NV :: GLenum
gl_DRAW_INDIRECT_LENGTH_NV = 36674
 
gl_DRAW_INDIRECT_ADDRESS_NV :: GLenum
gl_DRAW_INDIRECT_ADDRESS_NV = 36673
 
gl_DRAW_INDIRECT_UNIFIED_NV :: GLenum
gl_DRAW_INDIRECT_UNIFIED_NV = 36672
 
gl_ELEMENT_ARRAY_LENGTH_NV :: GLenum
gl_ELEMENT_ARRAY_LENGTH_NV = 36659
 
gl_FOG_COORD_ARRAY_LENGTH_NV :: GLenum
gl_FOG_COORD_ARRAY_LENGTH_NV = 36658
 
gl_SECONDARY_COLOR_ARRAY_LENGTH_NV :: GLenum
gl_SECONDARY_COLOR_ARRAY_LENGTH_NV = 36657
 
gl_EDGE_FLAG_ARRAY_LENGTH_NV :: GLenum
gl_EDGE_FLAG_ARRAY_LENGTH_NV = 36656
 
gl_TEXTURE_COORD_ARRAY_LENGTH_NV :: GLenum
gl_TEXTURE_COORD_ARRAY_LENGTH_NV = 36655
 
gl_INDEX_ARRAY_LENGTH_NV :: GLenum
gl_INDEX_ARRAY_LENGTH_NV = 36654
 
gl_COLOR_ARRAY_LENGTH_NV :: GLenum
gl_COLOR_ARRAY_LENGTH_NV = 36653
 
gl_NORMAL_ARRAY_LENGTH_NV :: GLenum
gl_NORMAL_ARRAY_LENGTH_NV = 36652
 
gl_VERTEX_ARRAY_LENGTH_NV :: GLenum
gl_VERTEX_ARRAY_LENGTH_NV = 36651
 
gl_VERTEX_ATTRIB_ARRAY_LENGTH_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_LENGTH_NV = 36650
 
gl_ELEMENT_ARRAY_ADDRESS_NV :: GLenum
gl_ELEMENT_ARRAY_ADDRESS_NV = 36649
 
gl_FOG_COORD_ARRAY_ADDRESS_NV :: GLenum
gl_FOG_COORD_ARRAY_ADDRESS_NV = 36648
 
gl_SECONDARY_COLOR_ARRAY_ADDRESS_NV :: GLenum
gl_SECONDARY_COLOR_ARRAY_ADDRESS_NV = 36647
 
gl_EDGE_FLAG_ARRAY_ADDRESS_NV :: GLenum
gl_EDGE_FLAG_ARRAY_ADDRESS_NV = 36646
 
gl_TEXTURE_COORD_ARRAY_ADDRESS_NV :: GLenum
gl_TEXTURE_COORD_ARRAY_ADDRESS_NV = 36645
 
gl_INDEX_ARRAY_ADDRESS_NV :: GLenum
gl_INDEX_ARRAY_ADDRESS_NV = 36644
 
gl_COLOR_ARRAY_ADDRESS_NV :: GLenum
gl_COLOR_ARRAY_ADDRESS_NV = 36643
 
gl_NORMAL_ARRAY_ADDRESS_NV :: GLenum
gl_NORMAL_ARRAY_ADDRESS_NV = 36642
 
gl_VERTEX_ARRAY_ADDRESS_NV :: GLenum
gl_VERTEX_ARRAY_ADDRESS_NV = 36641
 
gl_VERTEX_ATTRIB_ARRAY_ADDRESS_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_ADDRESS_NV = 36640
 
gl_ELEMENT_ARRAY_UNIFIED_NV :: GLenum
gl_ELEMENT_ARRAY_UNIFIED_NV = 36639
 
gl_VERTEX_ATTRIB_ARRAY_UNIFIED_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_UNIFIED_NV = 36638