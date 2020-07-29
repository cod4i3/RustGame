# Install script for directory: /Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/libSDL2.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/libSDL2main.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/SDL2Config.cmake"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_assert.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_atomic.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_audio.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_bits.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_blendmode.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_clipboard.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_android.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_iphoneos.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_macosx.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_minimal.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_os2.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_pandora.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_psp.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_windows.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_winrt.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_config_wiz.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_copying.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_cpuinfo.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_egl.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_endian.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_error.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_events.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_filesystem.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_gamecontroller.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_gesture.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_haptic.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_hints.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_joystick.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_keyboard.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_keycode.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_loadso.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_log.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_main.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_messagebox.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_mouse.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_mutex.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_name.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengl.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengl_glext.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengles.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengles2.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengles2_gl2.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengles2_gl2ext.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengles2_gl2platform.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_opengles2_khrplatform.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_pixels.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_platform.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_power.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_quit.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_rect.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_render.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_revision.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_rwops.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_scancode.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_sensor.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_shape.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_stdinc.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_surface.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_system.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_syswm.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_assert.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_common.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_compare.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_crc32.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_font.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_fuzzer.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_harness.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_images.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_log.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_md5.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_memory.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_test_random.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_thread.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_timer.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_touch.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_types.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_version.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_video.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/SDL_vulkan.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/begin_code.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/include/close_code.h"
    "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/include/SDL_config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/sdl2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/sdl2-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/share/aclocal/sdl2.m4")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/share/aclocal" TYPE FILE FILES "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/SDL2-2.0.10/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/code413/program/Rust/OpenGL/game/target/rls/debug/build/sdl2-sys-103ecf28c43f4696/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
