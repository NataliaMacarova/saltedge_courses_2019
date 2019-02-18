# problem 1
# use the each method of array
# iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# print out each value
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.each { |x| puts x}

# problem 3
# using the same array
# use the select method
# to extract all odd numbers into a new array.
 a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 b = a.select { |x| x.odd? }


# problem 4
# append "11" to the end of the original array
# prepend "0" to the beginning
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.insert(0,0) << 11

# problem 5
# get rid of "11"
# append a "3"
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
a.delete (11)
a << 3

#problem 6
# get rid of duplicates without 
# specifically removing any one value
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
a.uniq

# problem 7
# What's the major difference between an Array and a Hash?
# hash - это неупорядоченная коллекция произвольных элеметов,
# и индексация у hash осуществляется через ключи, 
# а не через целочисленные индексы, как у array


# problem 8
# create a Hash using both Ruby syntax styles
x = { "a" => 1, "b" => 2}
x = {a:1, b:2}

# problem 9
#Get the value of key `:b`
h = {a: 1, b: 2, c: 3, d: 4}
h[:b]
# add to this hash the key:value pair `{e:5}`
h[:e] = 5
# remove all key: value pairs whose value is less than 3.5
h.delete_if {|k, v| v < 3.5 }

# problem 10
# Can hash values be arrays? yes
a = {a: [11, 12, 13], b: [14, 15]}
# Can you have an array of hashes? yes
a = [{a: 1, b: 2}, {c: 3}]

# problem 12
# write a program that moves the information 
# from the array into the empty hash 
# that applies to the correct person
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# problem 13
# demonstrate how you would access 
# Joe's email and Sally's phone number
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# problem 15
# use Ruby's Array method delete_if 
# and String method start_with? 
# to delete all of the words that 
# begin with an "s" in the following array
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if{|word| word.start_with?("s")}

# recreate the arr and get rid of all of the words 
# that start with "s" or starts with "w"
arr.delete_if{|word| word.start_with?("s", "w")}

# turn it into a new array that 
# consists of strings containing one word.
# using Array's map and flatten methods,
# as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     a.map!{|words| words.split}
     a.flatten