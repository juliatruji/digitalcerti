class LocationQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = Location.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_search_term(params[:q]) if params[:q].present?
      result = result.by_client(params[:client_id]) if params[:client_id].present?
      result = result.by_geolocation(params[:geolocation_id]) if params[:geolocation_id].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at', 'name' ], 'name asc')
      result
    end

    def by_search_term(search)
      search_key = "%#{search.strip}%"
      result = where("locations.name ILIKE :search
                       OR locations.identification ILIKE :search
                       OR locations.description ILIKE :search
                       OR locations.address::text ILIKE :search",
                     search: search_key)
      result
    end
  
    def by_client(id)
      where(client_id: id)
    end

    def by_geolocation(id)
      where(geolocation_id: id)
    end
  
  end
end
