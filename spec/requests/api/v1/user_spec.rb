require 'swagger_helper'

RSpec.describe 'api/user', type: :request do
  path '/users' do
    get 'Lista de Usuarios' do
      tags 'Usuarios'
      parameter name: :client_id, in: :query, type: :integer, description: 'ID del cliente'
      parameter name: :active, in: :query, type: :boolean, description: 'Activo e Inactivo'
      parameter name: :user_type, in: :query, type: :string, description: 'Tipo de usuario'
      parameter name: :per_page, in: :query, type: :string, description: 'Cantidad de elementos por página'
      parameter name: :page, in: :query, type: :string, description: 'Página'
      parameter name: :q, in: :query, type: :string,
                description: <<~HEREDOC
                  Búsqueda por:

                    * Nombre
                    * Email

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

      response '200', 'Lista de Usuarios' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/user' }
        run_test!
      end
    end
  end

  path '/users/{id}' do
    get 'Detalle de un Usuario' do
      tags 'Usuarios'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Usuario encontrado' do
        schema '$ref' => '#/components/schemas/user'
        run_test!
      end

      response '404', 'Usuario no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/users' do
    post 'Crear Usuario' do
      tags 'Usuarios'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              email: { type: :string, description: 'Email' },
              phone: { type: :string, description: 'Celular' },
              password: { type: :string, description: 'Contraseña' },
              user_type: { type: :string,
                enum: ['Super_admin', 'location_admin', 'client_admin'],
                description: 'Tipo de usuario' },
              active: { type: :boolean, description: 'Si esta Activo' },
              client_id: { type: :integer, description: 'ID del Cliente' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Usuario creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/user' }
               }
        run_test!
      end

      response '422', 'Error al crear Usuario' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/users/{id}' do
    patch 'Actualizar Usuario' do
      tags 'Usuarios'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              email: { type: :string, description: 'Email' },
              phone: { type: :string, description: 'Celular' },
              password: { type: :string, description: 'Contraseña' },
              user_type: { type: :string,
                enum: ['Super_admin', 'location_admin', 'client_admin'],
                description: 'Tipo de usuario' },
              active: { type: :boolean, description: 'Si esta Activo' },
              client_id: { type: :integer, description: 'ID del Cliente' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Usuario actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/user' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el Usuario' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Usuario no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/users/{id}' do
    delete 'Eliminar Usuario' do
      tags 'Usuarios'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Usuario eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/user' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Usuario' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Usuario no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
