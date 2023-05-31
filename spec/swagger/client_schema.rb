module ClientSchema
  OBJECT = {
    type: 'object',
    properties: {
      id: { type: :integer, description: 'ID' },
      name: { type: :string, description: 'Nombre' },
      phone: { type: :string, description: 'Telefono' },
      email: { type: :string, description: 'correo electrónico' },
      slug: { type: :string, description: 'URL' },
      description: { type: :string, description: 'Descripción' },
      tradename: { type: :string, description: 'Nombre Comercial' },
      identification: { type: :string, description: 'RUC o Identificación' },
      logo: { type: :string, description: 'Logo' },
      country: { type: :string, description: 'Pais' },
      location: { type: :string, description: 'Departamento o Localidad' },
      address: { type: :string, description: 'Dirección' },
      social: { type: :string, description: 'Redes Sociales' },
      website: { type: :string, description: 'Sitio Web' },
      colors: { type: :string, description: 'Colores' },
      domain: { type: :string, description: 'Dominio' },
      banner: { type: :string, description: 'Banner' },
      active: { type: :boolean, description: 'Si esta Activo' },
      created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
      updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' },
    },
    required: [:id]
  }.freeze
end
