
#define FORCE_ALIGN

//WINDOWS
#if defined(VE_PLATFORM_WINDOWS)

/* Define if deprecated EAX extensions are enabled */
#define ALSOFT_EAX

/* Define if HRTF data is embedded in the library */
#define ALSOFT_EMBED_HRTF_DATA

/* Define if we have the _aligned_malloc function */
#define HAVE__ALIGNED_MALLOC

/* Define if we have SSE CPU extensions */
#define HAVE_SSE
#define HAVE_SSE2
#define HAVE_SSE3
#define HAVE_SSE4_1

/* Define if we have the WASAPI backend */
#define HAVE_WASAPI

/* Define if we have the DSound backend */
#define HAVE_DSOUND

/* Define if we have the Windows Multimedia backend */
#define HAVE_WINMM

/* Define if we have the Wave Writer backend */
#define HAVE_WAVE

/* Define if we have malloc.h */
#define HAVE_MALLOC_H

/* Define if we have intrin.h */
#define HAVE_INTRIN_H

/* Define if we have guiddef.h */
#define HAVE_GUIDDEF_H

/* Define if we have the __cpuid() intrinsic */
#define HAVE_CPUID_INTRINSIC

/* Define if we have SSE intrinsics */
#define HAVE_SSE_INTRINSICS

//LINUX
#elif defined (VE_PLATFORM_LINUX)

/* Define if HRTF data is embedded in the library */
#define ALSOFT_EMBED_HRTF_DATA

/* Define if we have the posix_memalign function */
#define HAVE_POSIX_MEMALIGN

/* Define if we have the getopt function */
#define HAVE_GETOPT

/* Define if we have SSE CPU extensions */
#define HAVE_SSE
#define HAVE_SSE2
#define HAVE_SSE3
#define HAVE_SSE4_1

/* Define if we have the OSS backend */
#define HAVE_OSS

/* Define if we have the Wave Writer backend */
#define HAVE_WAVE

/* Define if we have dlfcn.h */
#define HAVE_DLFCN_H

/* Define if we have malloc.h */
#define HAVE_MALLOC_H

/* Define if we have cpuid.h */
#define HAVE_CPUID_H

/* Define if we have GCC's __get_cpuid() */
#define HAVE_GCC_GET_CPUID

/* Define if we have SSE intrinsics */
#define HAVE_SSE_INTRINSICS

/* Define if we have pthread_setschedparam() */
#define HAVE_PTHREAD_SETSCHEDPARAM

//MACOS
#elif defined(VE_PLATFORM_MACOSX)

/* Define if HRTF data is embedded in the library */
#define ALSOFT_EMBED_HRTF_DATA

/* Define if we have the posix_memalign function */
#define HAVE_POSIX_MEMALIGN

/* Define if we have the proc_pidpath function */
#define HAVE_PROC_PIDPATH

/* Define if we have the getopt function */
#define HAVE_GETOPT

/* Define if we have SSE CPU extensions */
#define HAVE_SSE
#define HAVE_SSE2
#define HAVE_SSE3
#define HAVE_SSE4_1

/* Define if we have the CoreAudio backend */
#define HAVE_COREAUDIO

/* Define if we have the Wave Writer backend */
#define HAVE_WAVE

/* Define if we have dlfcn.h */
#define HAVE_DLFCN_H

/* Define if we have cpuid.h */
#define HAVE_CPUID_H

/* Define if we have GCC's __get_cpuid() */
#define HAVE_GCC_GET_CPUID

/* Define if we have SSE intrinsics */
#define HAVE_SSE_INTRINSICS

/* Define if we have pthread_setschedparam() */
#define HAVE_PTHREAD_SETSCHEDPARAM

/* Define if we have pthread_setname_np() */
#define HAVE_PTHREAD_SETNAME_NP

#else

#error Vulture library supports OpenAL only on Windows, Linux and macOS

#endif
