require 'csv'
class CSVReader
attr_accessor :name,:age,:department
@@values = Array.new

	def self.addval(name,age,department)
		 @@values <<  [name, age, department]
		 CSV.open("Employee.csv", "wb") do |csv|
		    Employee.instances.each do |employee|
		      csv << ["name", "age", "department"]
		      csv << ["suma", "19", "HR"]
		      csv << ["suman", "25", "devpt"] 
		      csv << [name, age, department]
		    end
		 end
	end

	def self.find_by_name(name)
		 csv_text = File.read('Employee.csv')
		 csv = CSV.parse(csv_text, :headers => true)
		 puts csv.find {|row| row['name'] == name}
	end

	def self.find_by_age(age)
		 csv_text = File.read('Employee.csv')
		 csv = CSV.parse(csv_text, :headers => true)
		 puts csv.find {|row| row['age'] == age}
	end

	def self.instances
	    @@values
	end

end
class Employee < CSVReader
end

Employee.find_by_name("suma")
Employee.find_by_age("25")
Employee.find_by_name("shreya")
Employee.find_by_age("50")

emp = Employee.new
emp.name = "shreya"
emp.age = "50"
emp.department = "IT"
1.times do
 Employee.addval(emp.name,emp.age,emp.department)
end
#puts Employee.instances
Employee.instances.each do |employee|
  puts employee.to_csv
end
