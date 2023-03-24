class AddTimeStampsToPeople < ActiveRecord::Migration[5.2]
  def change
    add_timestamps(:people, null: false)
  end
end
