project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
    staticruntime "off"

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
	
    filter { "files:**.h" }
        compileas "HeaderUnit"

    filter "system:windows"
        systemversion "latest"
		
	filter "system:linux"
		pic "On"
		systemversion "latest"
        
    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
