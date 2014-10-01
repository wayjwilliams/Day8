require 'pry'

class Panda

  @@pandas = []

  def self.all
    @@pandas # this is a wrapper for our array. won't change it, just refers
  end

  def self.kill_all
    @@pandas.each do |panda|
      panda.kill
  end

  def initialize(name)
    @name = name
    @alive = true
    @@pandas << self
  end

  def kill
    @alive=false
  end
end


# track all pandas created
# be able to kill all the pandas.

panda_joe = Panda.new "Joe"
panda_wo  = Panda.new "wo"
panda_me  = Panda.new "me"

p Panda.all

puts "Killing the pandas"
Panda.kill_all

p Panda.all

puts "--------------"
p "PandaWo: #{panda_wo.inspect}"
puts "--------------"
