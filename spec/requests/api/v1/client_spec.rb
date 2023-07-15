require 'swagger_helper'

RSpec.describe 'api/client', type: :request do
  path '/clients' do
    get 'Lista de Clientes' do
      tags 'Clientes'
      parameter name: :country_id, in: :query, type: :integer, description: 'ID del País'
      parameter name: :department_id, in: :query, type: :integer, description: 'ID del Departamento'
      parameter name: :province_id, in: :query, type: :integer, description: 'ID de Provincia'
      parameter name: :district_id, in: :query, type: :integer, description: 'ID de Distrito'
      parameter name: :active, in: :query, type: :boolean, description: 'Activo e Inactivo'
      parameter name: :q, in: :query, type: :string, description: 'Búsqueda por (Nombre, Nombre Legal, ID legal y descripción)'
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

      response '200', 'Lista de Clientes' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/client' }
        run_test!
      end
    end
  end

  path '/clients/{id}' do
    get 'Detalle de un Cliente' do
      tags 'Clientes'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Cliente encontrado' do
        schema '$ref' => '#/components/schemas/client'
        run_test!
      end

      response '404', 'Cliente no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/clients' do
    post 'Crear Cliente' do
      tags 'Clientes'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          geolocation: {
            type: :object,
            properties: {
              country_id: { type: :integer, description: 'País' },
              department_id: { type: :integer, description: 'Departamento' },
              province_id: { type: :integer, description: 'Provincia' },
              district_id: { type: :integer, description: 'Distrito' }
            }
          },

          client: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              phone: { type: :string, description: 'Telefono' },
              email: { type: :string, description: 'Correo' },
              address: { type: :string, description: 'Dirección' },
              slug: { type: :string, description: 'URL' },
              tradename: { type: :string, description: 'Nombre Comercial' },
              description: { type: :string, description: 'Descripción' },
              identification: { type: :string, description: 'RUC o Identificación' },
              logo: { type: :string, description: 'Logo' },
              active: { type: :string, description: 'Si esta Activo' },
              domain: { type: :string, description: 'Dominio' },
              banner: { type: :string, description: 'Banner' },
              social: {
                type: :object,
                properties: {
                  facebook: { type: :string, description: 'Facebook' },
                  twitter: { type: :string, description: 'Twitter' },
                  instagram: { type: :string, description: 'Instagram' }
                }
              },
              website: { type: :string, description: 'Sitio Web' },
              colors: {
                type: :object,
                properties: {
                  primary: { type: :string, description: 'Color primario' },
                  secondary: { type: :string, description: 'Color secundario' },
                  tertiary: { type: :string, description: 'Color terciario' }
                }
              }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Cliente creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/client' }
               }
        run_test!
      end

      response '422', 'Error al crear Cliente' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/clients/{id}' do
    patch 'Actualizar Cliente' do
      tags 'Clientes'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          geolocation: {
            type: :object,
            properties: {
              country_id: { type: :integer, description: 'País' },
              department_id: { type: :integer, description: 'Departamento' },
              province_id: { type: :integer, description: 'Provincia' },
              district_id: { type: :integer, description: 'Distrito' }
            }
          },
          client: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              phone: { type: :string, description: 'Telefono' },
              email: { type: :string, description: 'Correo' },
              address: { type: :string, description: 'Dirección' },
              slug: { type: :string, description: 'URL' },
              tradename: { type: :string, description: 'Nombre Comercial' },
              description: { type: :string, description: 'Descripción' },
              identification: { type: :string, description: 'RUC o Identificación' },
              logo: { type: :string, description: 'Logo' },
              active: { type: :string, description: 'Si esta Activo' },
              domain: { type: :string, description: 'Dominio' },
              banner: { type: :string, description: 'Banner' },
              social: {
                type: :object,
                properties: {
                  facebook: { type: :string, description: 'Facebook' },
                  twitter: { type: :string, description: 'Twitter' },
                  instagram: { type: :string, description: 'Instagram' }
                }
              },
              website: { type: :string, description: 'Sitio Web' },
              colors: {
                type: :object,
                properties: {
                  primary: { type: :string, description: 'Color primario' },
                  secondary: { type: :string, description: 'Color secundario' },
                  tertiary: { type: :string, description: 'Color terciario' }
                }
              }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Cliente actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/client' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el Cliente' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Cliente no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/clients/{id}' do
    delete 'Eliminar Cliente' do
      tags 'Clientes'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Cliente eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/client' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Cliente' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Cliente no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
