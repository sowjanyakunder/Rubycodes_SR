require 'csv'
class CSVReader
attr_accessor :name,:age,:department

    CSV.open("Employee.csv", "wb") do |csv|
     csv << ["name", "age", "department"]
     csv << ["suma", "19", "HR"]
     csv << ["suman", "18", "devpt"] 
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
end
class Employee < CSVReader

end

Employee.find_by_name("suma")
Employee.find_by_age("18")
emp = Employee.new
emp.name = "name"
emp.age = 50
emp.department = "IT"
