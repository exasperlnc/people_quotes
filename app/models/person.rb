class Person < ApplicationRecord
  has_many :quotes

  def increase_clicks
    self.clicks += 1  #model test doesn't pass without "self." ???
  end

  # def self.order_by_creation
  #   order(:created_at)
  # end

  def sort_quotes_alphabetically
    quotes.order(:text)
  end
end