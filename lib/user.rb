require 'date'
class User 

  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
  end

  def age
    current_date = Date.today
    current_date.year - @date_of_birth.year
  end

  def next_birthday 
    Date.new(Date.today.year + 1, @date_of_birth.month, @date_of_birth.day).to_s
  end

end
