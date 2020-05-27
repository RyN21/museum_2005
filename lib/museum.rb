require 'pry'

class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommends = []
    @exhibits.each do |exhibit|
      recommends << exhibit if patron.interests.include?(exhibit.name)
    end
    recommends
  end
end
