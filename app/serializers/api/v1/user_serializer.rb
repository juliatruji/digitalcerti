class Api::V1::UserSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :phone,
             :email,
             :client_id,
             :active,
             :user_type,
             :created_at,
             :updated_at
  belongs_to :client, serializer: Api::V1::ClientSerializer
end
