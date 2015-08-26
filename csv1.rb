require 'csv'
class CSVReader
attr_accessor :name,:age,:department
@@values = Array.new

@@filename

   def self.inherited(subclass)
      #puts "#{subclass}.csv"
      @@filename = "#{subclass}.csv"
   end

   def self.addval(name,age,department)
	     csv =Array.new
      	 @@values <<  [name, age, department]
         Student1.instances.each do |employee|
          csv << ["name", "age", "department"]
          csv << [name, age, department]
         end
    end

	
	def self.find_by_name(name)
		
		 csv_text = File.read(@@filename)
		 csv = CSV.parse(csv_text, :headers => true)
		 puts csv.find {|row| row['name'] == name}
	end

	def self.find_by_age(age)
		 csv_text = File.read(@@filename)
		 csv = CSV.parse(csv_text, :headers => true)

		 puts csv.find {|row| row['age'] == age}
    end 


	def self.instances
	    @@values
	end

end
class Employee < CSVReader
end

class Student1 < CSVReader
end

#Employee.find_by_name("Anu")
#Employee.find_by_age("34")
#Employee.find_by_name("shreya")
#Employee.find_by_age("50")
Student1.find_by_name("Ananya")
Student1.find_by_age("19")
Student1.find_by_name("Bhavna")
emp = Student1.new
emp.name = "Shreya"
emp.age = "22"
emp.department = "ec"


1.times do
Student1.addval(emp.name,emp.age,emp.department)
end

Student1.instances.each do |employee|
 puts employee.to_csv
end
