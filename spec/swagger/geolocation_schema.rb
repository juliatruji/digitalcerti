module GeolocationSchema
  OBJECT = {
    type: 'object',
    properties: {
      id: { type: :integer, description: 'ID' },
      created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
      updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' },
      country: { '$ref': '#/components/schemas/country' },
      department: { '$ref': '#/components/schemas/department' },
      province: { '$ref': '#/components/schemas/province' },
      district: { '$ref': '#/components/schemas/district' }
    },
    required: [:id]
  }.freeze
end
