class Api::V1::DistrictSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :var_name,
             :created_at,
             :updated_at
end
