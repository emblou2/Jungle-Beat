#require 'pry'                   # ~> LoadError: cannot load such file -- pry
require 'minitest/autorun'      # => true
require 'minitest/pride'        # => true
require_relative 'node'         # => true
require_relative 'linked_list'  # ~> NoMethodError: undefined method `insert' for #<LinkedList:0x007fdaf3872370>


class JungleBeat

  attr_accessor :list, :beats

  def initialize(beats)
    @beats = beats
    sep_beats = beats.split
    beat_one = sep_beats[0]
    @list = LinkedList.new(beat_one)
    sep_beats[1..-1].each do |beat|
      list.append(beat)
    end
  end

  def make_list
    @head = Node.new(@beats[0])
    @beats[1..-1].each do |beat|
    end
  end

  def play
    `say -r 500 -v Boing #{all}`
    list.count

  end

  def all
    list.all
  end

  def count
    list.count
  end

  def append(data)
    list.append(data)
  end

  def prepend(data)
    list.prepend(data)
  end

end
