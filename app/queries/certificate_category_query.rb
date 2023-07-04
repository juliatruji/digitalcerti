class CertificateCategoryQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = CertificateCategory.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_search_term(params[:q]) if params[:q].present?
      result = result.by_client(params[:client_id]) if params[:client_id].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at', 'name' ], 'name asc')
      result
    end

    def by_search_term(search)
      search_key = "%#{search.strip}%"
      result = where("certificate_categories.name ILIKE :search",
                     search: search_key)
      result
    end
  
    def by_client(id)
      where(client_id: id)
    end

  end
end
