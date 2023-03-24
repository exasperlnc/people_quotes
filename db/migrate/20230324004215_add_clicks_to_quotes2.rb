class AddClicksToQuotes2 < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :clicks, :integer
  end
end
