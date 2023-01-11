project "OPENAL"
	kind "StaticLib"
	language "C++"
	cppdialect "C++14"
	staticruntime "On"
	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs {

		"%{prj.location}",
		"include",
		"include/AL",
		"common"
	}

	files {

		"config.h",
		"version.h",
		"hrtf_default.h",

		"common/alcomplex.cpp",
		"common/alfstream.cpp",
		"common/almalloc.cpp",
		"common/alstring.cpp",
		"common/dynload.cpp",
		"common/polyphase_resampler.cpp",
		"common/ringbuffer.cpp",
		"common/strutils.cpp",
		"common/threads.cpp",
		"alc/alc.cpp",
		"alc/alconfig.cpp",
		"alc/alu.cpp",
		"core/ambdec.cpp",
		"core/ambidefs.cpp",
		"al/effects/autowah.cpp",
		"alc/effects/autowah.cpp",
		"al/auxeffectslot.cpp",
		"alc/backends/base.cpp",
		"core/bformatdec.cpp",
		"core/filters/biquad.cpp",
		"core/bs2b.cpp",
		"core/bsinc_tables.cpp",
		"al/buffer.cpp",
		"core/buffer_storage.cpp",
		"alc/effects/chorus.cpp",
		"al/effects/chorus.cpp",
		"al/effects/compressor.cpp",
		"alc/effects/compressor.cpp",
		"core/context.cpp",
		"alc/context.cpp",
		"core/converter.cpp",
		"alc/effects/convolution.cpp",
		"al/effects/convolution.cpp",
		"core/cpu_caps.cpp",
		"alc/effects/dedicated.cpp",
		"al/effects/dedicated.cpp",
		"core/devformat.cpp",
		"core/device.cpp",
		"alc/device.cpp",
		"alc/effects/distortion.cpp",
		"al/effects/distortion.cpp",
		"alc/effects/echo.cpp",
		"al/effects/echo.cpp",
		"al/effect.cpp",
		"al/effects/effects.cpp",
		"core/effectslot.cpp",
		"alc/effects/equalizer.cpp",
		"al/effects/equalizer.cpp",
		"al/error.cpp",
		"al/event.cpp",
		"core/except.cpp",
		"al/extension.cpp",
		"al/filter.cpp",
		"core/fmt_traits.cpp",
		"core/fpu_ctrl.cpp",
		"al/effects/fshifter.cpp",
		"alc/effects/fshifter.cpp",
		"core/helpers.cpp",
		"core/hrtf.cpp",
		"al/listener.cpp",
		"core/logging.cpp",
		"alc/backends/loopback.cpp",
		"core/mastering.cpp",
		"core/mixer.cpp",
		"core/mixer/mixer_c.cpp",
		"core/mixer/mixer_sse.cpp",
		"core/mixer/mixer_sse2.cpp",
		"core/mixer/mixer_sse3.cpp",
		"core/mixer/mixer_sse41.cpp",
		"al/effects/modulator.cpp",
		"alc/effects/modulator.cpp",
		"core/filters/nfc.cpp",
		"al/effects/null.cpp",
		"alc/effects/null.cpp",
		"alc/backends/null.cpp",
		"alc/panning.cpp",
		"alc/effects/pshifter.cpp",
		"al/effects/pshifter.cpp",
		"alc/effects/reverb.cpp",
		"al/effects/reverb.cpp",
		"al/source.cpp",
		"core/filters/splitter.cpp",
		"al/state.cpp",
		"core/uhjfilter.cpp",
		"core/uiddefs.cpp",
		"alc/effects/vmorpher.cpp",
		"al/effects/vmorpher.cpp",
		"core/voice.cpp",
		"alc/backends/wave.cpp"
	}

	disablewarnings {

		"4065",
		"4127",
		"4268",
		"4324",
		"5030",
		"5051"
	}

	filter "system:windows"

		systemversion "latest"
		conformancemode "On"

		defines {

			"VULTURE_PLATFORM_WINDOWS",
			"AL_LIBTYPE_STATIC",
			"WIN32",
			"_WINDOWS",
			"AL_BUILD_LIBRARY",
			"AL_ALEXT_PROTOTYPES",
			"ALC_API=",
			"AL_API=",
			"_WIN32",
			"NOMINMAX",
			"RESTRICT=__restrict",
			"_CRT_SECURE_NO_WARNINGS",
			"OpenAL_EXPORTS"
		}

		files {

			"al/eax/api.cpp",
			"al/eax/call.cpp",
			"al/eax/exception.cpp",
			"al/eax/fx_slot_index.cpp",
			"al/eax/fx_slots.cpp",
			"al/eax/globals.cpp",
			"al/eax/utils.cpp",
			"alc/backends/dsound.cpp",
			"alc/backends/wasapi.cpp",
			"alc/backends/winmm.cpp"
		}

	filter "system:linux"

		systemversion "latest"
		pic "On"

		defines {

			"VULTURE_PLATFORM_LINUX",
			"AL_BUILD_LIBRARY",
			"AL_ALEXT_PROTOTYPES",
			"ALC_API=",
			"AL_API=",
			"RESTRICT=__restrict",
			"OpenAL_EXPORTS",
			"AL_LIBTYPE_STATIC"
		}

		externalincludedirs {

			"%{prj.location}",
			"include",
			"include/AL",
			"common"
		}

		files {

			"alc/backends/oss.cpp"
		}

	filter "system:macosx"

		systemversion "max"
		pic "On"

		defines {

			"VULTURE_PLATFORM_MACOSX",
			"AL_BUILD_LIBRARY",
			"AL_ALEXT_PROTOTYPES",
			"ALC_API=",
			"AL_API=",
			"RESTRICT=__restrict",
			"OpenAL_EXPORTS",
			"AL_LIBTYPE_STATIC"
		}

		externalincludedirs {

			"%{prj.location}",
			"include",
			"include/AL",
			"common"
		}

		files {

			"alc/backends/coreaudio.cpp"
		}

	filter "configurations:Debug"
		defines "VULTURE_DEBUG"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines "VULTURE_RELEASE"
		runtime "Debug"
		symbols "On"
		optimize "On"

	filter "configurations:Dist"
		defines "VULTURE_DIST"
		runtime "Release"
		optimize "On"
