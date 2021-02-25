class RecruitController < ApplicationController
  add_breadcrumb "求人一覧", :recruit_path

    def recruit
    end

    def office
      add_breadcrumb "事務アルバイト求人"
    end

    def regular
      add_breadcrumb "テレアポ正社員求人"
    end

    def parttime
      add_breadcrumb "テレアポアルバイト求人"
    end

    def outsourcing
      add_breadcrumb "事務業務委託求人"
    end

    def appointer
      add_breadcrumb "テレアポ業務委託求人"
    end
end
