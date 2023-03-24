class AddTimeStampsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_timestamps(:quotes, null: false)
  end
end
