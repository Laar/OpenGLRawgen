{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.PerformanceMonitor
       (glSelectPerfMonitorCounters, glGetPerfMonitorGroups,
        glGetPerfMonitorGroupString, glGetPerfMonitorCounters,
        glGetPerfMonitorCounterString, glGetPerfMonitorCounterInfo,
        glGetPerfMonitorCounterData, glGenPerfMonitors, glEndPerfMonitor,
        glDeletePerfMonitors, glBeginPerfMonitor, gl_UNSIGNED_INT64,
        gl_PERFMON_RESULT_SIZE, gl_PERFMON_RESULT_AVAILABLE,
        gl_PERFMON_RESULT, gl_PERCENTAGE, gl_COUNTER_TYPE,
        gl_COUNTER_RANGE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSelectPerfMonitorCounters #-}
 
ptr_glSelectPerfMonitorCounters :: FunPtr a
ptr_glSelectPerfMonitorCounters
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glSelectPerfMonitorCountersAMD"
 
glSelectPerfMonitorCounters ::
                            GLuint -> GLboolean -> GLuint -> GLint -> Ptr GLuint -> IO ()
glSelectPerfMonitorCounters
  = dyn_glSelectPerfMonitorCounters ptr_glSelectPerfMonitorCounters
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glSelectPerfMonitorCounters ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLboolean -> GLuint -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorGroups #-}
 
ptr_glGetPerfMonitorGroups :: FunPtr a
ptr_glGetPerfMonitorGroups
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorGroupsAMD"
 
glGetPerfMonitorGroups ::
                       Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()
glGetPerfMonitorGroups
  = dyn_glGetPerfMonitorGroups ptr_glGetPerfMonitorGroups
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPerfMonitorGroups
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorGroupString #-}
 
ptr_glGetPerfMonitorGroupString :: FunPtr a
ptr_glGetPerfMonitorGroupString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorGroupStringAMD"
 
glGetPerfMonitorGroupString ::
                            GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetPerfMonitorGroupString
  = dyn_glGetPerfMonitorGroupString ptr_glGetPerfMonitorGroupString
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorGroupString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCounters #-}
 
ptr_glGetPerfMonitorCounters :: FunPtr a
ptr_glGetPerfMonitorCounters
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCountersAMD"
 
glGetPerfMonitorCounters ::
                         GLuint -> Ptr GLint -> Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()
glGetPerfMonitorCounters
  = dyn_glGetPerfMonitorCounters ptr_glGetPerfMonitorCounters
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCounters ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    Ptr GLint -> Ptr GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCounterString #-}
 
ptr_glGetPerfMonitorCounterString :: FunPtr a
ptr_glGetPerfMonitorCounterString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCounterStringAMD"
 
glGetPerfMonitorCounterString ::
                              GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetPerfMonitorCounterString
  = dyn_glGetPerfMonitorCounterString
      ptr_glGetPerfMonitorCounterString
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCounterString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCounterInfo #-}
 
ptr_glGetPerfMonitorCounterInfo :: FunPtr a
ptr_glGetPerfMonitorCounterInfo
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCounterInfoAMD"
 
glGetPerfMonitorCounterInfo ::
                            GLuint -> GLuint -> GLenum -> Ptr a -> IO ()
glGetPerfMonitorCounterInfo
  = dyn_glGetPerfMonitorCounterInfo ptr_glGetPerfMonitorCounterInfo
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCounterInfo ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetPerfMonitorCounterData #-}
 
ptr_glGetPerfMonitorCounterData :: FunPtr a
ptr_glGetPerfMonitorCounterData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGetPerfMonitorCounterDataAMD"
 
glGetPerfMonitorCounterData ::
                            GLuint -> GLenum -> GLsizei -> Ptr GLuint -> Ptr GLint -> IO ()
glGetPerfMonitorCounterData
  = dyn_glGetPerfMonitorCounterData ptr_glGetPerfMonitorCounterData
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPerfMonitorCounterData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> Ptr GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenPerfMonitors #-}
 
ptr_glGenPerfMonitors :: FunPtr a
ptr_glGenPerfMonitors
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glGenPerfMonitorsAMD"
 
glGenPerfMonitors :: GLsizei -> Ptr GLuint -> IO ()
glGenPerfMonitors = dyn_glGenPerfMonitors ptr_glGenPerfMonitors
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenPerfMonitors ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEndPerfMonitor #-}
 
ptr_glEndPerfMonitor :: FunPtr a
ptr_glEndPerfMonitor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glEndPerfMonitorAMD"
 
glEndPerfMonitor :: GLuint -> IO ()
glEndPerfMonitor = dyn_glEndPerfMonitor ptr_glEndPerfMonitor
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndPerfMonitor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeletePerfMonitors #-}
 
ptr_glDeletePerfMonitors :: FunPtr a
ptr_glDeletePerfMonitors
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glDeletePerfMonitorsAMD"
 
glDeletePerfMonitors :: GLsizei -> Ptr GLuint -> IO ()
glDeletePerfMonitors
  = dyn_glDeletePerfMonitors ptr_glDeletePerfMonitors
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeletePerfMonitors ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginPerfMonitor #-}
 
ptr_glBeginPerfMonitor :: FunPtr a
ptr_glBeginPerfMonitor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_performance_monitor"
        "glBeginPerfMonitorAMD"
 
glBeginPerfMonitor :: GLuint -> IO ()
glBeginPerfMonitor = dyn_glBeginPerfMonitor ptr_glBeginPerfMonitor
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginPerfMonitor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_UNSIGNED_INT64 :: GLenum
gl_UNSIGNED_INT64 = 35778
 
gl_PERFMON_RESULT_SIZE :: GLenum
gl_PERFMON_RESULT_SIZE = 35781
 
gl_PERFMON_RESULT_AVAILABLE :: GLenum
gl_PERFMON_RESULT_AVAILABLE = 35780
 
gl_PERFMON_RESULT :: GLenum
gl_PERFMON_RESULT = 35782
 
gl_PERCENTAGE :: GLenum
gl_PERCENTAGE = 35779
 
gl_COUNTER_TYPE :: GLenum
gl_COUNTER_TYPE = 35776
 
gl_COUNTER_RANGE :: GLenum
gl_COUNTER_RANGE = 35777