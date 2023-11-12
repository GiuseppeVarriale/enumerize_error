class BasePlan < ApplicationRecord
    extend Enumerize

    BASIC_PLAN_CODE = '1'.freeze

    validates_presence_of :code, :description, :month_price
    validates_uniqueness_of :code
    
    enumerize :menu_type, in: { simple_menu: 0, premium_menu: 1 }, i18n_scope: "base_plan.menu_type", scope: true, default: :simple_menu

    def simple_menu?
        menu_type == :simple_menu
    end

end
