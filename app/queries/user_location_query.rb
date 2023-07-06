class UserLocationQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = UserLocation.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_user(params[:user_id]) if params[:user_id].present?
      result = result.by_location(params[:location_id]) if params[:location_id].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at', 'name' ], 'name asc')
      result
    end

    def by_user(id)
      where(user_id: id)
    end

    def by_location(id)
      where(location_id: id)
    end
  end
end
