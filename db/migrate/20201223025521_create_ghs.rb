class CreateGhs < ActiveRecord::Migration[6.0]
  def change
    create_table :ghs do |t|

      t.string :name, null: false
      t.string :station, null: false
      t.integer :price, null: false
      t.integer :house_rent, null: false
      t.integer :food_expenses, null: false
      t.integer :daily_necessities_costs, null: false
      t.integer :utility_costs, null: false
      t.integer :capacity, null: false
      t.integer :availability, null: false
      t.string :phone_number
      t.string :fax_number
      t.string :email
      t.text :description
      t.integer :construction_year, null: false
      t.integer :construction_month, null: false
      
      # 以降はActiveHash
      t.integer :prefecture_id
      t.integer :osaka_city_id
      t.integer :gender_id
      t.integer :residential_style_id
      t.integer :barrier_free_id
      t.integer :use_holiday_id
      t.integer :gh_service_id
      t.integer :staff_time_id
      t.integer :from_station_id
      # //以降はActiveHash
      
      # 掲載するための承認権限
      t.boolean :flag, null: false, default: false
      # //掲載するための承認権限

      t.timestamps
    end
  end
end
