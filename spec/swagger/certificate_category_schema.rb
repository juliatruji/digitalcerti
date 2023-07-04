module CertificateCategorySchema
    OBJECT = {
      type: 'object',
      properties: {
        id: { type: 'integer', description: 'ID' },
        name: { type: :string, description: 'Nombre' },
        created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
        updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' },
        client: { '$ref': '#/components/schemas/client' }
      },
      required: [:id]
    }.freeze
end
