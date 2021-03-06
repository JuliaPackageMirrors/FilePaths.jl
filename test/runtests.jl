include_path = joinpath(
    abspath(dirname(dirname(@__FILE__))),
    "src/FilePaths.jl"
)
include(include_path)

using FilePaths

import URIParser: URI

if VERSION >= v"0.5-"
    using Base.Test
else
    using BaseTestNext
    const Test = BaseTestNext
end

info("Beginning tests...")

include("mode.jl")
include("path.jl")

info("All tests passed.")
