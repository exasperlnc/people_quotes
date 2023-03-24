require 'rails_helper'

RSpec.describe Person do
 it {should have_many :quotes}
end