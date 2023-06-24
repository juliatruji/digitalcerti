class DistrictQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = District.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_search_term(params[:q]) if params[:q].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at', 'name' ], 'name asc')
      result
    end

    def by_search_term(search)
      search_key = "%#{search.strip}%"
      result = where("districts.name ILIKE :search
                       OR districts.var_name::text ILIKE :search",
                     search: search_key)
      result
    end
  end
end
