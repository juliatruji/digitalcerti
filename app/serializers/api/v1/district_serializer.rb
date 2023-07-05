class Api::V1::DistrictSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :var_name,
             :created_at,
             :updated_at
  belongs_to :province, serializer: Api::V1::ProvinceSerializer
end
