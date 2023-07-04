require 'swagger_helper'

RSpec.describe 'api/certificate_category', type: :request do
  path '/certificate_categories' do
    get 'Lista de Categorias de certificatos' do
      tags 'Categorias Certificados'
      parameter name: :client_id, in: :query, type: :integer, description: 'ID del cliente'
      parameter name: :q, in: :query, type: :string, description: 'Búsqueda por (Nombre)'
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

      response '200', 'Lista de Categorias de certificatos' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/certificate_category' }
        run_test!
      end
    end
  end

  path '/certificate_categories/{id}' do
    get 'Detalle de Categoria de Certificado' do
      tags 'Categorias Certificados'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Categoria de certificato encontrado' do
        schema '$ref' => '#/components/schemas/certificate_category'
        run_test!
      end

      response '404', 'Categoria de certificato no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/certificate_categories' do
    post 'Crear Categoria de Certificado' do
      tags 'Categorias Certificados'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          certificate_category: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              client_id: { type: :integer, description: 'ID del client' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Categoria de Certificado creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/certificate_category' }
               }
        run_test!
      end

      response '422', 'Error al crear Categoria de Certificado' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/certificate_categories/{id}' do
    patch 'Actualizar Categoria de Certificado' do
      tags 'Categorias Certificados'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          certificate_category: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              client_id: { type: :integer, description: 'ID del client' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Categorias Certificados actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/certificate_category' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el certificate category' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Cliente no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/certificate_categories/{id}' do
    delete 'Eliminar Categoria de Certificado' do
      tags 'Categorias Certificados'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Categoria de Certificado eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/certificate_category' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Certificado eliminado' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Certificado eliminado no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
