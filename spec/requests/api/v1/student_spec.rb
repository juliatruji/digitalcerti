require 'swagger_helper'

RSpec.describe 'api/student', type: :request do
  path '/students' do
    get 'Lista de Estudiantes' do
      tags 'Estudiantes'
      parameter name: :location_id, in: :query, type: :integer, description: 'ID del Campus'
      parameter name: :q, in: :query, type: :string, description: 'Búsqueda por (Nombre, Correo, Telefono, Identificacion)'
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

      response '200', 'Lista de estudiantes' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/student' }
        run_test!
      end
    end
  end

  path '/students/{id}' do
    get 'Detalle de un Estudiante' do
      tags 'Estudiantes'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Estudiante encontrado' do
        schema '$ref' => '#/components/schemas/student'
        run_test!
      end

      response '404', 'Estudiante no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/students' do
    post 'Crear Estudiante' do
      tags 'Estudiantes'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          student: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              email: { type: :string, description: 'Correo' },
              phone: { type: :string, description: 'Telefono' },
              identification: { type: :string, description: 'Identificación' },
              address: { type: :string, description: 'Dirección' },
              location_id: { type: :integer, description: 'ID de location' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Estudiante creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/student' }
               }
        run_test!
      end

      response '422', 'Error al crear Estudiante' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/students/{id}' do
    patch 'Actualizar Estudiante' do
      tags 'Estudiantes'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          student: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              email: { type: :string, description: 'Correo'},
              phone: { type: :string, description: 'Telefono' },
              identification: { type: :string, description: 'Identificación' },
              address: { type: :string, description: 'Dirección' },
              location_id: { type: :integer, description: 'ID de location' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Estudiante actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/student' }
               }
        run_test!
      end

      response '422', 'Error al actualizar Estudiante' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Estudiante no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/students/{id}' do
    delete 'Eliminar Estudiante' do
      tags 'Estudiantes'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Estudiante eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/student' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Estudiante' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Estudiante no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
