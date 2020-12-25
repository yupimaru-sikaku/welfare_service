class CreateOsakaWards < ActiveRecord::Migration[6.0]
  def change
    create_table :osaka_wards do |t|

      t.timestamps
    end
  end
end
