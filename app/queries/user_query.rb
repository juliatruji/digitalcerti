class UserQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = User.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_client(params[:client_id]) if params[:client_id].present?
      result = result.by_active(params[:active]) if params[:active].present?
      result = result.by_user_type(params[:user_type]) if params[:user_type].present?
      result = result.by_search_term(params[:q]) if params[:q].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at', 'name' ], 'name asc')
      result
    end

    def by_search_term(search)
      search_key = "%#{search.strip}%"
      result = where("users.name ILIKE :search
                       OR users.email::text ILIKE :search",
                     search: search_key)
      result
    end

    def by_client(id)
      where(client_id: id)
    end

    def by_user_type(user_type)
      where(user_type: user_type)
    end

    def by_active(active)
      where(active: active)
    end
  end
end
