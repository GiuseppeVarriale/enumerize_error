class CreateBasicPlan < ActiveRecord::Migration[5.1]
  def up
    BasePlan.create!(code: BasePlan::BASIC_PLAN_CODE, description: "Basic plan", month_price: 1000)
  end

  def down
    BasePlan.find_by(code: BasePlan::BASIC_PLAN_CODE).destroy
  end
end
