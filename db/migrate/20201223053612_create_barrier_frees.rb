class CreateBarrierFrees < ActiveRecord::Migration[6.0]
  def change
    create_table :barrier_frees do |t|

      t.timestamps
    end
  end
end
