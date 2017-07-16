module SupportMod

export helper_func1

"""
  This is a helper function

  This is a new paragraph

  Inputs:

    x: some value
    y: an Array
"""
function helper_func1(x, y::Array)
  return x + y
end

end  # end module
