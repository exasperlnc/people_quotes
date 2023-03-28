class Person < ApplicationRecord
  has_many :quotes

  def increase_clicks
    self.clicks += 1  #model test doesn't pass without "self." ???
  end
end