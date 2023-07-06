require 'swagger_helper'

RSpec.describe 'api/user_location', type: :request do
  path '/user_locations' do
    get 'Lista de permisos' do
      tags 'Permisos'
      parameter name: :user_id, in: :query, type: :integer, description: 'ID del Usuario'
      parameter name: :location_id, in: :query, type: :integer, description: 'ID de Location'
      parameter name: :per_page, in: :query, type: :string, description: 'Cantidad de elementos por página'
      parameter name: :page, in: :query, type: :string, description: 'Página'
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

      response '200', 'Lista de Permisos' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/user_location' }
        run_test!
      end
    end
  end

  path '/user_locations/{id}' do
    get 'Detalle de un Permiso' do
      tags 'Permisos'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Permiso encontrado' do
        schema '$ref' => '#/components/schemas/user_location'
        run_test!
      end

      response '404', 'Permiso no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/user_locations' do
    post 'Crear Permiso' do
      tags 'Permisos'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          user_location: {
            type: :object,
            properties: {
              user_id: { type: :string, description: 'ID del usuario' },
              location_id: { type: :integer, description: 'ID de location' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'permiso creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/user_location' }
               }
        run_test!
      end

      response '422', 'Error al crear permiso' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/user_locations/{id}' do
    patch 'Actualizar Permiso' do
      tags 'Permisos'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          user_location: {
            type: :object,
            properties: {
              user_id: { type: :string, description: 'ID del usuario' },
              location_id: { type: :integer, description: 'ID de location' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Permiso actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/user_location' }
               }
        run_test!
      end

      response '422', 'Error al actualizar Permiso' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Permiso no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
