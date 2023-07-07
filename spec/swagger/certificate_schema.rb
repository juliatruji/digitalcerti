module CertificateSchema
  OBJECT = {
    type: 'object',
    properties: {
      id: { type: :integer, description: 'ID' },
      name: { type: :string, description: 'Nombre' },
      folio: { type: :string, description: 'Folio' },
      record: { type: :string, description: 'Record' },
      description: { type: :string, description: 'Descripcion' },
      created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
      updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' },
      location: { '$ref': '#/components/schemas/location' },
      certificate_category: { '$ref': '#/components/schemas/certificate_category' }
    },
    required: [:id]
  }.freeze
end
