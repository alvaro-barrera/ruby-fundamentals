module Printable
  def self.included(klass)
    attr_accessor :print_count
  end

  def print(item)
    @print_count ||= 0
    @print_count += 1
    "#{item} has been successfully printed. Print count: #{@print_count}"
  end
end

class Terminal
  include Printable
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

terminal1 = Terminal.new("Term1")
p terminal1.print("page")
p terminal1.print("picture")

terminal2 = Terminal.new("Term1")
p terminal2.print("page")
p terminal2.print("picture")
