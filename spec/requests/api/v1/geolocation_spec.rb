require 'swagger_helper'

RSpec.describe 'api/geolocation', type: :request do
  path '/geolocations' do
    get 'Lista de Ubicaciones' do
      tags 'Ubicaciones'
      parameter name: :country_id, in: :query, type: :integer, description: 'ID del País'
      parameter name: :department_id, in: :query, type: :integer, description: 'ID del Departamento'
      parameter name: :province_id, in: :query, type: :integer, description: 'ID de Provincia'
      parameter name: :district_id, in: :query, type: :integer, description: 'ID de Distrito'
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

      response '200', 'Lista de Ubicaciones' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/geolocation' }
        run_test!
      end
    end
  end

  path '/geolocations/{id}' do
    get 'Detalle de una Ubicacion' do
      tags 'Ubicaciones'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Ubicacion encontrado' do
        schema '$ref' => '#/components/schemas/geolocation'
        run_test!
      end

      response '404', 'Ubicacion no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/geolocations' do
    post 'Crear Ubicacion' do
      tags 'Ubicaciones'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          geolocation: {
            type: :object,
            properties: {
              country_id: { type: :integer, description: 'ID País' },
              department_id: { type: :integer, description: 'ID Departamento' },
              province_id: { type: :integer, description: 'ID Provincia' },
              district_id: { type: :integer, description: 'ID Distrito' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Ubicacion creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/geolocation' }
               }
        run_test!
      end

      response '422', 'Error al crear Ubicacion' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/geolocations/{id}' do
    patch 'Actualizar Ubicaciones' do
      tags 'Ubicaciones'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          geolocation: {
            type: :object,
            properties: {
              country_id: { type: :integer, description: 'ID País' },
              department_id: { type: :integer, description: 'ID Departamento' },
              province_id: { type: :integer, description: 'ID Provincia' },
              district_id: { type: :integer, description: 'ID Distrito' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Ubicacion actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/geolocation' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el Ubicacion' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Ubicacion no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/geolocations/{id}' do
    delete 'Eliminar Ubicacion' do
      tags 'Ubicaciones'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Ubicacion eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/geolocation' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Ubicacion' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Ubicacion eliminado no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
