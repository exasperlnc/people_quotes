class Quote < ApplicationRecord
  belongs_to :person

  def increase_clicks
    self.clicks += 1  
  end
end