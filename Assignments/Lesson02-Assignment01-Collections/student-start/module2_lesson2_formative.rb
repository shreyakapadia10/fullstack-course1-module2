# Grab 23 random elements between 0 and 10000
array = (1..10000).to_a.sample(23)

p array


# This selects only elements that when divided by 3 have a remainder of 0 
# using the % (modulus) operator
p array.select { |num| num%3==0 }.reject { |num| num<5000 }.sort.reverse

# Using `reject` method filter out anything less than 5000
# and use `sort` and `reverse` methods to sort in descending order
# Start with the line below and continue as 1 long method chain
