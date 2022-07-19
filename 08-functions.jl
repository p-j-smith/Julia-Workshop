# functions

function function_name()
    # Add logic to the body of the function
end

function function_name()
    x = "Function"
    return x
end

# short form
short_function() = nothing
string_function() = "Short function that returns a string"

# positional arguments versus keyword arguments
# positional arguments:
function sum_two_numbers(x, y)
    return x + y
end

sum_two_numbers(3, 4)

# keyword arguments are specified after a semi-colon
function sum_two_numbers_with_caveats(x, y; key1=1, key2=2)
    return sum([x, y, key1,  key2])
end

sum_two_numbers_with_caveats(3, 4)

# All arguments as keywords
function sum_two_numbers_keyword_only(; x=3, y=4)
    return x + y
end

sum_two_numbers_keyword_only()

# function vs methods
# Define a function `round_number` with two methods - 
# one for Flaot64 inputs and another for Int64 inputs
function round_number(x::Float64)
    return Int64(round(x))
end

function round_number(x::Int64)
    return x
end

# multiple dispatch
function sum_two_numbers(x::Int, y::AbstractFloat)
    return x + round(Int, y)
end

sum_two_numbers(1, 1.0)

function sum_two_numbers(x::AbstractFloat, y::int)
    return x + float(y)
end

sum_two_numbers(1.0, 1)

# anonymous functions
x -> x + 1
(x -> x + 1)
(x -> x + 1)(5)

filter(x -> x > 3, 1:2:10)
filter(x -> x > 3, 1:2:10)

# functions Exercises

# Make a function `round_number` that rounds a number x as input.
# It should have two methods:
# 1. Float64 should use the `round` function
# 2. Int64 should just return the input (noop)

function round_number(x::Float64)
    return round(x)
end

function round_number(x::Int64)
    return x
end

# Write a function to multiply all the numbers in a vector

function multiply_list(v)
    acc = 1
    for i in v
        acc *= i
    end
    return acc
end
