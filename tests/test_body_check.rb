require 'minitest/autorun'
require './body_check'

class TestPerson < Minitest::Test
  def setup
    @person = Person.new
    @person.first_name = "John"
    @person.last_name = "Doe"
  end

  def test_initialize
    person = Person.new
    assert_nil person.first_name
    assert_nil person.last_name
  end
  
end
