{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.PerformanceMonitor
       (glSelectPerfMonitorCountersAMD, glGetPerfMonitorGroupsAMD,
        glGetPerfMonitorGroupStringAMD, glGetPerfMonitorCountersAMD,
        glGetPerfMonitorCounterStringAMD, glGetPerfMonitorCounterInfoAMD,
        glGetPerfMonitorCounterDataAMD, glGenPerfMonitorsAMD,
        glEndPerfMonitorAMD, glDeletePerfMonitorsAMD,
        glBeginPerfMonitorAMD, gl_UNSIGNED_INT64_AMD,
        gl_PERFMON_RESULT_SIZE_AMD, gl_PERFMON_RESULT_AVAILABLE_AMD,
        gl_PERFMON_RESULT_AMD, gl_PERCENTAGE_AMD, gl_COUNTER_TYPE_AMD,
        gl_COUNTER_RANGE_AMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSelectPerfMonitorCountersAMD #-}
 
ptr_glSelectPerfMonitorCountersAMD :: FunPtr a
ptr_glSelectPerfMonitorCountersAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glSelectPerfMonitorCountersAMD"
 
glSelectPerfMonitorCountersAMD ::
                               GLuint -> GLboolean -> GLuint -> GLint -> Ptr GLuint -> IO ()
glSelectPerfMonitorCountersAMD
  = dyn_glSelectPerfMonitorCountersAMD
      ptr_glSelectPerfMonitorCountersAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glSelectPerfMonitorCountersAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLboolean -> GLuint -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorGroupsAMD #-}
 
ptr_glGetPerfMonitorGroupsAMD :: FunPtr a
ptr_glGetPerfMonitorGroupsAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorGroupsAMD"
 
glGetPerfMonitorGroupsAMD ::
                          Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()
glGetPerfMonitorGroupsAMD
  = dyn_glGetPerfMonitorGroupsAMD ptr_glGetPerfMonitorGroupsAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorGroupsAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorGroupStringAMD #-}
 
ptr_glGetPerfMonitorGroupStringAMD :: FunPtr a
ptr_glGetPerfMonitorGroupStringAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorGroupStringAMD"
 
glGetPerfMonitorGroupStringAMD ::
                               GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetPerfMonitorGroupStringAMD
  = dyn_glGetPerfMonitorGroupStringAMD
      ptr_glGetPerfMonitorGroupStringAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorGroupStringAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCountersAMD #-}
 
ptr_glGetPerfMonitorCountersAMD :: FunPtr a
ptr_glGetPerfMonitorCountersAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCountersAMD"
 
glGetPerfMonitorCountersAMD ::
                            GLuint -> Ptr GLint -> Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()
glGetPerfMonitorCountersAMD
  = dyn_glGetPerfMonitorCountersAMD ptr_glGetPerfMonitorCountersAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCountersAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    Ptr GLint -> Ptr GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCounterStringAMD #-}
 
ptr_glGetPerfMonitorCounterStringAMD :: FunPtr a
ptr_glGetPerfMonitorCounterStringAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCounterStringAMD"
 
glGetPerfMonitorCounterStringAMD ::
                                 GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetPerfMonitorCounterStringAMD
  = dyn_glGetPerfMonitorCounterStringAMD
      ptr_glGetPerfMonitorCounterStringAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCounterStringAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCounterInfoAMD #-}
 
ptr_glGetPerfMonitorCounterInfoAMD :: FunPtr a
ptr_glGetPerfMonitorCounterInfoAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCounterInfoAMD"
 
glGetPerfMonitorCounterInfoAMD ::
                               GLuint -> GLuint -> GLenum -> Ptr a -> IO ()
glGetPerfMonitorCounterInfoAMD
  = dyn_glGetPerfMonitorCounterInfoAMD
      ptr_glGetPerfMonitorCounterInfoAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCounterInfoAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCounterDataAMD #-}
 
ptr_glGetPerfMonitorCounterDataAMD :: FunPtr a
ptr_glGetPerfMonitorCounterDataAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCounterDataAMD"
 
glGetPerfMonitorCounterDataAMD ::
                               GLuint -> GLenum -> GLsizei -> Ptr GLuint -> Ptr GLint -> IO ()
glGetPerfMonitorCounterDataAMD
  = dyn_glGetPerfMonitorCounterDataAMD
      ptr_glGetPerfMonitorCounterDataAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCounterDataAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> Ptr GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenPerfMonitorsAMD #-}
 
ptr_glGenPerfMonitorsAMD :: FunPtr a
ptr_glGenPerfMonitorsAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGenPerfMonitorsAMD"
 
glGenPerfMonitorsAMD :: GLsizei -> Ptr GLuint -> IO ()
glGenPerfMonitorsAMD
  = dyn_glGenPerfMonitorsAMD ptr_glGenPerfMonitorsAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenPerfMonitorsAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEndPerfMonitorAMD #-}
 
ptr_glEndPerfMonitorAMD :: FunPtr a
ptr_glEndPerfMonitorAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glEndPerfMonitorAMD"
 
glEndPerfMonitorAMD :: GLuint -> IO ()
glEndPerfMonitorAMD
  = dyn_glEndPerfMonitorAMD ptr_glEndPerfMonitorAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndPerfMonitorAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeletePerfMonitorsAMD #-}
 
ptr_glDeletePerfMonitorsAMD :: FunPtr a
ptr_glDeletePerfMonitorsAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glDeletePerfMonitorsAMD"
 
glDeletePerfMonitorsAMD :: GLsizei -> Ptr GLuint -> IO ()
glDeletePerfMonitorsAMD
  = dyn_glDeletePerfMonitorsAMD ptr_glDeletePerfMonitorsAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeletePerfMonitorsAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginPerfMonitorAMD #-}
 
ptr_glBeginPerfMonitorAMD :: FunPtr a
ptr_glBeginPerfMonitorAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glBeginPerfMonitorAMD"
 
glBeginPerfMonitorAMD :: GLuint -> IO ()
glBeginPerfMonitorAMD
  = dyn_glBeginPerfMonitorAMD ptr_glBeginPerfMonitorAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginPerfMonitorAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_UNSIGNED_INT64_AMD :: GLenum
gl_UNSIGNED_INT64_AMD = 35778
 
gl_PERFMON_RESULT_SIZE_AMD :: GLenum
gl_PERFMON_RESULT_SIZE_AMD = 35781
 
gl_PERFMON_RESULT_AVAILABLE_AMD :: GLenum
gl_PERFMON_RESULT_AVAILABLE_AMD = 35780
 
gl_PERFMON_RESULT_AMD :: GLenum
gl_PERFMON_RESULT_AMD = 35782
 
gl_PERCENTAGE_AMD :: GLenum
gl_PERCENTAGE_AMD = 35779
 
gl_COUNTER_TYPE_AMD :: GLenum
gl_COUNTER_TYPE_AMD = 35776
 
gl_COUNTER_RANGE_AMD :: GLenum
gl_COUNTER_RANGE_AMD = 35777