class CreateGenders < ActiveRecord::Migration[6.0]
  def change
    create_table :genders do |t|

      t.timestamps
    end
  end
end
