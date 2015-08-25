require "test/unit"
class Employee
include Comparable
attr_accessor :name
 
  def <=> (other) 
    self.name <=> other.name
  end
 
  def initialize(name, age, address)
        @name = name
        @age = age
        @address = address
  end
end
emp=Array.new

emp=[Employee.new("Rashmi",33,"address1"),Employee.new("Anu",33,"address2"),Employee.new("Pari",31,"address3")]

puts emp.sort.to_s
class TestTriangle < Test::Unit::TestCase

  def test_sort
    emp=[Employee.new("Rashmi",33,"address1"),Employee.new("Anu",33,"address2"),Employee.new("Pari",31,"address3")]
    
    assert_equal(emp[1],emp.sort[0])
    assert_equal(emp[2],emp.sort[1])
    assert_equal(emp[0],emp.sort[2])
  end
end