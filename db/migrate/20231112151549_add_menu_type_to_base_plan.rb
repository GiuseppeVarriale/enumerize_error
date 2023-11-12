class AddMenuTypeToBasePlan < ActiveRecord::Migration[5.1]
  def change
    add_column :base_plans, :menu_type, :integer
  end
end
