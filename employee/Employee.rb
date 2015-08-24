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

emp=[Employee.new("a",33,"address1"),Employee.new("bAnu",33,"address2")]

puts emp.sort.to_s
class TestTriangle < Test::Unit::TestCase

  def test_sort
    
    emp = [Employee.new("vani",33,"address1"),Employee.new("bAnu",33,"address2")]
    empsrt=emp.sort_by {|e| e.name}
    empsrt.to_s
    assert_equal(empsrt.to_s, emp.sort.to_s)
  end
end