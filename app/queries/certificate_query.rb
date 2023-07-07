class CertificateQuery < ApplicationQuery
  attr_reader :relation

  def initialize(base_relation = Certificate.all)
    @relation = base_relation.extending(Scopes)
                             .extending(ApplicationQuery::Scopes)
  end

  module Scopes
    def search_by_params(params)
      result = self
      result = result.by_search_term(params[:q]) if params[:q].present?
      result = result.by_location(params[:location_id]) if params[:location_id].present?
      result = result.by_certificate_category(params[:certificate_category_id]) if params[:certificate_category_id].present?
      result = result.sort_by_column(params[:sort], [ 'created_at', 'updated_at']) if params[:sort].present?
      result
    end

    def by_search_term(search)
      search_key = "%#{search.strip}%"
      result = where("certificates.name ILIKE :search
                       OR certificates.register ILIKE :search
                       OR certificates.folio::text ILIKE :search",
                     search: search_key)
      result
    end

    def by_location(id)
      where(location_id: id)
    end

    def by_certificate_category(id)
      where(certificate_category_id: id)
    end
  end
end
