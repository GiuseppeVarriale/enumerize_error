class CreateBasePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :base_plans do |t|
      t.string :code
      t.integer :month_price
      t.string :description

      t.timestamps
    end
  end
end
