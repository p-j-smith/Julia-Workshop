# Julia is a functional language - does not have classes or support OOP

# struct (user-defined types)
struct Person
    # define fields belonging to the struct
    name::String
    age::Int
end

me = Person("Paul", 3)
typeof(me)
typeof(me.name)
typeof(me.age)

# fields
fieldnames(Person)
fieldtypes(Person)

# By default, structs
# mutable structs
mutable struct MutablePerson
    name::String
    age::Int
end

mutable_me = MutablePerson("???", 6)
mutable_me.age += 1

# Using strcuts in functions
# adding `!` to the end of the function name indicates
# the funciton modifies one of more of its arguments
function newborn!(person::MutablePerson)
    person.age = 0
end

function change_name!(person::MutablePerson, new_name::String)
    person.name = new_name
end

newborn!(mutable_me)
change_name!(mutable_me, "Paul")
mutable_me.age
mutable_me.name
mutable_me

# abstract types
abstract type Animal end

# define a subtype of Animal
struct Dog <: Animal end
struct Cat <: Animal end
struct Giraffe <: Animal end

function encounter(animal::Animal, encounters::Animal)
    return "What are you???"
end

function encounter(animal::Dog, encounters::Cat)
    return "Oh, there's a chase!"
end

function encounter(animal::Cat, encounters::Dog)
    return "Oh, there is hissing!"
end

rex = Dog()
meow = Cat()
godfried = Giraffe()

encounter(rex, meow)
encounter(meow, rex)
encounter(godfried, rex)
