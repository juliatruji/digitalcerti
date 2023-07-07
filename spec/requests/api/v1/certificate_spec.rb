require 'swagger_helper'

RSpec.describe 'api/certificate', type: :request do
  path '/certificates' do
    get 'Lista de Certificados' do
      tags 'Certificados'
      parameter name: :location_id, in: :query, type: :integer, description: 'ID del Campus'
      parameter name: :certificate_category_id, in: :query, type: :integer, description: 'ID de Categoria de certificado'
      parameter name: :q, in: :query, type: :string, description: 'Búsqueda por (Nombre, Record Folio)'
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

      response '200', 'Lista de certificados' do
        header 'Per-page', type: 'integer', description: 'Total de elementos por página'
        header 'Total', type: 'integer', description: 'Total de elementos'
        schema type: 'array', items: { '$ref': '#/components/schemas/certificate' }
        run_test!
      end
    end
  end

  path '/certificates/{id}' do
    get 'Detalle de un Certificado' do
      tags 'Certificados'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Certificado encontrado' do
        schema '$ref' => '#/components/schemas/certificate'
        run_test!
      end

      response '404', 'Certificado no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/certificates' do
    post 'Crear Certificado' do
      tags 'Certificados'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          certificate: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              folio: { type: :string, description: 'Folio' },
              register: { type: :string, description: 'Registro' },
              description: { type: :string, description: 'Descripcion' },
              location_id: { type: :integer, description: 'ID de location' },
              certificate_category_id: { type: :integer, description: 'ID de Categoria de Certificado' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Certificado creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/certificate' }
               }
        run_test!
      end

      response '422', 'Error al crear certificado' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/certificates/{id}' do
    patch 'Actualizar Certificado' do
      tags 'Certificados'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          certificate: {
            type: :object,
            properties: {
              name: { type: :string, description: 'Nombre' },
              folio: { type: :string, description: 'Folio' },
              register: { type: :string, description: 'Register' },
              description: { type: :string, description: 'Descripcion' },
              location_id: { type: :integer, description: 'ID de location' },
              certificate_category_id: { type: :integer, description: 'ID de Categoria de Certificado' }
            }
          }
        }
      }
      security [bearerAuth: []]

      response '200', 'Certificado actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/certificate' }
               }
        run_test!
      end

      response '422', 'Error al actualizar Certificado' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Certificado no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/certificates/{id}' do
    delete 'Eliminar Certificado' do
      tags 'Certificados'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Certificado eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/certificate' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Certificado' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Certificado no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
