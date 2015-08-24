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

emp=[Employee.new("Ramya",33,"address1"),Employee.new("Anu",33,"address2"),Employee.new("Suma",32,"address3")]
#empsrt=emp.sort_by {|e| e.name}
#puts empsrt
puts emp.sort.to_s
