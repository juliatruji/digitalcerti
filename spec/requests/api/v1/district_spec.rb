require 'swagger_helper'

RSpec.describe 'api/district', type: :request do
  path '/districts' do
    get 'Lista de Distritos' do
      tags 'Distritos'
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
        schema type: 'array', items: { '$ref': '#/components/schemas/district' }
        run_test!
      end
    end
  end

  path '/districts/{id}' do
    get 'Detalle de un Distrito' do
      tags 'Distritos'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      security [bearerAuth: []]

      response '200', 'Distrito encontrado' do
        schema '$ref' => '#/components/schemas/district'
        run_test!
      end

      response '404', 'Distrito no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/districts' do
    post 'Crear Distrito' do
      tags 'Distritos'
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          province_id: { type: :integer, description: 'ID de Provincia' },
          name: { type: :string, description: 'Nombre' },
          var_name: { type: :string, description: 'Nombre en el Sistema' }
        }
      }
      security [bearerAuth: []]

      response '200', 'Distrito creado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/district' }
               }
        run_test!
      end

      response '422', 'Error al crear Distrito' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end
    end
  end

  path '/districts/{id}' do
    patch 'Actualizar Distrito' do
      tags 'Distritos'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter in: :body, schema: {
        type: :object,
        properties: {
          province_id: { type: :integer, description: 'ID de Provincia' },
          name: { type: :string, description: 'Nombre' },
          var_name: { type: :string, description: 'Nombre en el Sistema' }
        }
      }
      security [bearerAuth: []]

      response '200', 'Distrito actualizado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/district' }
               }
        run_test!
      end

      response '422', 'Error al actualizar el Distrito' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Distrito no encontrado' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end

  path '/districts/{id}' do
    delete 'Eliminar Distrito' do
      tags 'Distritos'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      security [bearerAuth: []]

      response '200', 'Distrito eliminado' do
        schema type: :object,
               properties: {
                 status: { type: :string, description: 'Estado' },
                 message: { type: :string, description: 'Mensaje o descripción' },
                 data: { '$ref' => '#/components/schemas/district' }
               }
        run_test!
      end

      response '422', 'Error al eliminar Distrito' do
        schema '$ref' => '#/components/schemas/unprocessable_entity'
        run_test!
      end

      response '404', 'Distrito no encontrada' do
        schema '$ref' => '#/components/schemas/not_found'
        run_test!
      end
    end
  end
end
