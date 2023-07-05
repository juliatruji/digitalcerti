require 'swagger_helper'

RSpec.describe 'api/province', type: :request do
  path '/provinces' do
    get 'Lista de Provincias' do
      tags 'Provincias'
      parameter name: :department_id, in: :query, type: :integer, description: 'ID de departamento'
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

      response '200', 'Lista de Departamentos' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/province' }
        run_test!
      end
    end
  end

  path '/provinces/{id}' do
    get 'Detalle de una Provincia' do
      tags 'Provincias'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Provincia encontrado' do
        schema '$ref' => '#/components/schemas/province'
        run_test!
      end

      response '404', 'Provincia no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/provinces' do
    post 'Crear Provincia' do
      tags 'Provincias'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          department_id: { type: :integer, description: 'ID del departamento' },
          name: { type: :string, description: 'Nombre' },
          var_name: { type: :string, description: 'Nombre en el Sistema' }
        }
      }
      security [bearerAuth: []]

      response '200', 'Provincia creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/province' }
               }
        run_test!
      end

      response '422', 'Error al crear Provincia' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/provinces/{id}' do
    patch 'Actualizar Provincia' do
      tags 'Provincias'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          department_id: { type: :integer, description: 'ID del departamento' },
          name: { type: :string, description: 'Nombre' },
          var_name: { type: :string, description: 'Nombre en el Sistema' }
        }
      }
      security [bearerAuth: []]

      response '200', 'Provincia actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/province' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el Provincia' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Provincia no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/provinces/{id}' do
    delete 'Eliminar Provincia' do
      tags 'Provincias'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Provincia eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/province' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Provincia' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Provincia no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
