class Quote < ApplicationRecord
  belongs_to :person

  # def increase_clicks
  #   clicks += 1  
  # end
end