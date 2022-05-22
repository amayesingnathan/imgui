project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "on"

    targetdir 	("%{wks.location}/bin/%{prj.name}/" .. outputDir)
    objdir 		("%{wks.location}/obj/%{prj.name}/" .. outputDir)

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

    filter "system:windows"
        systemversion "latest"
		
	filter "system:linux"
		pic "On"
		systemversion "latest"
        
    filter "configurations:x64d"
		runtime "Debug"
		symbols "on"

	filter "configurations:ARMd"
		runtime "Debug"
		symbols "on"

	filter "configurations:ARM64d"
		runtime "Debug"
		symbols "on"

	filter "configurations:x64"
		runtime "Release"
		optimize "on"

	filter "configurations:ARM"
		runtime "Release"
		optimize "on"

	filter "configurations:ARM64"
		runtime "Release"
		optimize "on"
