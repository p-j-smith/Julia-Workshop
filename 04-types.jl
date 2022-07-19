# Types
# `Any` is a super type of all types in Julia

# Abstract vs Concrete
# Abstract types cannot be instantiated (e.g. AbstractString)

x = 2.2
y = 22

typeof(x)
typeof(y)

# supertypes, supertype, and subtypes
supertypes(Float64)
supertype(Float64)
subtypes(Float64)

supertype(typeof(x))
subtypes(AbstractFloat)
subtypes(Real)

# isa comparison
x isa Float64
x isa Number
x isa AbstractArray

# AbstractFloat vs Float64, Float32
# Float32 and Float64 are concrete types that can be instantiated
# Both are subtypes of AbstractFloat
isconcretetype(Float16)
isabstracttype(supertype(typeof(y)))

# Int vs Int64, Int32, Int16
# Int is abstract
# Also unsigned counterparts, e.g. UInt64
isconcretetype(UInt)
isabstracttype(Int64)

# "Containers" that have {Type}

# Vector{Type} and AbstractVector{Type}
x_vec = [1, 2, 3, 4, 5]  # vector of integers from 1 to 5
# Type is an Array of Int64, with 1 dimension
typeof(x_vec)

# Appending to the vector
push!(x_vec, 6.0)  # will be cast to Int64

# Vectors of Chars or Strings
['c', 'a']
["c", "a"]

# Not performant to have vectors with type Any!! Memory cannot be allocated efficiently.
another_vec = [1, "string", true, 3.14]  # has an underlying type of Any

# Matrix{Type} and AbstractMatrix{Type}
x_matrix = [1 2 3; 4 5 6]
typeof(x_matrix)

x_matrix = [
    1 2 3;
    4 5 6;
]

# It's all Array{Type, N}
AbstractArray{AbstractFloat, 2}

# Packages to extend array utilities
using SparseArrays  # part of the standard library
using StaticArrays  # 3rd party packages, must be added
