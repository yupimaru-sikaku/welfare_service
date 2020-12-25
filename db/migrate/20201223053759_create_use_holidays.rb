class CreateUseHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :use_holidays do |t|

      t.timestamps
    end
  end
end
