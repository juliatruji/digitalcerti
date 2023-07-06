module UserLocationSchema
    OBJECT = {
      type: 'object',
      properties: {
        id: { type: 'integer', description: 'ID' },
        created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
        updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' },
        user: { '$ref': '#/components/schemas/user' },
        location: { '$ref': '#/components/schemas/location' }
      },
      required: [:id]
    }.freeze
end
