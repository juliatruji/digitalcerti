class Api::V1::GeolocationSerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :created_at,
             :updated_at
  belongs_to :country, serializer: Api::V1::CountrySerializer
  belongs_to :department, serializer: Api::V1::DepartmentSerializer
  belongs_to :province, serializer: Api::V1::ProvinceSerializer
  belongs_to :district, serializer: Api::V1::DistrictSerializer
end
