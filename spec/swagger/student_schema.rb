module StudentSchema
  OBJECT = {
    type: 'object',
    properties: {
      name: { type: :string, description: 'Nombre' },
      email: { type: :string, description: 'Correo' },
      phone: { type: :string, description: 'Telefono' },
      identification: { type: :string, description: 'Identificación' },
      address: { type: :string, description: 'Dirección' },
      location: { '$ref': '#/components/schemas/location' }
    },
    required: [:id]
  }.freeze
end
