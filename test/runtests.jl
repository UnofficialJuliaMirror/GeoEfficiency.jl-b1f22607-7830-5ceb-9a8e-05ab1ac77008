#
# Correctness Tests
#

const io = IOBuffer()
logging(io, kind=:warn)
logging(io, kind=:info)

import Compat.Sys: isapple
using Compat.MathConstants
using Compat.Test
using GeoEfficiency
const G = GeoEfficiency



tests = ["Input_Interface",
         "Physics_Model",
         "Calculations",
         "Output_Interface"]

println("\nRunning tests:")

for t in tests
	println(); info("Begin test of $(t).....\n")
    include("test_$(t).jl")
	println(); info("End test of $(t).....\n")
end
@test about() == nothing

