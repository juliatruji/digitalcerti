class Api::V1::LocationSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :identification,
             :domain,
             :description,
             :address,
             :created_at,
             :updated_at
  attribute(:logo) { file_serializer(:logo) }
  belongs_to :client, serializer: Api::V1::ClientSerializer
  belongs_to :geolocation, serializer: Api::V1::GeolocationSerializer
end