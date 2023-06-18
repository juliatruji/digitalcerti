require 'swagger_helper'

RSpec.describe 'api/country', type: :request do
  path '/countries' do
    get 'Lista de Paises' do
      tags 'Paises'
      parameter name: :per_page, in: :query, type: :string, description: 'Cantidad de elementos por página'
      parameter name: :page, in: :query, type: :string, description: 'Página'
      parameter name: :q, in: :query, type: :string,
                description: <<~HEREDOC
                  Búsqueda por:

                    * Nombre de Depositante

                HEREDOC
      parameter name: :from,
                in: :query,
                schema: { type: :string, format: :date },
                description: 'Rango: Fecha Inicial'
      parameter name: :to,
                in: :query,
                schema: { type: :string, format: :date },
                description: 'Rango: Fecha Final'
      parameter name: :filter_range_date,
                in: :query,
                schema: { type: :string,
                          enum: ['created_at', 'updated_at', 'start_date', 'end_date'] },
                description: <<~HEREDOC
                  Rango: Usar

                    * **[created_at]** Fechas de Creación de los Registros <small>*(Por defecto)*</small>
                    * **[updated_at]** Fechas de Actualización de los Registros

                HEREDOC
      parameter name: :sort,
                in: :query,
                schema: { type: :string,
                          enum: ['created_at:desc', 'created_at:asc', 'updated_at:desc', 'updated_at:asc'] },
                description: <<~HEREDOC
                  #### Ordenar:

                    * **[created_at:desc]** Últimos creados al inicio
                    * **[created_at:asc]** Últimos creados al final
                    * **[updated_at:desc]** Últimos actualizados al inicio
                    * **[updated_at:asc]** Últimos actualizados al final

                HEREDOC
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Lista de Paises' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/country' }
        run_test!
      end
    end
  end

  path '/countries/{id}' do
    get 'Detalle de un País' do
      tags 'Paises'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'País encontrado' do
        schema '$ref' => '#/components/schemas/country'
        run_test!
      end

      response '404', 'País no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/countries' do
    post 'Crear País' do
      tags 'Paises'
      consumes 'multipart/form-data'
      parameter name: :country, in: :body, schema: {
        type: :object,
        properties: {
          'country[name]': { type: :string, description: 'Nombre' },
          'country[banner]': { type: :string, format: 'binary', description: 'Archivo de Foto jpg jpeg gif png' },
          'country[iso]': { type: :string, description: 'Iso' },
          'country[var_name]': { type: :string, description: 'Nombre en el Sistema' },
          'country[code_phone]': { type: :string, description: 'Código celular' },
          'country[language]': { type: :string, description: 'Idioma' },
          'country[code]': { type: :string, description: 'Código' },
          'country[capital]': { type: :string, description: 'Capital' }
        }
      }
      security [bearerAuth: []]

      response '200', 'País creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/country' }
               }
        run_test!
      end

      response '422', 'Error al crear País' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/countries/{id}' do
    delete 'Eliminar País' do
      tags 'Paises'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'País eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/country' }
               }
        run_test!
      end

      response '422', 'Error al eliminar País' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'País no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
