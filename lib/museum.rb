require 'pry'

class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
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

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    pbei = Hash.new(0)
    @exhibits.each do |exhibit|
      pbei[exhibit] = patron if patron.include?(exhibits.name)
    end

    ### Cant's seem to put two arrays in this hash.. AHH!!

    # binding.pry
    # pbei = @exhibits.group_by do |exhibit|
    #   exhibit
    # end
    # pbei.transform_values do |ex|
    #   ex = @patron_1
    # end
  end
end
