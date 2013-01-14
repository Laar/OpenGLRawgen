{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.IndexMaterial
       (glIndexMaterial, gl_INDEX_MATERIAL_PARAMETER,
        gl_INDEX_MATERIAL_FACE, gl_INDEX_MATERIAL)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIndexMaterial #-}
 
ptr_glIndexMaterial :: FunPtr a
ptr_glIndexMaterial
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_index_material"
        "glIndexMaterialEXT"
 
glIndexMaterial :: GLenum -> GLenum -> IO ()
glIndexMaterial = dyn_glIndexMaterial ptr_glIndexMaterial
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexMaterial ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_INDEX_MATERIAL_PARAMETER :: GLenum
gl_INDEX_MATERIAL_PARAMETER = 33209
 
gl_INDEX_MATERIAL_FACE :: GLenum
gl_INDEX_MATERIAL_FACE = 33210
 
gl_INDEX_MATERIAL :: GLenum
gl_INDEX_MATERIAL = 33208