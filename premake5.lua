-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "pugixml"
    language "C++"
    kind "StaticLib"
    warnings "Off"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "src/pugiconfig.hpp",
        "src/pugixml.hpp",
        "src/pugixml.cpp"
    }

    includedirs
    {
        "./src"
    }

    filter "system:windows"
        cppdialect "C++20"
        systemversion "latest"

    filter "system:linux"
        cppdialect "gnu++20"
        systemversion "latest"

    filter "system:macosx"
        cppdialect "gnu++20"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "Full"

    filter "configurations:Release"
        runtime "Release"
        symbols "Off"
        optimize "Full"
