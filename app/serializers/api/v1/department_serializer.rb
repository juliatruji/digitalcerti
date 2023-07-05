class Api::V1::DepartmentSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :var_name,
             :created_at,
             :updated_at
  belongs_to :country, serializer: Api::V1::CountrySerializer
end
