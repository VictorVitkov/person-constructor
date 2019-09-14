require 'pry'

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def greet
    "Hello, #{@first_name} #{@last_name}"
  end
end

jocko = Person.new('Jocko', 'Wilink')
goggins = Person.new('David', 'Goggins')

puts jocko.greet
# Hello, Jocko Wilink

puts goggins.greet
# Hello, David goggins

# ******************************************************************************
# name is required argument, language is optional and defaults to ruby unless
# otherwise specified.

class Programmer
  def initialize(name, language="Ruby")
    @name = name
    @language = language
  end

  def greeting
    "Hello #{@name}, I hear you are a good #{@language} programmer"
  end
end

sean = Programmer.new('Sean')
sean_python = Programmer.new('Sean', 'Python')

puts sean.greeting
# Hello, Sean, I hear you are a good Ruby programmer

puts sean_python.greeting
# Hello, Sean, I hear you are a good Python programmer

# ******************************************************************************
# if only one argument is given, assume that the full name of the musician has
# been given.
#

class Guitarist
  def initialize(name, last_name = nil)
    if last_name.nil? # No last name specified, so name is the full name
      full_name = name.split
      @first_name = full_name[0]
      @last_name = full_name[1]
    else
      @first_name = name
      @last_name = last_name
    end

    def guitar_skills
      "#{@first_name} #{@last_name} is a guitar god"
    end
  end
end

hendrix1 = Guitarist.new('Jimi Hendrix')
hendrix2 = Guitarist.new('Jimi', 'Hendrix')
zakk = Guitarist.new('Zakk')

puts hendrix1.guitar_skills
puts hendrix2.guitar_skills
puts zakk.guitar_skills

# ******************************************************************************
# if one argument is supplied, your constructor attempts to figure out the first
# name, last name, and middle name.
class President
  def initialize(name, last_name = nil, middle_name = nil)
    if last_name.nil? && middle_name.nil? # one argument
      full_name = name.split
      @first_name = full_name[0]
      if full_name.length == 2
        @last_name = full_name[1]
      else
        @last_name = full_name[2]
        @middle_name = full_name[1]
      end
    elsif middle_name.nil? # two arguments
      @first_name = name
      @last_name = last_name
    else # three arguments
      @first_name = name
      @last_name = last_name
      @middle_name = middle_name
    end
  end

  def name
    "#{@first_name} #{@middle_name} #{@last_name} was a great president"
  end
end

fdr = President.new('Franklin Delano Roosevelt')
washington = President.new('George Washington')
lincoln = President.new('Abraham', 'Lincoln')
jfk = President.new('John', 'Kennedy', 'Fitzgerald')

puts fdr.name
puts washington.name
puts lincoln.name
puts jfk.name

# binding.pry
