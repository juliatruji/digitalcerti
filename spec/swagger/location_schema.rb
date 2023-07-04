module LocationSchema
    OBJECT = {
      type: 'object',
      properties: {
        id: { type: 'integer', description: 'ID' },
        name: { type: :string, description: 'Nombre' },
        identification: { type: :string, description: 'RUC' },
        domain: { type: :string, description: 'Dominio' },
        description: { type: :string, description: 'Descripción' },
        address: { type: :string, description: 'Dirección' },
        client: { '$ref': '#/components/schemas/client' },
        geolocation: { '$ref': '#/components/schemas/geolocation' },
        created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
        updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' }
      },
      required: [:id]
    }.freeze
end
