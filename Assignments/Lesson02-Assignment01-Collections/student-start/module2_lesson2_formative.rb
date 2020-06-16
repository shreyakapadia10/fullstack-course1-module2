array = (1..10000).to_a.sample(23)

p array.select { |num| num%3==0 }.reject { |num| num<5000 }.sort.reverse
