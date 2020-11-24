# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new('sven', 150)
l2 = Lifter.new('roger',250)

g1 = Gym.new('Golds Gym')
g2 = Gym.new('Silvers Gym')

m1 = Membership.new(l1, g1, 40)
m2 = Membership.new(l1, g2, 60)
m3 = Membership.new(l2, g2, 75)

binding.pry

puts "Gains!"
