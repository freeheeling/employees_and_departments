require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'

class EmployeeTest < Minitest::Test

  def setup
    @bobbi = Employee.new({
      name: "Bobbi Jaeger",
      age: "30",
      salary: "100_000"
    })
  end

  def test_it_exists
    assert_instance_of Employee, @bobbi
  end

  def test_initialization
    assert_equal "Bobbi Jaeger", @bobbi.name
    assert_equal "30", @bobbi.age
    assert_equal "100_000", @bobbi.salary
  end
end
