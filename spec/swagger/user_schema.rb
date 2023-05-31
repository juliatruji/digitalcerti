module UserSchema
    OBJECT = {
      type: 'object',
      properties: {
        id: { type: 'integer', description: 'ID' },
        name: { type: :string, description: 'Nombre' },
        phone: { type: :string, description: 'Celular' },
        email: { type: :string, description: 'Email' },
        active: { type: :boolean, description: 'Si esta Activo' },
        user_type: {
          type: :string,
          enum: ['super_admin', 'location_admin', 'client_admin'],
          description: 'Tipo de usuario'
        },
        client: { '$ref': '#/components/schemas/client' },
        created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
        updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' }
      },
      required: [:id]
    }.freeze
end
