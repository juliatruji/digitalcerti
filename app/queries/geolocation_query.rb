class GeolocationQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = Geolocation.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_country(params[:country_id]) if params[:country_id].present?
      result = result.by_department(params[:department_id]) if params[:department_id].present?
      result = result.by_province(params[:province_id]) if params[:province_id].present?
      result = result.by_district(params[:district_id]) if params[:district_id].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at' ])
      result
    end
  
    def by_country(id)
      where(country_id: id)
    end

    def by_department(id)
      where(department_id: id)
    end

    def by_province(id)
      where(province_id: id)
    end

    def by_district(id)
      where(district_id: id)
    end
  
  end
end
