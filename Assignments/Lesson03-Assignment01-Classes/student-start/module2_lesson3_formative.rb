class Person
  #have a first_name and last_name attribute with public accessors
  #attr_accessor 

  #have a class attribute called `people` that holds an array of objects
  @@people = []

  #have an `initialize` method to initialize each instance
  def initialize(fname,lname)
		@first_name = fname
		@last_name = lname
		@@people << self
	end


  #have a `search` method to locate all people with a matching `last_name`
  def self.search(lname)
		@@people.select { |person| person.last_name == lname }
	end

  #have a `to_s` method to return a formatted string of the person's name
  def to_s
    "#{@first_name} #{@last_name}"
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith
