class Api::V1::CertificateCategorySerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :created_at,
             :updated_at
  belongs_to :client, serializer: Api::V1::ClientSerializer
end