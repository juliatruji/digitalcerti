class ClientQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = Client.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_search_term(params[:q]) if params[:q].present?
      result = result.by_country(params[:country_id]) if params[:country_id].present?
      result = result.by_department(params[:department_id]) if params[:department_id].present?
      result = result.by_province(params[:province_id]) if params[:province_id].present?
      result = result.by_district(params[:district_id]) if params[:district_id].present?
      result = result.by_active(params[:active]) if params[:active].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at', 'name' ], 'name asc')
      result
    end

    def by_search_term(search)
      search_key = "%#{search.strip}%"
      result = where("clients.name ILIKE :search
                       OR clients.tradename ILIKE :search
                       OR clients.identification ILIKE :search
                       OR clients.description::text ILIKE :search",
                     search: search_key)
      result
    end

    def by_country(id)
      joins(:geolocation).where(geolocations: { country_id: id } )
    end

    def by_department(id)
      joins(:geolocation).where(geolocations: { department_id: id } )
    end

    def by_province(id)
      joins(:geolocation).where(geolocations: { province_id: id } )
    end

    def by_district(id)
      joins(:geolocation).where(geolocations: { district_id: id } )
    end

    def by_active(status)
      where(active: status)
    end
  end
end
