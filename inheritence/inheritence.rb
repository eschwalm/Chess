class Employee
  attr_reader :salary

  def initialize(name, salary, title, boss)
    @name = name
    @salary = salary
    @title = title
    @boss = boss
  end

  def bonus(multiplyer)
    @salary * multiplyer
  end

end

class Manager < Employee
  attr_accessor :employees

  def initialize(name, salary, title, boss)
    super
    @employees = []
  end

  def bonus(multiplyer)
    return [self] unless @employees
    bonus = 0

    get_all_subordinates.each do |employee|
      bonus += employee.salary
    end

    bonus * multiplyer
  end

  def get_all_subordinates
    result = []

    @employees.each do |employee|
      if employee.is_a?(Manager)
        result += [employee]
        result += employee.get_all_subordinates
      else
        result += [employee]
      end
    end

    result
  end
end
