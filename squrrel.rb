
# Create a Squirrel class that can be initialized with a color and location. There are gray, red, black, and even albino squirrels and they live in locations like the city, state, wood, in town, whatever you feel like.
class Squirrel

 # Our squirrels might want to find a new home base if too many humans or predators move in, but they can never change their color. Make the color readable from outside the class, and make the location readable and writeable.

  attr_reader :color
  attr_accessor :location

 def initialize(color, location)
   @color = color
   @location = location
   @sleeping = true
   @hoard = {}
 end
# Create a `hoard_locations` data structure that will track two things: the location of a particular hoard (e.g. "knot hole" or "barn attic"), and how many nuts are stored there.The `hoard_locations` should start out empty.
#Create two instance methods: `wake_up` and `sleep`. These should update an instance variable in order to let us know if the squirrel is awake or not. Every squirrel should start out asleep when they are initialized.
 def wake_up
  @sleeping = false
  "Waking up the squirrel"
 end

 def sleep
   @sleeping = true
   "The squirrel is sleeping"
 end
#Create a `store_food` instance method that takes a hoard location and a number of nuts, and stores this in the `hoard_locations` data structure. If the hoard location already exists, this method should add to the existing number of nuts there. If the hoard location doesn't exist, it should create a new entry.
 def store_food(hoard_location, number_nuts)
   if @hoard.has_key?(hoard_location)
     @hoard[hoard_location] += number_nuts


   else
     @hoard[hoard_location] = number_nuts
   end
 end


#Create an instance method called `eat_something` that will wake the squirrel up, choose a hoard location at random, remove a random number of nuts for the squirrel to eat, and then have the squirrel go back to sleep.

 def eat_something
   p wake_up

   new_arr =[]
     @hoard.each do |key, value|
       new_arr << key

     end
    random_location = new_arr.sample #remember this very important, (assigning variable)
    random_location_number_of_nuts = @hoard[random_location]
    nuts_to_eat = rand(random_location_number_of_nuts)
    @hoard[random_location] = random_location_number_of_nuts - nuts_to_eat

   sleep
 end
# Create an instance method called `forget` that deletes a random hoard location from the squirrel's hoard locations and returns a string telling us that a new tree has sprouted.

 def forget
   tree_arr = []
     @hoard.each do |key, value|
       tree_arr << key
     end
 random_loc = tree_arr.sample
 @hoard.delete(random_loc)
 p "a new tree has sprouted"
 end
end

#Initialize a couple of different squirrels to demonstrate this functionality.
squirrel_1 = Squirrel.new("gray","boonies")
squirrel_2 = Squirrel.new("red", "Manhattan")
p squirrel_1
p squirrel_1.wake_up
p squirrel_1
p squirrel_1.sleep
p squirrel_1
p squirrel_1.store_food('forrest', 5)
p squirrel_1
p squirrel_1.store_food('forrest', 2)
p squirrel_1
p squirrel_1
p squirrel_1.eat_something
p squirrel_1
