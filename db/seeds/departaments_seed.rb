country_peru = Country.find_by(name: "Perú")
country_mexico = Country.find_by(name: "México")
country_argentina = Country.find_by(name: "Argentina")
country_colombia = Country.find_by(name: "Colombia")
country_chile = Country.find_by(name: "Chile")
country_ecuador = Country.find_by(name: "Ecuador")
country_guatemala = Country.find_by(name: "Guatemala")
country_espana = Country.find_by(name: "España")
country_uruguay = Country.find_by(name: "Uruguay")
country_costa_rica = Country.find_by(name: "Costa Rica")
country_republica_dominicana = Country.find_by(name: "República Dominicana")
country_bolivia = Country.find_by(name: "Bolivia")
country_venezuela = Country.find_by(name: "Venezuela")

peru_departments = [ "Amazonas", "Ancash", "Apurimac", "Arequipa", "Ayacucho", "Cajamarca", "Callao", "Cusco", "Huancavelica", "Huanuco", "Ica", "Junín", "La Libertad", "Lambayeque", "Lima", "Loreto", "Madre de Dios", "Moquegua", "Pasco", "Piura", "Puno", "San Martín", "Tacna", "Tumbes", "Ucayali" ]
mexico_departments = [ "Aguascalientes", "Baja California", "Baja California Sur", "Campeche", "Chiapas", "Chihuahua", "Ciudad de México", "Coahuila", "Colima", "Durango", "Guanajuato", "Guerrero", "Hidalgo", "Jalisco", "México", "Michoacán", "Morelos", "Nayarit", "Nuevo León", "Oaxaca", "Puebla", "Querétaro", "Quintana Roo", "San Luis Potosí", "Sinaloa", "Sonora", "Tabasco", "Tamaulipas", "Tlaxcala", "Veracruz", "Yucatán", "Zacatecas" ]
argentina_departments = [ "Ciudad Autónoma de Buenos Aires", "Buenos Aires", "Catamarca", "Chaco", "Chubut", "Córdoba", "Corrientes", "Entre Ríos", "Formosa", "Jujuy", "La Pampa", "La Rioja", "Mendoza", "Misiones", "Neuquén", "Río Negro", "Salta", "San Juan", "San Luis", "Santa Cruz", "Santa Fe", "Santiago del Estero", "Tierra del Fuego", "Tucumán" ] 
colombia_departments = [ "Amazonas", "Antioquia", "Arauca", "Atlántico", "Bogotá", "Bolívar", "Boyacá", "Caldas", "Caquetá", "Casanare", "Cauca", "Cesar", "Chocó", "Córdoba", "Cundinamarca", "Guainía", "Guaviare", "Huila", "La Guajira", "Magdalena", "Meta", "Nariño", "Norte de Santander", "Putumayo", "Quindío", "Risaralda", "San Andrés y Providencia", "Santander", "Sucre", "Tolima", "Valle del Cauca", "Vaupés", "Vichada" ]  
chile_departments = [  "Arica y Parinacota",  "Tarapacá",  "Antofagasta",  "Atacama",  "Coquimbo",  "Valparaíso",  "Región Metropolitana de Santiago",  "Libertador General Bernardo O'Higgins",  "Maule",  "Ñuble",  "Biobío",  "La Araucanía",  "Los Ríos",  "Los Lagos",  "Aysén del General Carlos Ibáñez del Campo",  "Magallanes y de la Antártica Chilena"]
ecuador_departments = [ "Azuay", "Bolívar", "Cañar", "Carchi", "Chimborazo", "Cotopaxi", "El Oro", "Esmeraldas", "Galápagos", "Guayas", "Imbabura", "Loja", "Los Ríos", "Manabí", "Morona-Santiago", "Napo", "Orellana", "Pastaza", "Pichincha", "Santa Elena", "Santo Domingo de los Tsáchilas", "Sucumbíos", "Tungurahua", "Zamora-Chinchipe" ]
guatemala_departments = [ "Alta Verapaz", "Baja Verapaz", "Chimaltenago", "Chiquimula", "Guatemala", "El Progreso", "Escuintla", "Huehuetenango", "Izabal", "Jalapa", "Jutiapa", "Petén", "Quetzaltenango", "Quiché", "Retalhuleu", "Sacatepequez", "San Marcos", "Santa Rosa", "Sololá", "Suchitepequez", "Totonicapán", "Zacapa" ]
espana_departments = [ "A Coruña", "Alava", "Albacete", "Alicante", "Almería", "Asturias", "Avila", "Badajoz", "Barcelona", "Burgos", "Cáceres", "Cádiz", "Cantabria", "Castellón", "Ceuta", "Ciudad Real", "Córdoba", "Cuenca", "Formentera", "Girona", "Granada", "Guadalajara", "Guipuzcoa", "Huelva", "Huesca", "Ibiza", "Jaén", "La Rioja", "Las Palmas de Gran Canaria", "León", "Lérida", "Lugo", "Madrid", "Málaga", "Mallorca", "Menorca", "Murcia", "Navarra", "Orense", "Palencia", "Pontevedra", "Salamanca", "Santa Cruz de Tenerife", "Segovia", "Sevilla", "Soria", "Tarragona", "Teruel", "Toledo", "Valencia", "Valladolid", "Vizcaya", "Zamora", "Zaragoza" ]
uruguay_departments = [ "Artigas", "Canelones", "Cerro Largo", "Colonia", "Durazno", "Flores", "Florida", "Lavalleja", "Maldonado", "Montevideo", "Paysandú", "Río Negro", "Rivera", "Rocha", "Salto", "San José", "Soriano", "Tacuarembó", "Treinta y Tres" ]
costa_rica_departments = [ "Alajuela", "Cartago", "Guanacaste", "Heredia", "Limón", "Puntarenas", "San José" ]
republica_dominicana_departments = [ "Azua", "Bahoruco", "Barahona", "Dajabón", "Duarte", "El Seibo", "Elías Piña", "Espaillat", "Hato Mayor", "Hermanas Mirabal", "Independencia", "La Altagracia", "La Romana", "La Vega", "María Trinidad Sánchez", "Monseñor Nouel", "Monte Cristi", "Monte Plata", "Pedernales", "Peravia", "Puerto Plata", "Samaná", "San Cristóbal", "San José de Ocoa", "San Juan", "San Pedro de Macorís", "Sánchez Ramírez", "Santiago", "Santiago Rodríguez", "Santo Domingo", "Valverde", "Distrito Nacional" ]
bolivia_departments = [ "Chuquisaca", "La Paz", "Cochabamba", "Oruro", "Potosí", "Tarija", "Santa Cruz", "Beni", "Pando" ]
venezuela_departments = [ "Amazonas", "Anzoátegui", "Apure", "Aragua", "Barinas", "Bolívar", "Carabobo", "Cojedes", "Delta Amacuro", "Distrito Capital", "Falcón", "Guárico", "Lara", "Mérida", "Miranda", "Monagas", "Nueva Esparta", "Portuguesa", "Sucre", "Táchira", "Trujillo", "Vargas", "Yaracuy", "Zulia" ]

peru_departments.each do |city|
  country_peru.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

mexico_departments.each do |city|
  country_mexico.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

argentina_departments.each do |city|
  country_argentina.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

colombia_departments.each do |city|
  country_colombia.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

chile_departments.each do |city|
  country_chile.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

ecuador_departments.each do |city|
  country_ecuador.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

guatemala_departments.each do |city|
  country_guatemala.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

espana_departments.each do |city|
  country_espana.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

uruguay_departments.each do |city|
  country_uruguay.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

republica_dominicana_departments.each do |city|
  country_republica_dominicana.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

bolivia_departments.each do |city|
  country_bolivia.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

venezuela_departments.each do |city|
  country_venezuela.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end

costa_rica_departments.each do |city|
  country_costa_rica.departments.find_or_create_by(
    name: city,
    var_name: city
  )
end
