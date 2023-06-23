class Api::V1::DepartmentSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :created_at,
             :updated_at
end
