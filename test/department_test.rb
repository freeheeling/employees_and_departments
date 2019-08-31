require 'minitest/autorun'
require 'minitest/pride'
require './lib/department'
require './lib/employee'

class DepartmentTest < Minitest::Test

  def setup
    @customer_service = Department.new("Customer Service")
    @bobbi = Employee.new({
      name: "Bobbi Jaeger",
      age: "30",
      salary: "100_000"
      })
    @aaron = Employee.new({
      name: "Aaron Tanaka",
      age: "25",
      salary: "90_000"
      })
  end

  def test_it_exists
    assert_instance_of Department, @customer_service
  end

  def test_it_has_a_name
    assert_equal "Customer Service", @customer_service.name
  end

  def test_it_starts_without_employees
    assert_equal [], @customer_service.employees
  end

  def test_it_can_add_an_employee
    @customer_service.hire(@bobbi)
    @customer_service.hire(@aaron)

    assert_equal [@bobbi, @aaron], @customer_service.employees
  end

  def test_it_can_calculate_expenses
    assert_equal 0, @customer_service.expenses

    @customer_service.expense(100)
    @customer_service.expense(25)

    assert_equal 125, @customer_service.expenses
  end
end
