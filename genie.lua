solution "cc"

  configurations      { "Debug", "Release" }
  platforms           { "x32", "x64" }

  targetdir           "Build"
  debugdir            "Build"

  configuration "Debug"
    defines           { "DEBUG",  }
    flags             { "Symbols" }

  configuration "Release"
    defines           { "NDEBUG"}
    flags             { "Optimize" }

  project "cc"
    kind            "ConsoleApp"
    language        "C"
    objdir          "Build-Object"

    flags           { "NoExceptions", "NoRTTI" }
    defines         { }
    links           { }
    includedirs     { }
    libdirs         { }

    excludes        { "cccli.c", "ccnod.c", "cctok.c", "ccasm.c" }

    files           {
      "cccli.c",
      "ccnod.c",
      "cctok.c",
      "ccasm.c",
      "cc.c",
      "genie.lua"
    }
