class AddClicksToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :clicks, :integer
  end
end
