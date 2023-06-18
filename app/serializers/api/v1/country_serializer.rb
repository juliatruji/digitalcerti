class Api::V1::CountrySerializer < Api::V1::ApplicationSerializer
  attributes :id,
             :name,
             :code,
             :iso,
             :var_name,
             :code_phone,
             :language,
             :capital,
             :banner,
             :created_at,
             :updated_at
  attribute(:banner) { file_serializer(:banner) }
end