module DocTestPkg

push!(LOAD_PATH, joinpath(Pkg.dir("DocTestPkg"), "src"))
using SupportMod

# DocTestPkg
export Equation, func, calcIt

"""
  Type holding all data for an instance of an equation
"""
type Equation{Tsol, Tres}
  q::Array{Tsol, 3}
  res::Array{Tres, 3}
  t::Float64
end

"""
  Outer constructor for [`Equation`](@ref)
"""
function Equation(numDofPerNode::Integer, numNodesPerElement::Integer,
                 numEl::Integer)
  q = zeros(numDofPerNode, numNodesPerElement, numEl)
  res = zeros(numDofPerNode, numNodesPerElement, numEl)
  t = 0.0

  return Equation{Float64, Float64}(q, res, t)
end

"""
Returns double the number `x` plus `1`
"""
func(y) = 2y + 1

"""
  This function calculates something
"""
function calcIt(x::Integer)
  return x + 2
end

end # module
