class CreateGhServices < ActiveRecord::Migration[6.0]
  def change
    create_table :gh_services do |t|

      t.timestamps
    end
  end
end
