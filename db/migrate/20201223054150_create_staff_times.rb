class CreateStaffTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_times do |t|

      t.timestamps
    end
  end
end
