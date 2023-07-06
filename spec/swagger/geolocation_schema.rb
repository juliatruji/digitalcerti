module GeolocationSchema
  OBJECT = {
    type: 'object',
    properties: {
      id: { type: :integer, description: 'ID' },
      country_id: { type: :integer, description: 'ID pais' },
      department_id: { type: :integer, description: 'ID Departamento' },
      province_id: { type: :integer, description: 'ID Provincia' },
      district_id: { type: :integer, description: 'ID Distrito' },
      created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
      updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' }
    },
    required: [:id]
  }.freeze
end
