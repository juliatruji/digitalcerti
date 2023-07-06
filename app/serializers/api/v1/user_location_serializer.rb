class Api::V1::UserLocationSerializer < Api::V1::ApplicationSerializer
  attributes :id
  belongs_to :user, serializer: Api::V1::UserSerializer
  belongs_to :location, serializer: Api::V1::LocationSerializer
end
