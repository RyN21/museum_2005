require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/exhibit'
require './lib/patron'


class ExhibitTest < Minitest::Test
  def setup
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end

  def test_it_exists_and_has_attribute
    assert_instance_of Exhibit, @exhibit
    assert_equal "Gems and Minerals", @exhibit.name
    assert_equal 0, @exhibit.cost
  end

end
