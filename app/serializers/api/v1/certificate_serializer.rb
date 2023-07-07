class Api::V1::CertificateSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :folio,
             :register,
             :description,
             :created_at,
             :updated_at
  belongs_to :location, serializer: Api::V1::LocationSerializer
  belongs_to :certificate_category, serializer: Api::V1::CertificateCategorySerializer
end
