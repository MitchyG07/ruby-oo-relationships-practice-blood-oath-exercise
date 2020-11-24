require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

trump = Cult.new("Trump","Spokane","2016","MAGA")
mcconnell = Cult.new("Mcconnell", "Senate", "2000", "Leave the bill on my desk")

mitch = Follower.new("Mitch", 26, "election fraud lol")
charlie = Follower.new("Charlie", 29, "we need a recount lol")

b1 = BloodOath.new("2010", mitch, trump)
b2 = BloodOath.new("2011", charlie, mcconnell)

mcconnell.recruit_follower(mitch)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits