class Api::V1::ClientSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :phone,
             :email,
             :address,
             :slug,
             :tradename,
             :description,
             :identification,
             :logo,
             :social,
             :website,
             :active,
             :colors,
             :domain,
             :banner,
             :created_at,
             :updated_at
  belongs_to :geolocation, serializer: Api::V1::GeolocationSerializer
  attribute(:banner) { file_serializer(:banner) }
  attribute(:logo) { file_serializer(:logo) }
end