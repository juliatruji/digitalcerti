module CountrySchema
    OBJECT = {
      type: 'object',
      properties: {
        id: { type: 'integer', description: 'ID' },
        name: { type: :string, description: 'Nombre' },
        code: { type: :string, description: 'Código' },
        iso: { type: :string, description: 'Iso' },
        var_name: { type: :string, description: 'Nombre en el Sistema' },
        code_phone: { type: :string, description: 'Código celular' },
        language: { type: :string, description: 'Idioma' },
        banner: { type: :string, description: 'Bandera' },
        capital: { type: :string, description: 'Capital' },
        created_at: { type: :string, format: 'date-time', description: 'Fecha de creación' },
        updated_at: { type: :string, format: 'date-time', description: 'Fecha de actualización' }
      },
      required: [:id]
    }.freeze
end
