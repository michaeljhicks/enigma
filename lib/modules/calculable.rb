require 'date'

module Calculable
  def calculate_random_key
    random_number = ""
    until random_number.length == 5
      random_number += rand(10).to_s
    end
    random_number
  end

  def create_date
    Date.today.strftime('%d%m%y')
  end
end
