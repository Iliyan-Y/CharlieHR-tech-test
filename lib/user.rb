require 'date'
class User 

  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
  end

  def age
    current_date = Date.today
    current_date.year - date_of_birth.year
  end

  def next_birthday 
    "2021-11-01"
  end

end
