{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.IndexMaterial
       (glIndexMaterialEXT, gl_INDEX_MATERIAL_PARAMETER_EXT,
        gl_INDEX_MATERIAL_FACE_EXT, gl_INDEX_MATERIAL_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIndexMaterialEXT #-}
 
ptr_glIndexMaterialEXT :: FunPtr a
ptr_glIndexMaterialEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_index_material"
        "glIndexMaterialEXT"
 
glIndexMaterialEXT :: GLenum -> GLenum -> IO ()
glIndexMaterialEXT = dyn_glIndexMaterialEXT ptr_glIndexMaterialEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexMaterialEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_INDEX_MATERIAL_PARAMETER_EXT :: GLenum
gl_INDEX_MATERIAL_PARAMETER_EXT = 33209
 
gl_INDEX_MATERIAL_FACE_EXT :: GLenum
gl_INDEX_MATERIAL_FACE_EXT = 33210
 
gl_INDEX_MATERIAL_EXT :: GLenum
gl_INDEX_MATERIAL_EXT = 33208