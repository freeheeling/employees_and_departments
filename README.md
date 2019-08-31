# Prework

You must complete 100% of iteration 1 and 2, following the interaction patterns below EXACTLY in
order to build upon this work for Iteration 3 with an instructor.

If you arrive to your mid-mod without this prework complete, you may be asked to leave the
evaluation, finish your work, and then follow-up for an evaluation later.


## Iteration 1

Use TDD to create an `Employee` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/employee'
# => true

pry(main)> bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
# => #<Employee:0x00007fdfd48af848...>

pry(main)> bobbi.name
# => "Bobbi Jaeger"

pry(main)> bobbi.age
# => 30

pry(main)> bobbi.salary
# => 100000
```

## Iteration 2

Use TDD to create a `Department` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/department'
# => true

pry(main)> require './lib/employee'
# => true

pry(main)> customer_service = Department.new("Customer Service")    
# => #<Department:0x00007fce46993d58...>

pry(main)> customer_service.name
# => "Customer Service"

pry(main)> customer_service.employees
# => []

pry(main)> bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
# => #<Employee:0x00007fce46194788...>

pry(main)> aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
# => #<Employee:0x00007fce46a610a0...>

pry(main)> customer_service.hire(bobbi)

pry(main)> customer_service.hire(aaron)    

pry(main)> customer_service.employees
# => [#<Employee:0x00007fce46194788...>, #<Employee:0x00007fce46a610a0...>]

pry(main)> customer_service.expenses
# => 0

pry(main)> customer_service.expense(100)

pry(main)> customer_service.expense(25)    

pry(main)> customer_service.expenses
# => 125
```
