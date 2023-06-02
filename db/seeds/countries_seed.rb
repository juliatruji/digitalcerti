countries = [
  {
    name: 'Argentina',
    code: 'AR',
    iso: 'ARG',
    var_name: 'República Argentina',
    code_phone: '+54',
    language: 'Español',
    capital: 'Buenos Aires'
  },
  {
    name: 'Brasil',
    code: 'BR',
    iso: 'BRA',
    var_name: 'República Federativa do Brasil',
    code_phone: '+55',
    language: 'Portugués',
    capital: 'Brasilia'
  },
  {
    name: 'Canadá',
    code: 'CA',
    iso: 'CAN',
    var_name: 'Canadá',
    code_phone: '+1',
    language: 'Inglés, Francés',
    capital: 'Ottawa'
  },
  {
    name: 'México',
    code: 'MX',
    iso: 'MEX',
    var_name: 'Estados Unidos Mexicanos',
    code_phone: '+52',
    language: 'Español',
    capital: 'Ciudad de México'
  },
  {
    name: 'Colombia',
    code: 'CO',
    iso: 'COL',
    var_name: 'República de Colombia',
    code_phone: '+57',
    language: 'Español',
    capital: 'Bogotá'
  },
  {
    name: 'Ecuador',
    code: 'EC',
    iso: 'ECU',
    var_name: 'República del Ecuador',
    code_phone: '+593',
    language: 'Español',
    capital: 'Quito'
  },
  {
    name: 'Bolivia',
    code: 'BO',
    iso: 'BOL',
    var_name: 'Estado Plurinacional de Bolivia',
    code_phone: '+591',
    language: 'Español',
    capital: 'Sucre (sede constitucional) / La Paz (sede del gobierno)'
  },
  {
    name: 'Guatemala',
    code: 'GT',
    iso: 'GTM',
    var_name: 'República de Guatemala',
    code_phone: '+502',
    language: 'Español',
    capital: 'Ciudad de Guatemala'
  },
  {
    name: 'España',
    code: 'ES',
    iso: 'ESP',
    var_name: 'Reino de España',
    code_phone: '+34',
    language: 'Español',
    capital: 'Madrid'
  },
  {
    name: 'Uruguay',
    code: 'UY',
    iso: 'URY',
    var_name: 'República Oriental del Uruguay',
    code_phone: '+598',
    language: 'Español',
    capital: 'Montevideo'
  },
  {
    name: 'Venezuela',
    code: 'VE',
    iso: 'VEN',
    var_name: 'República Bolivariana de Venezuela',
    code_phone: '+58',
    language: 'Español',
    capital: 'Caracas'
  },
  {
    name: 'República Dominicana',
    code: 'DO',
    iso: 'DOM',
    var_name: 'República Dominicana',
    code_phone: '+1',
    language: 'Español',
    capital: 'Santo Domingo'
  },
  {
    name: 'Chile',
    code: 'CL',
    iso: 'CHL',
    var_name: 'República de Chile',
    code_phone: '+56',
    language: 'Español',
    capital: 'Santiago'
  },
  {
    name: 'Perú',
    code: 'PE',
    iso: 'PER',
    var_name: 'República del Perú',
    code_phone: '+51',
    language: 'Español',
    capital: 'Lima'
  },
  {
    name: 'Costa Rica',
    code: 'CR',
    iso: 'CRI',
    var_name: 'República de Costa Rica',
    code_phone: '+506',
    language: 'Español',
    capital: 'San José'
  }

]
countries.each do |country|
  Country.find_or_create_by(country)
end
