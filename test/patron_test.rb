require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'


class PatronTest < Minitest::Test
  def setup
    @patron_1 = Patron.new("Bob", 20)
  end

  def test__it_exists_and_has_attributes
    assert_instance_of Patron, @patron_1
  end
end
