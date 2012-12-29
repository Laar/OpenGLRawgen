{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureShader
       (gl_TEXTURE_MAG_SIZE_NV, gl_TEXTURE_DT_SIZE_NV,
        gl_TEXTURE_DS_SIZE_NV, gl_TEXTURE_LO_SIZE_NV,
        gl_TEXTURE_HI_SIZE_NV, gl_TEXTURE_BORDER_VALUES_NV,
        gl_VIBRANCE_BIAS_NV, gl_MAGNITUDE_BIAS_NV, gl_DT_BIAS_NV,
        gl_DS_BIAS_NV, gl_LO_BIAS_NV, gl_HI_BIAS_NV, gl_VIBRANCE_SCALE_NV,
        gl_MAGNITUDE_SCALE_NV, gl_DT_SCALE_NV, gl_DS_SCALE_NV,
        gl_LO_SCALE_NV, gl_HI_SCALE_NV, gl_SIGNED_RGB8_UNSIGNED_ALPHA8_NV,
        gl_SIGNED_RGB_UNSIGNED_ALPHA_NV, gl_DSDT8_MAG8_INTENSITY8_NV,
        gl_DSDT8_MAG8_NV, gl_DSDT8_NV, gl_SIGNED_INTENSITY8_NV,
        gl_SIGNED_INTENSITY_NV, gl_SIGNED_ALPHA8_NV, gl_SIGNED_ALPHA_NV,
        gl_SIGNED_LUMINANCE8_ALPHA8_NV, gl_SIGNED_LUMINANCE_ALPHA_NV,
        gl_SIGNED_LUMINANCE8_NV, gl_SIGNED_LUMINANCE_NV, gl_SIGNED_RGB8_NV,
        gl_SIGNED_RGB_NV, gl_SIGNED_RGBA8_NV, gl_SIGNED_RGBA_NV,
        gl_SIGNED_HILO16_NV, gl_SIGNED_HILO_NV, gl_HILO16_NV,
        gl_DSDT_MAG_VIB_NV, gl_DSDT_MAG_NV, gl_DSDT_NV, gl_HILO_NV,
        gl_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV,
        gl_DOT_PRODUCT_REFLECT_CUBE_MAP_NV,
        gl_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV,
        gl_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV, gl_DOT_PRODUCT_TEXTURE_2D_NV,
        gl_DOT_PRODUCT_DEPTH_REPLACE_NV, gl_DOT_PRODUCT_NV,
        gl_DEPENDENT_GB_TEXTURE_2D_NV, gl_DEPENDENT_AR_TEXTURE_2D_NV,
        gl_OFFSET_TEXTURE_2D_NV, gl_CULL_FRAGMENT_NV, gl_PASS_THROUGH_NV,
        gl_CONST_EYE_NV, gl_PREVIOUS_TEXTURE_INPUT_NV,
        gl_OFFSET_TEXTURE_2D_BIAS_NV, gl_OFFSET_TEXTURE_2D_SCALE_NV,
        gl_OFFSET_TEXTURE_2D_MATRIX_NV, gl_OFFSET_TEXTURE_BIAS_NV,
        gl_OFFSET_TEXTURE_SCALE_NV, gl_OFFSET_TEXTURE_MATRIX_NV,
        gl_CULL_MODES_NV, gl_SHADER_OPERATION_NV, gl_TEXTURE_SHADER_NV,
        gl_SHADER_CONSISTENT_NV, gl_DSDT_MAG_INTENSITY_NV,
        gl_UNSIGNED_INT_8_8_S8_S8_REV_NV, gl_UNSIGNED_INT_S8_S8_8_8_NV,
        gl_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV,
        gl_DOT_PRODUCT_TEXTURE_RECTANGLE_NV,
        gl_OFFSET_TEXTURE_RECTANGLE_SCALE_NV,
        gl_OFFSET_TEXTURE_RECTANGLE_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_MAG_SIZE_NV :: GLenum
gl_TEXTURE_MAG_SIZE_NV = 34591
 
gl_TEXTURE_DT_SIZE_NV :: GLenum
gl_TEXTURE_DT_SIZE_NV = 34590
 
gl_TEXTURE_DS_SIZE_NV :: GLenum
gl_TEXTURE_DS_SIZE_NV = 34589
 
gl_TEXTURE_LO_SIZE_NV :: GLenum
gl_TEXTURE_LO_SIZE_NV = 34588
 
gl_TEXTURE_HI_SIZE_NV :: GLenum
gl_TEXTURE_HI_SIZE_NV = 34587
 
gl_TEXTURE_BORDER_VALUES_NV :: GLenum
gl_TEXTURE_BORDER_VALUES_NV = 34586
 
gl_VIBRANCE_BIAS_NV :: GLenum
gl_VIBRANCE_BIAS_NV = 34585
 
gl_MAGNITUDE_BIAS_NV :: GLenum
gl_MAGNITUDE_BIAS_NV = 34584
 
gl_DT_BIAS_NV :: GLenum
gl_DT_BIAS_NV = 34583
 
gl_DS_BIAS_NV :: GLenum
gl_DS_BIAS_NV = 34582
 
gl_LO_BIAS_NV :: GLenum
gl_LO_BIAS_NV = 34581
 
gl_HI_BIAS_NV :: GLenum
gl_HI_BIAS_NV = 34580
 
gl_VIBRANCE_SCALE_NV :: GLenum
gl_VIBRANCE_SCALE_NV = 34579
 
gl_MAGNITUDE_SCALE_NV :: GLenum
gl_MAGNITUDE_SCALE_NV = 34578
 
gl_DT_SCALE_NV :: GLenum
gl_DT_SCALE_NV = 34577
 
gl_DS_SCALE_NV :: GLenum
gl_DS_SCALE_NV = 34576
 
gl_LO_SCALE_NV :: GLenum
gl_LO_SCALE_NV = 34575
 
gl_HI_SCALE_NV :: GLenum
gl_HI_SCALE_NV = 34574
 
gl_SIGNED_RGB8_UNSIGNED_ALPHA8_NV :: GLenum
gl_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = 34573
 
gl_SIGNED_RGB_UNSIGNED_ALPHA_NV :: GLenum
gl_SIGNED_RGB_UNSIGNED_ALPHA_NV = 34572
 
gl_DSDT8_MAG8_INTENSITY8_NV :: GLenum
gl_DSDT8_MAG8_INTENSITY8_NV = 34571
 
gl_DSDT8_MAG8_NV :: GLenum
gl_DSDT8_MAG8_NV = 34570
 
gl_DSDT8_NV :: GLenum
gl_DSDT8_NV = 34569
 
gl_SIGNED_INTENSITY8_NV :: GLenum
gl_SIGNED_INTENSITY8_NV = 34568
 
gl_SIGNED_INTENSITY_NV :: GLenum
gl_SIGNED_INTENSITY_NV = 34567
 
gl_SIGNED_ALPHA8_NV :: GLenum
gl_SIGNED_ALPHA8_NV = 34566
 
gl_SIGNED_ALPHA_NV :: GLenum
gl_SIGNED_ALPHA_NV = 34565
 
gl_SIGNED_LUMINANCE8_ALPHA8_NV :: GLenum
gl_SIGNED_LUMINANCE8_ALPHA8_NV = 34564
 
gl_SIGNED_LUMINANCE_ALPHA_NV :: GLenum
gl_SIGNED_LUMINANCE_ALPHA_NV = 34563
 
gl_SIGNED_LUMINANCE8_NV :: GLenum
gl_SIGNED_LUMINANCE8_NV = 34562
 
gl_SIGNED_LUMINANCE_NV :: GLenum
gl_SIGNED_LUMINANCE_NV = 34561
 
gl_SIGNED_RGB8_NV :: GLenum
gl_SIGNED_RGB8_NV = 34559
 
gl_SIGNED_RGB_NV :: GLenum
gl_SIGNED_RGB_NV = 34558
 
gl_SIGNED_RGBA8_NV :: GLenum
gl_SIGNED_RGBA8_NV = 34556
 
gl_SIGNED_RGBA_NV :: GLenum
gl_SIGNED_RGBA_NV = 34555
 
gl_SIGNED_HILO16_NV :: GLenum
gl_SIGNED_HILO16_NV = 34554
 
gl_SIGNED_HILO_NV :: GLenum
gl_SIGNED_HILO_NV = 34553
 
gl_HILO16_NV :: GLenum
gl_HILO16_NV = 34552
 
gl_DSDT_MAG_VIB_NV :: GLenum
gl_DSDT_MAG_VIB_NV = 34551
 
gl_DSDT_MAG_NV :: GLenum
gl_DSDT_MAG_NV = 34550
 
gl_DSDT_NV :: GLenum
gl_DSDT_NV = 34549
 
gl_HILO_NV :: GLenum
gl_HILO_NV = 34548
 
gl_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV :: GLenum
gl_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV = 34547
 
gl_DOT_PRODUCT_REFLECT_CUBE_MAP_NV :: GLenum
gl_DOT_PRODUCT_REFLECT_CUBE_MAP_NV = 34546
 
gl_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV :: GLenum
gl_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV = 34545
 
gl_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV :: GLenum
gl_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV = 34544
 
gl_DOT_PRODUCT_TEXTURE_2D_NV :: GLenum
gl_DOT_PRODUCT_TEXTURE_2D_NV = 34542
 
gl_DOT_PRODUCT_DEPTH_REPLACE_NV :: GLenum
gl_DOT_PRODUCT_DEPTH_REPLACE_NV = 34541
 
gl_DOT_PRODUCT_NV :: GLenum
gl_DOT_PRODUCT_NV = 34540
 
gl_DEPENDENT_GB_TEXTURE_2D_NV :: GLenum
gl_DEPENDENT_GB_TEXTURE_2D_NV = 34538
 
gl_DEPENDENT_AR_TEXTURE_2D_NV :: GLenum
gl_DEPENDENT_AR_TEXTURE_2D_NV = 34537
 
gl_OFFSET_TEXTURE_2D_NV :: GLenum
gl_OFFSET_TEXTURE_2D_NV = 34536
 
gl_CULL_FRAGMENT_NV :: GLenum
gl_CULL_FRAGMENT_NV = 34535
 
gl_PASS_THROUGH_NV :: GLenum
gl_PASS_THROUGH_NV = 34534
 
gl_CONST_EYE_NV :: GLenum
gl_CONST_EYE_NV = 34533
 
gl_PREVIOUS_TEXTURE_INPUT_NV :: GLenum
gl_PREVIOUS_TEXTURE_INPUT_NV = 34532
 
gl_OFFSET_TEXTURE_2D_BIAS_NV :: GLenum
gl_OFFSET_TEXTURE_2D_BIAS_NV = gl_OFFSET_TEXTURE_BIAS_NV
 
gl_OFFSET_TEXTURE_2D_SCALE_NV :: GLenum
gl_OFFSET_TEXTURE_2D_SCALE_NV = gl_OFFSET_TEXTURE_SCALE_NV
 
gl_OFFSET_TEXTURE_2D_MATRIX_NV :: GLenum
gl_OFFSET_TEXTURE_2D_MATRIX_NV = gl_OFFSET_TEXTURE_MATRIX_NV
 
gl_OFFSET_TEXTURE_BIAS_NV :: GLenum
gl_OFFSET_TEXTURE_BIAS_NV = 34531
 
gl_OFFSET_TEXTURE_SCALE_NV :: GLenum
gl_OFFSET_TEXTURE_SCALE_NV = 34530
 
gl_OFFSET_TEXTURE_MATRIX_NV :: GLenum
gl_OFFSET_TEXTURE_MATRIX_NV = 34529
 
gl_CULL_MODES_NV :: GLenum
gl_CULL_MODES_NV = 34528
 
gl_SHADER_OPERATION_NV :: GLenum
gl_SHADER_OPERATION_NV = 34527
 
gl_TEXTURE_SHADER_NV :: GLenum
gl_TEXTURE_SHADER_NV = 34526
 
gl_SHADER_CONSISTENT_NV :: GLenum
gl_SHADER_CONSISTENT_NV = 34525
 
gl_DSDT_MAG_INTENSITY_NV :: GLenum
gl_DSDT_MAG_INTENSITY_NV = 34524
 
gl_UNSIGNED_INT_8_8_S8_S8_REV_NV :: GLenum
gl_UNSIGNED_INT_8_8_S8_S8_REV_NV = 34523
 
gl_UNSIGNED_INT_S8_S8_8_8_NV :: GLenum
gl_UNSIGNED_INT_S8_S8_8_8_NV = 34522
 
gl_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV :: GLenum
gl_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV = 34521
 
gl_DOT_PRODUCT_TEXTURE_RECTANGLE_NV :: GLenum
gl_DOT_PRODUCT_TEXTURE_RECTANGLE_NV = 34382
 
gl_OFFSET_TEXTURE_RECTANGLE_SCALE_NV :: GLenum
gl_OFFSET_TEXTURE_RECTANGLE_SCALE_NV = 34381
 
gl_OFFSET_TEXTURE_RECTANGLE_NV :: GLenum
gl_OFFSET_TEXTURE_RECTANGLE_NV = 34380