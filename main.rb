class BaseNotifier
  def initialize(student)
    @student = student
  end
  def send
    "Welcome to the classroom #{@student.first_name} #{@student.last_name}"
  end
end

class Notifier < BaseNotifier
  def initialize(student)
    super(student)
  end
  def send
    "Welcome to Computer Science Class: #{@student.first_name} #{@student.last_name}"
  end
  
end

class Student
  attr_accessor :first_name, :last_name
end

student = Student.new
student.first_name = 'Temitope'
student.last_name = 'Olotin'

notify = Notifier.new(student)
p notify.send

