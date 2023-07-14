class Api::V1::StudentSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :phone,
             :email,
             :identification,
             :address,
             :created_at,
             :updated_at
  belongs_to :location, serializer: Api::V1::LocationSerializer
end
