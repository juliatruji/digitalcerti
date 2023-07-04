require 'swagger_helper'

RSpec.describe 'api/location', type: :request do
  path '/locations' do
    get 'Lista de Campus' do
      tags 'Campus'
      parameter name: :per_page, in: :query, type: :string, description: 'Cantidad de elementos por página'
      parameter name: :page, in: :query, type: :string, description: 'Página'
      parameter name: :q, in: :query, type: :string,
                description: <<~HEREDOC
                  Búsqueda por:

                    * Nombre del campus
                    * Identification
                    * description
                    * address

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

      response '200', 'Lista de Campus' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/location' }
        run_test!
      end
    end
  end

  path '/locations/{id}' do
    get 'Detalle de un Campus' do
      tags 'Campus'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Campus encontrado' do
        schema '$ref' => '#/components/schemas/location'
        run_test!
      end

      response '404', 'Campus no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/locations' do
    post 'Crear Campus' do
      tags 'Campus'
      consumes 'multipart/form-data'
      parameter name: :location, in: :body, schema: {
        type: :object,
        properties: {
          'geolocation[country_id]': { type: :integer, description: 'ID País' },
          'geolocation[department_id]': { type: :integer, description: 'ID Departamento' },
          'geolocation[province_id]': { type: :integer, description: 'ID Provincia' },
          'geolocation[district_id]': { type: :integer, description: 'ID Distrito' },
          'location[client_id]': { type: :integer, description: 'ID del Cliente' },
          'location[name]': { type: :string, description: 'Nombre' },
          'location[identification]': { type: :string, description: 'Ruc' },
          'location[domain]': { type: :string, description: 'Dominio' },
          'location[description]': { type: :string, description: 'Descripción' },
          'location[address]': { type: :string, description: 'dirección' },
          'location[logo]': { type: :string, format: 'binary', description: 'Archivo de logo jpg jpeg gif png' }
        }
      }
      security [bearerAuth: []]

      response '200', 'campus creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/location' }
               }
        run_test!
      end

      response '422', 'Error al crear Campus' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/locations/{id}' do
    patch 'Actualizar Campus' do
      tags 'Campus'
      consumes 'multipart/form-data'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          'geolocation[country_id]': { type: :integer, description: 'ID País' },
          'geolocation[department_id]': { type: :integer, description: 'ID Departamento' },
          'geolocation[province_id]': { type: :integer, description: 'ID Provincia' },
          'geolocation[district_id]': { type: :integer, description: 'ID Distrito' },
          'location[client_id]': { type: :integer, description: 'ID del Cliente' },
          'location[name]': { type: :string, description: 'Nombre' },
          'location[identification]': { type: :string, description: 'Ruc' },
          'location[domain]': { type: :string, description: 'Dominio' },
          'location[description]': { type: :string, description: 'Descripción' },
          'location[address]': { type: :string, description: 'dirección' },
          'location[logo]': { type: :string, format: 'binary', description: 'Archivo de logo jpg jpeg gif png' }
        }
      }
      security [bearerAuth: []]

      response '200', 'Campus actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/location' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el Campus' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Campus no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/locations/{id}' do
    delete 'Eliminar Campus' do
      tags 'Campus'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Campus eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/location' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Campus' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Campus no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
