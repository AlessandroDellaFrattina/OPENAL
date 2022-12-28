project "OPENAL"
	kind "StaticLib"
	language "C++"
	staticruntime "On"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs {

		"include",
    		"common",
    		"core",
    		"router",
    		"utils"
	}

  	files {

    		"**.c",
    		"**.cpp"
  	}

	filter "system:windows"
		systemversion "latest"

		defines {

			"_CRT_SECURE_NO_WARNINGS"
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
