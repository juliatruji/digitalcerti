require 'swagger_helper'

RSpec.describe 'api/department', type: :request do
  path '/departments' do
    get 'Lista de Departamentos' do
      tags 'Departamentos'
      parameter name: :country_id, in: :query, type: :integer, description: 'ID del pais'
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
        schema type: 'array', items: { '$ref': '#/components/schemas/department' }
        run_test!
      end
    end
  end

  path '/departments/{id}' do
    get 'Detalle de un Departamento' do
      tags 'Departamentos'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Departamento encontrado' do
        schema '$ref' => '#/components/schemas/department'
        run_test!
      end

      response '404', 'Departamento no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/departments' do
    post 'Crear Departamento' do
      tags 'Departamentos'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          country_id: { type: :integer, description: 'ID del país' },
          name: { type: :string, description: 'Nombre' },
          var_name: { type: :string, description: 'Nombre en el Sistema' }
        }
      }
      security [bearerAuth: []]

      response '200', 'Departamento creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/department' }
               }
        run_test!
      end

      response '422', 'Error al crear Departamento' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/departments/{id}' do
    patch 'Actualizar Departamento' do
      tags 'Departamentos'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          country_id: { type: :integer, description: 'ID del país' },
          name: { type: :string, description: 'Nombre' },
          var_name: { type: :string, description: 'Nombre en el Sistema' }
        }
      }
      security [bearerAuth: []]

      response '200', 'Departamento actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/department' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el Departamento' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Departamento no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/departments/{id}' do
    delete 'Eliminar Departamento' do
      tags 'Departamentos'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Departamento eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/department' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Departamento' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Departamento no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
