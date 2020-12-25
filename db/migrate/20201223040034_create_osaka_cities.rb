class CreateOsakaCities < ActiveRecord::Migration[6.0]
  def change
    create_table :osaka_cities do |t|

      t.timestamps
    end
  end
end
