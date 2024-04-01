project "yaml_cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "src/**.cpp",
        "src/**.h",
        "include/**.h",
    }
    
    includedirs 
    {
        "include"
    }

    defines 
    {
        "YAML_CPP_STATIC_DEFINE"
    }

	filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"

    filter "configurations:Debug"
		defines "TRI_DEBUG"
		symbols "on"
		runtime "Debug"

	filter "configurations:Release"
		defines "TRI_RELEASE"
		optimize "on"
		runtime "Release"
