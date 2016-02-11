require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'
require_relative 'linked_list'


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
