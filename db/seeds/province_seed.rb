department_amazonas = Department.find_by(name: "Amazonas")
department_ancash = Department.find_by(name: "Ancash")
department_apurimac = Department.find_by(name: "Apurimac")
department_arequipa = Department.find_by(name: "Arequipa")
department_ayacucho = Department.find_by(name: "Ayacucho")
department_cajamarca = Department.find_by(name: "Cajamarca")
department_cusco = Department.find_by(name: "Cusco")
department_huancavelica = Department.find_by(name: "Huancavelica")
department_huanuco = Department.find_by(name: "Huanuco")
department_ica = Department.find_by(name: "Ica")
department_junin = Department.find_by(name: "Junín")
department_libertad = Department.find_by(name: "La Libertad")
department_lambayeque = Department.find_by(name: "Lambayeque")
department_lima = Department.find_by(name: "Lima")
department_loreto = Department.find_by(name: "Loreto")
department_madre_dios = Department.find_by(name: "Madre de Dios")
department_moquegua = Department.find_by(name: "Moquegua")
department_pasco = Department.find_by(name: "Pasco")
department_piura = Department.find_by(name: "Piura")
department_puno = Department.find_by(name: "Puno")
department_martin = Department.find_by(name: "San Martín")
department_tacna = Department.find_by(name: "Tacna")
department_tumbes = Department.find_by(name: "Tumbes")
department_ucayali = Department.find_by(name: "Ucayali")

amazonas_provinces = [ "Chachapoyas", "Bagua", "Bongará", "Luya", "Condorcanqui", "Utcubamba", "Rodríguez de Mendoza" ]
ancash_provinces = [ "Huaraz", "Aija", "Antonio Raimondi", "Asunción", "Bolognesi", "Carhuaz", "Carlos Fermín Fitzcarrald", "Casma", "Corongo", "Huari", "Huarmey", "Huaylas", "Mariscal Luzuriaga", "Ocros", "Pallasca", "Pomabamba", "Recuay", "Santa", "Sihuas", "Yungay" ]
apurimac_provinces = [ "Abancay", "Andahuaylas", "Antabamba", "Aymaraes", "Cotabambas", "Chincheros", "Grau" ]
arequipa_provinces = [ "Arequipa", "Camaná", "Caravelí", "Castilla", "Caylloma", "Condesuyos", "Islay", "La Unión" ]
ayacucho_provinces = [ "Huamanga", "Cangallo", "Huanca Sancos", "Huanta", "La Mar", "Lucanas", "Parinacochas", "Páucar del Sara Sara", "Sucre", "Víctor Fajardo", "Vilcas Huamán" ]
cajamarca_provinces = [ "Cajamarca", "Cajabamba", "Celendín", "Chota", "Contumazá", "Cutervo", "Hualgayoc", "Jaén", "San Ignacio", "San Marcos", "San Miguel", "San Pablo", "Santa Cruz" ]
cusco_provinces = [ "Cusco", "Acomayo", "Anta", "Calca", "Canas", "Canchis", "Chumbivilcas", "Espinar", "La Convención", "Paruro", "Paucartambo", "Quispicanchi", "Urubamba" ]
huanuco_provinces = [ "Huánuco", "Ambo", "Dos de Mayo", "Huacaybamba", "Huamalíes", "Leoncio Prado", "Marañón", "Pachitea", "Puerto Inca", "Lauricocha", "Yarowilca" ]
ica_provinces = [ "Ica", "Chincha", "Nazca", "Palpa", "Pisco" ]
junin_provinces = [ "Huancayo", "Concepción", "Chanchamayo", "Jauja", "Tarma", "Yauli", "Chupaca" ]
la_libertad_provinces = [ "Trujillo", "Ascope", "Bolívar", "Chepén", "Julcán", "Otuzco", "Pacasmayo", "Pataz", "Sánchez Carrión", "Santiago de Chuco", "Gran Chimú", "Virú" ]
lambayeque_provinces = [ "Chiclayo", "Ferreñafe", "Lambayeque" ]
lima_provinces = [ "Lima", "Barranca", "Cajatambo", "Canta", "Cañete", "Huaral", "Huarochirí", "Huaura", "Oyón", "Yauyos" ]
loreto_provinces = [ "Maynas", "Alto Amazonas", "Loreto", "Mariscal Ramón Castilla", "Requena", "Ucayali", "Datem del Marañón", "Putumayo", "Tahuamanu" ]
madre_de_dios_provinces = [ "Tambopata", "Manu", "Tahuamanu" ]
moquegua_provinces = [ "Mariscal Nieto", "General Sánchez Cerro", "Ilo" ]
pasco_provinces = [ "Pasco", "Daniel Alcides Carrión", "Oxapampa" ]
piura_provinces = [ "Piura", "Ayabaca", "Huancabamba", "Morropón", "Paita", "Sullana", "Talara", "Sechura" ]
puno_provinces = [ "Puno", "Azángaro", "Carabaya", "Chucuito", "El Collao", "Huancané", "Lampa", "Melgar", "Moho", "San Antonio de Putina", "San Román", "Sandia", "Yunguyo" ]
san_martin_provinces = [ "Moyobamba", "Bellavista", "El Dorado", "Huallaga", "Lamas", "Mariscal Cáceres", "Picota", "Rioja", "San Martín", "Tocache" ]
tacna_provinces = [ "Tacna", "Candarave", "Jorge Basadre", "Tarata" ]
tumbes_provinces = [ "Tumbes", "Contralmirante Villar", "Zarumilla" ]
ucayali_provinces = [ "Coronel Portillo", "Atalaya", "Padre Abad", "Purús" ]
huancavelica_provinces = [ "Huancavelica", "Acobamba", "Angaraes", "Castrovirreyna", "Churcampa", "Huaytará", "Tayacaja" ]

amazonas_provinces.each do |province|
  department_amazonas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

ancash_provinces.each do |province|
  department_ancash.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

apurimac_provinces.each do |province|
  department_apurimac.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

arequipa_provinces.each do |province|
  department_arequipa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

ayacucho_provinces.each do |province|
  department_ayacucho.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cajamarca_provinces.each do |province|
  department_cajamarca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cusco_provinces.each do |province|
  department_cusco.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

ica_provinces.each do |province|
  department_ica.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

junin_provinces.each do |province|
  department_junin.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

la_libertad_provinces.each do |province|
  department_junin.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

junin_provinces.each do |province|
  department_libertad.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

lambayeque_provinces.each do |province|
  department_lambayeque.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

lima_provinces.each do |province|
  department_lima.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

loreto_provinces.each do |province|
  department_loreto.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

madre_de_dios_provinces.each do |province|
  department_madre_dios.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

moquegua_provinces.each do |province|
  department_moquegua.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

pasco_provinces.each do |province|
  department_pasco.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

piura_provinces.each do |province|
  department_piura.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

puno_provinces.each do |province|
  department_puno.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

san_martin_provinces.each do |province|
  department_martin.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tacna_provinces.each do |province|
  department_tacna.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tumbes_provinces.each do |province|
  department_tumbes.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

ucayali_provinces.each do |province|
  department_ucayali.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

department_huanuco.each do |province|
  huanuco_provinces.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

department_huancavelica.each do |province|
  huancavelica_provinces.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Mexico
department_baja_california = Department.find_by(name: "Baja California")
department_baja_california_sur = Department.find_by(name: "Baja California Sur")
department_campeche = Department.find_by(name: "Campeche")
department_chiapas = Department.find_by(name: "Chiapas")
department_chihuahua = Department.find_by(name: "Chihuahua")
department_ciudad_de_mexico = Department.find_by(name: "Ciudad de México")
department_coahuila = Department.find_by(name: "Coahuila")
department_colima = Department.find_by(name: "Colima")
department_durango = Department.find_by(name: "Durango")
department_guanajuato = Department.find_by(name: "Guanajuato")
department_guerrero = Department.find_by(name: "Guerrero")
department_hidalgo = Department.find_by(name: "Hidalgo")
department_jalisco = Department.find_by(name: "Jalisco")
department_michoacan = Department.find_by(name: "Michoacán")
department_morelos = Department.find_by(name: "Morelos")
department_nayarit = Department.find_by(name: "Nayarit")
department_nuevo_leon = Department.find_by(name: "Nuevo León")
department_oaxaca = Department.find_by(name: "Oaxaca")
department_puebla = Department.find_by(name: "Puebla")
department_queretaro = Department.find_by(name: "Querétaro")
department_quintana_roo = Department.find_by(name: "Quintana Roo")
department_san_luis_potosi = Department.find_by(name: "San Luis Potosí")
department_sinaloa = Department.find_by(name: "Sinaloa")
department_sonora = Department.find_by(name: "Sonora")
department_tabasco = Department.find_by(name: "Tabasco")
department_tamaulipas = Department.find_by(name: "Tamaulipas")
department_tlaxcala = Department.find_by(name: "Tlaxcala")
department_veracruz = Department.find_by(name: "Veracruz")
department_yucatan = Department.find_by(name: "Yucatán")
department_zacatecas = Department.find_by(name: "Zacatecas")

baja_california_provinces = [ "Ensenada", "Mexicali", "Playas de Rosarito", "Tecate", "Tijuana" ]
baja_california_sur_provinces = [ "Comondú", "La Paz", "Loreto", "Los Cabos", "Mulegé" ]
campeche_provinces = [ "Campeche", "Calkiní", "Carmen", "Champotón", "Hecelchakán", "Hopelchén", "Palizada", "Tenabo", "Escárcega", "Calakmul", "Candelaria" ]
chiapas_provinces = [ "Tuxtla Gutiérrez", "Tapachula", "San Cristóbal de las Casas", "Comitán de Domínguez", "Villaflores", "Huixtla", "Tonalá", "Palenque", "Cintalapa", "Ocosingo", "Berriozábal", "Motozintla", "Pichucalco", "Venustiano Carranza", "Arriaga", "Reforma", "Yajalón", "Bochil", "Tila", "Salto de Agua", "Mapastepec", "Amatenango del Valle", "Tuxtla Chico", "Simojovel", "Chiapa de Corzo", "Tumbalá", "Pueblo Nuevo Solistahuacán", "Chicomuselo", "Acapetahua", "Francisco León", "Chenalhó", "Jiquipilas", "Siltepec", "Teopisca", "Suchiate", "Larráinzar", "La Trinitaria", "Chamula", "Ángel Albino Corzo", "Ocozocoautla de Espinosa", "El Parral", "Zinacantán", "Ostuacán", "Ixtapa", "Frontera Comalapa", "Pantelhó", "Copainalá", "Villa Comaltitlán", "Soyaló", "Tapalapa", "Rayón", "Mazatán", "Emiliano Zapata", "Escuintla", "Montecristo de Guerrero", "Ángel Rosales Córdova", "Benemérito de las Américas", "Chapultenango", "Maravilla Tenejapa", "Lázaro Cárdenas", "Pueblo Nuevo", "El Bosque", "Chalchihuitán", "Pantepec", "Ixtapangajoya", "Chanal", "Marqués de Comillas", "Sabanilla", "Tapilula", "El Porvenir", "Amatán", "Solosuchiapa", "Santiago el Pinar", "Tzimol", "Oxchuc", "San Lucas", "Jitotol", "Bella Vista", "Simón Sarlat", "La Independencia", "Ocotepec", "Chapultón", "Angel Albino Corzo", "Acacoyagua", "Villa Corzo", "Acala", "San Fernando", "El Parral", "Bejucal de Ocampo", "Acapetahua", "Mazapa de Madero", "La Grandeza", "Ángel Albino Corzo", "Motozintla", "San Juan Cancuc", "San Andrés Duraznal", "Santiago el Pinar", "Tzimol", "Ángel Albino Corzo", "El Bosque" ]
chihuahua_provinces = [ "Chihuahua", "Juárez", "Hidalgo del Parral", "Delicias", "Cuauhtémoc", "Nuevo Casas Grandes", "Camargo", "Jiménez", "Ojinaga", "Meoqui", "Parral", "Guachochi", "Saucillo", "Guerrero", "Bocoyna", "Madera", "Namiquipa", "Janos", "Ascensión", "Santa Bárbara", "Rosales", "Ahumada", "Guadalupe y Calvo", "Aquiles Serdán", "Urique", "Buenaventura", "Allende", "Gómez Farías", "Casas Grandes", "Julimes", "Riva Palacio", "Carichí", "Bachíniva", "Temósachic", "Ignacio Zaragoza", "Guazapares", "Balleza", "López", "San Francisco de Borja", "Gran Morelos", "Galeana", "Coronado", "Matamoros", "Guadalupe", "Nonoava", "Morelos", "San Francisco del Oro", "Guadalupe y Calvo", "Aldama", "Ocampo", "Rosario", "Moris", "Praxedis G. Guerrero", "Batopilas", "Guachochi", "Chínipas", "Uruachi", "Carichí", "Guazapares", "Maguarichi", "Cusihuiriachi", "Santa Isabel", "Temósachic", "Matamoros", "Balleza", "Bocoyna", "Guadalupe y Calvo", "Guerrero", "Madera", "Rosales", "San Francisco de Borja", "El Tule", "Galeana", "Santa Bárbara", "Namiquipa", "Allende", "López", "San Francisco del Oro", "Cusihuiriachi", "Nonoava", "Aldama", "Janos", "Belisario Domínguez", "Ocampo", "Ignacio Zaragoza", "Temósachic", "Casas Grandes", "Chínipas", "Rosario", "San Francisco de Conchos", "Julimes", "Guazapares", "Moris", "Carichí", "Morelos", "Bachíniva", "La Cruz", "San Francisco del Oro", "Balleza", "Santa Isabel" ]
ciudad_de_mexico_provinces = [ "Álvaro Obregón", "Azcapotzalco", "Benito Juárez", "Coyoacán", "Cuajimalpa de Morelos", "Cuauhtémoc", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", "Miguel Hidalgo", "Milpa Alta", "Tláhuac", "Tlalpan", "Venustiano Carranza", "Xochimilco" ]
coahuila_provinces = [ "Abasolo", "Acuña", "Allende", "Arteaga", "Candela", "Castaños", "Cuatro Ciénegas", "Escobedo", "Francisco I. Madero", "Frontera", "General Cepeda", "Guerrero", "Hidalgo", "Jiménez", "Juárez", "Lamadrid", "Matamoros", "Monclova", "Morelos", "Múzquiz", "Nadadores", "Nava", "Ocampo", "Parras", "Piedras Negras", "Progreso", "Ramos Arizpe", "Sabinas", "Sacramento", "Saltillo", "San Buenaventura", "San Juan de Sabinas", "San Pedro", "Sierra Mojada", "Torreón", "Viesca", "Villa Unión", "Zaragoza" ]
colima_provinces = [ "Armería", "Colima", "Comala", "Coquimatlán", "Cuauhtémoc", "Ixtlahuacán", "Manzanillo", "Minatitlán", "Tecomán", "Villa de Álvarez" ]
durango_provinces = [ "Canatlán", "Canelas", "Coneto de Comonfort", "Cuencamé", "Durango", "El Oro", "General Simón Bolívar", "General Francisco Villa", "Guadalupe Victoria", "Gómez Palacio", "Hidalgo", "Indé", "Lerdo", "Mapimí", "Mezquital", "Nazas", "Nombre de Dios", "Ocampo", "Otáez", "Pánuco de Coronado", "Peñón Blanco", "Poanas", "Pueblo Nuevo", "Rodeo", "San Bernardo", "San Dimas", "San Juan de Guadalupe", "San Juan del Río", "San Luis del Cordero", "San Pedro del Gallo", "Santa Clara", "Santiago Papasquiaro", "Súchil", "Tamazula", "Tepehuanes", "Tlahualilo", "Topia", "Vicente Guerrero", "Nuevo Ideal" ]
guanajuato_provinces = [ "Abasolo", "Acámbaro", "Apaseo el Alto", "Apaseo el Grande", "Atarjea", "Celaya", "Comonfort", "Coroneo", "Cortazar", "Cuerámaro", "Doctor Mora", "Dolores Hidalgo Cuna de la Independencia Nacional", "Guanajuato", "Huanímaro", "Irapuato", "Jaral del Progreso", "Jerécuaro", "León", "Manuel Doblado", "Moroleón", "Ocampo", "Pénjamo", "Pueblo Nuevo", "Purísima del Rincón", "Romita", "Salamanca", "Salvatierra", "San Diego de la Unión", "San Felipe", "San Francisco del Rincón", "San José Iturbide", "San Luis de la Paz", "Santa Catarina", "Santa Cruz de Juventino Rosas", "Santiago Maravatío", "Silao", "Tarandacuao", "Tarimoro", "Tierra Blanca", "Uriangato", "Valle de Santiago", "Victoria", "Villagrán", "Xichú", "Yuriria" ]
guerrero_provinces = [ "Acapulco de Juárez", "Acatepec", "Ahuacuotzingo", "Ajuchitlán del Progreso", "Alcozauca de Guerrero", "Alpoyeca", "Apaxtla de Castrejón", "Arcelia", "Atenango del Río", "Atlixtac", "Atoyac de Álvarez", "Ayutla de los Libres", "Azoyú", "Benito Juárez", "Buenavista de Cuéllar", "Chilapa de Álvarez", "Chilpancingo de los Bravo", "Coahuayutla de José María Izazaga", "Cocula", "Copala", "Copalillo", "Copanatoyac", "Coyuca de Benítez", "Coyuca de Catalán", "Cuajinicuilapa", "Cualác", "Cuautepec", "Cuetzala del Progreso", "Cutzamala de Pinzón", "Eduardo Neri", "Florencio Villarreal", "General Canuto A. Neri", "General Heliodoro Castillo", "Huamuxtitlán", "Huitzuco de los Figueroa", "Iguala de la Independencia", "Igualapa", "Iliatenco", "Ixcateopan de Cuauhtémoc", "José Azueta (Puerto de San Vicente)", "Juan R. Escudero", "Leonardo Bravo", "Malinaltepec", "Marquelia", "Mártir de Cuilapan", "Metlatónoc", "Mochitlán", "Olinalá", "Ometepec", "Pedro Ascencio Alquisiras", "Petatlán", "Pilcaya", "Pungarabato", "Quechultenango", "San Luis Acatlán", "San Marcos", "San Miguel Totolapan", "Taxco de Alarcón", "Tecoanapa", "Técpan de Galeana", "Teloloapan", "Tepecoacuilco de Trujano", "Tetipac", "Tixtla de Guerrero", "Tlacoachistlahuaca", "Tlacoapa", "Tlalchapa", "Tlalixtaquilla de Maldonado", "Tlapa de Comonfort", "Tlapehuala", "Xalpatláhuac", "Xochihuehuetlán", "Xochistlahuaca", "Zapotitlán Tablas", "Zihuatanejo de Azueta", "Zirándaro", "Zitlala" ]
hidalgo_provinces = [ "Acatlán", "Acaxochitlán", "Actopan", "Agua Blanca de Iturbide", "Ajacuba", "Alfajayucan", "Almoloya", "Apan", "Atitalaquia", "Atlapexco", "Atotonilco de Tula", "Atotonilco el Grande", "Calnali", "Cardonal", "Chapantongo", "Chapulhuacán", "Chilcuautla", "Cuautepec de Hinojosa", "El Arenal", "Eloxochitlán", "Emiliano Zapata", "Epazoyucan", "Francisco I. Madero", "Huasca de Ocampo", "Huautla", "Huazalingo", "Huehuetla", "Huejutla de Reyes", "Huichapan", "Ixmiquilpan", "Jacala de Ledezma", "Jaltocán", "Juárez Hidalgo", "La Misión", "Lolotla", "Metepec", "Metztitlán", "Mineral de la Reforma", "Mineral del Chico", "Mineral del Monte", "Mixquiahuala de Juárez", "Molango de Escamilla", "Nicolás Flores", "Nopala de Villagrán", "Omitlán de Juárez", "Pachuca de Soto", "Pisaflores", "Progreso de Obregón", "San Agustín Metzquititlán", "San Agustín Tlaxiaca", "San Bartolo Tutotepec", "San Felipe Orizatlán", "San Salvador", "Santiago de Anaya", "Santiago Tulantepec de Lugo Guerrero", "Singuilucan", "Tasquillo", "Tecozautla", "Tenango de Doria", "Tepeapulco", "Tepehuacán de Guerrero", "Tepeji del Río de Ocampo", "Tepetitlán", "Tepetitlán (El Quemado)", "Tetzintla", "Tezontepec de Aldama", "Tianguistengo", "Tizayuca", "Tlahuelilpan", "Tlahuiltepa", "Tlanalapa", "Tlanchinol", "Tlaxcoapan", "Tolcayuca", "Tulancingo de Bravo", "Villa de Tezontepec", "Xochiatipan", "Xochicoatlán", "Yahualica", "Zapotlán de Juárez", "Zempoala", "Zimapán" ]
jalisco_provinces = [ "Acatic", "Acatlán de Juárez", "Ahualulco de Mercado", "Amacueca", "Amatitán", "Ameca", "Arandas", "Atemajac de Brizuela", "Atengo", "Atenguillo", "Atotonilco el Alto", "Atoyac", "Autlán de Navarro", "Ayotlán", "Ayutla", "Bolaños", "Cabo Corrientes", "Cañadas de Obregón", "Casimiro Castillo", "Chapala", "Chimaltitán", "Chiquilistlán", "Cihuatlán", "Cocula", "Colotlán", "Concepción de Buenos Aires", "Cuautitlán de García Barragán", "Cuautla", "Cuquío", "Degollado", "Ejutla", "El Arenal", "El Grullo", "El Limón", "El Salto", "Encarnación de Díaz", "Etzatlán", "Gómez Farías", "Guachinango", "Guadalajara", "Hostotipaquillo", "Huejúcar", "Huejuquilla el Alto", "Ixtlahuacán de los Membrillos", "Ixtlahuacán del Río", "Jalostotitlán", "Jamay", "Jesús María", "Jilotlán de los Dolores", "Jocotepec", "Juanacatlán", "Juchitlán", "La Barca", "La Huerta", "La Manzanilla de la Paz", "Lagos de Moreno", "Magdalena", "Mascota", "Mazamitla", "Mexticacán", "Mezquitic", "Mixtlán", "Ocotlán", "Ojuelos de Jalisco", "Pihuamo", "Poncitlán", "Puerto Vallarta", "Quitupan", "San Cristóbal de la Barranca", "San Diego de Alejandría", "San Gabriel", "San Ignacio Cerro Gordo", "San Juan de los Lagos", "San Juanito de Escobedo", "San Julián", "San Marcos", "San Martín de Bolaños", "San Martín Hidalgo", "San Miguel el Alto", "San Pedro Tlaquepaque", "San Sebastián del Oeste", "Santa María de los Ángeles", "Santa María del Oro", "Sayula", "Tala", "Talpa de Allende", "Tamazula de Gordiano", "Tapalpa", "Tecalitlán", "Techaluta de Montenegro", "Tecolotlán", "Tenamaxtlán", "Teocaltiche", "Teocuitatlán de Corona", "Tepatitlán de Morelos", "Tequila", "Teuchitlán", "Tizapán el Alto", "Tlajom" ]
michoacan_provinces = [ "Acuitzio", "Aguililla", "Álvaro Obregón", "Angamacutiro", "Angangueo", "Apatzingán", "Aporo", "Aquila", "Ario", "Arteaga", "Briseñas", "Buenavista", "Carácuaro", "Charapan", "Charo", "Chavinda", "Cherán", "Chilchota", "Chinicuila", "Chucándiro", "Churintzio", "Churumuco", "Coahuayana", "Coalcomán de Vázquez Pallares", "Coeneo", "Cojumatlán de Régules", "Contepec", "Copándaro", "Cotija", "Cuitzeo", "Ecuandureo", "Epitacio Huerta", "Erongarícuaro", "Gabriel Zamora", "Hidalgo", "Huandacareo", "Huaniqueo", "Huetamo", "Huiramba", "Indaparapeo", "Irimbo", "Ixtlán", "Jacona", "Jiménez", "Jiquilpan", "José Sixto Verduzco", "Juárez", "Jungapeo", "Lagunillas", "Lázaro Cárdenas", "Los Reyes", "Madero", "Maravatío", "Marcos Castellanos", "Morelia", "Morelos", "Múgica", "Nahuatzen", "Nocupétaro", "Nuevo Parangaricutiro", "Nuevo Urecho", "Numarán", "Ocampo", "Pajacuarán", "Panindícuaro", "Paracho", "Parácuaro", "Pátzcuaro", "Penjamillo", "Peribán", "La Piedad", "Purepero", "Purépero", "Puruándiro", "Queréndaro", "Quiroga", "Los Reyes", "Sahuayo", "San Lucas", "Santa Ana Maya", "Salvador Escalante", "Senguio", "Susupuato", "Tacámbaro", "Tancítaro", "Tangamandapio", "Tangancícuaro", "Tanhuato", "Taretan", "Tarímbaro", "Tepalcatepec", "Tingambato", "Tingüindín", "Tiquicheo de Nicolás Romero", "Tlalpujahua", "Tlazazalca", "Tocumbo", "Tumbiscatío", "Turicato", "Tuxpan", "Tuzantla", "Tzintzuntzan", "Tzitzio", "Uruapan", "Venustiano Carranza", "Villamar", "Vista Hermosa", "Yurécuaro", "Zacapu", "Zamora" ]
morelos_provinces = [ "Amacuzac", "Atlatlahucan", "Axochiapan", "Ayala", "Coatlán del Río", "Cuautla", "Cuernavaca", "Emiliano Zapata", "Huitzilac", "Jantetelco", "Jiutepec", "Jojutla", "Jonacatepec", "Mazatepec", "Miacatlán", "Ocuituco", "Puente de Ixtla", "Temixco", "Temoac", "Tepalcingo", "Tepoztlán", "Tetecala", "Tetela del Volcán", "Tlalnepantla", "Tlaltizapán de Zapata", "Tlaquiltenango", "Tlayacapan", "Totolapan", "Xochitepec", "Yautepec", "Yecapixtla", "Zacatepec de Hidalgo", "Zacualpan de Amilpas", "Xoxocotla" ]
nayarit_provinces = [ "Acaponeta", "Ahuacatlán", "Amatlán de Cañas", "Bahía de Banderas", "Compostela", "Del Nayar", "Huajicori", "Ixtlán del Río", "Jala", "La Yesca", "Rosamorada", "Ruiz", "San Blas", "San Pedro Lagunillas", "Santa María del Oro", "Santiago Ixcuintla", "Tecuala", "Tepic", "Tuxpan", "Xalisco" ]
nuevo_leon_provinces = [  "Abasolo", "Agualeguas", "Allende", "Anáhuac", "Apodaca", "Aramberri", "Bustamante", "Cadereyta Jiménez", "Carmen", "Cerralvo", "China", "Ciénega de Flores", "Doctor Arroyo", "Doctor Coss", "Doctor González", "El Carmen", "Galeana", "García", "General Bravo", "General Escobedo", "General Terán", "General Treviño", "General Zaragoza", "General Zuazua", "Guadalupe", "Hidalgo", "Higueras", "Hualahuises", "Iturbide", "Juárez", "Lampazos de Naranjo", "Linares", "Los Aldamas", "Los Herreras", "Los Ramones", "Marín", "Melchor Ocampo", "Mier y Noriega", "Mina", "Montemorelos", "Monterrey", "Parás", "Pesquería", "Rayones", "Sabinas Hidalgo", "Salinas Victoria", "San Nicolás de los Garza", "San Pedro Garza García", "Santa Catarina", "Santiago", "Vallecillo", "Villaldama" ]
oaxaca_provinces = [ "Acatlán de Pérez Figueroa", "Asunción Cacalotepec", "Asunción Cuyotepeji", "Asunción Ixtaltepec", "Asunción Nochixtlán", "Asunción Ocotlán", "Asunción Tlacolulita", "Ayotzintepec", "Calihualá", "Calpulalpan de Méndez", "Caltexlahuaca", "Candelaria Loxicha", "Capulálpam de Méndez", "Chahuites", "Chalcatongo de Hidalgo", "Chiquihuitlán de Benito Juárez", "Ciénega de Zimatlán", "Ciudad Ixtepec", "Coatecas Altas", "Coicoyán de las Flores", "Concepción Buenavista", "Concepción Pápalo", "Concepción del Monte", "Concepción del Oro", "Coneto de Comonfort", "Cosolapa", "Cosoltepec", "Cuilápam de Guerrero", "Cuyamecalco Villa de Zaragoza", "El Barrio de la Soledad", "El Espinal", "El Porvenir", "El Rosario", "El Tule", "Estancia de San Antonio", "Etla", "Guelatao de Juárez", "Guevea de Humboldt", "Heroica Ciudad de Ejutla de Crespo", "Heroica Ciudad de Huajuapan de León", "Heroica Ciudad de Juchitán de Zaragoza", "Heroica Ciudad de Tlaxiaco", "Heroica Villa Tezoatlán de Segura y Luna, Cuna de la Independencia de Oaxaca", "Heroica Villa de Etla", "Heroica Villa de Tututepec de Melchor Ocampo", "Huautepec", "Huautla de Jiménez", "Ixpantepec Nieves", "Ixtlán de Juárez", "Loma Bonita", "Magdalena Apasco", "Magdalena Jaltepec", "Magdalena Mixtepec", "Magdalena Ocotlán", "Magdalena Peñasco", "Magdalena Teitipac", "Magdalena Tequisistlán", "Magdalena Tlacotepec", "Magdalena Yodocono de Porfirio Díaz", "Magdalena Zahuatlán", "Magdalena Zepeda", "Magdalena de Kino", "Magdalena de las Salinas", "Magdalena de los Reyes", "Magdalena del Mar", "Magdalena el Grande", "Magdalena las Salinas", "Magdalena las Trampas", "Magdalena las Vacas", "Magdalena y Cano", "Magdalena y Huerta", "Magdalena y Martínez", "Magdalena y Milpas Viejas", "Magdalena y Santiago", "Magdalena y Trujillo", "Magdalena y Villanueva", "Mag" ]
puebla_provinces = [ "Acajete", "Acateno", "Acatlán", "Acatzingo", "Acteopan", "Ahuacatlán", "Ahuatlán", "Ahuazotepec", "Ahuehuetitla", "Ajalpan", "Albino Zertuche", "Aljojuca", "Altepexi", "Amixtlán", "Amozoc", "Aquixtla", "Atempan", "Atexcal", "Atlixco", "Atzala", "Atzitzihuacán", "Atzitzintla", "Axutla", "Ayotoxco de Guerrero", "Calpan", "Caltepec", "Camocuautla", "Cañada Morelos", "Caxhuacan", "Chapulco", "Chiautla", "Chiautzingo", "Chiconcuautla", "Chichiquila", "Chietla", "Chigmecatitlán", "Chignahuapan", "Chignautla", "Chila", "Chila de la Sal", "Chinantla", "Coatepec", "Coatzingo", "Cohetzala", "Cohuecan", "Coronango", "Coxcatlán", "Coyomeapan", "Coyotepec", "Cuapiaxtla de Madero", "Cuautempan", "Cuautinchán", "Cuautlancingo", "Cuayuca de Andrade", "Cuetzalan del Progreso", "Cuyoaco", "Domingo Arenas", "Eloxochitlán", "Epatlán", "Esperanza", "Francisco Z. Mena", "General Felipe Ángeles", "Guadalupe", "Guadalupe Victoria", "Hermenegildo Galeana", "Honey", "Huaquechula", "Huauchinango", "Huehuetla", "Huehuetlán el Chico", "Huehuetlán el Grande", "Huejotzingo", "Hueyapan", "Hueytamalco", "Hueytlalpan", "Huitzilan de Serdán", "Huitziltepec", "Ixcamilpa de Guerrero", "Ixcaquixtla", "Ixtacamaxtitlán", "Ixtepec", "Izúcar de Matamoros", "Jalpan", "Jolalpan", "Jonotla", "Jopala", "Juan C. Bonilla", "Juan Galindo", "Juan N. Méndez", "La Magdalena Tlatlauquitepec", "Lafragua", "Libres", "Los Reyes de Juárez", "Mazapiltepec de Juárez", "Mixtla", "Molcaxac", "Naupan", "Nauzontla", "Nealtican", "Nicolás Bravo", "Nopalucan", "Ocote" ]
queretaro_provinces = [ "Amealco de Bonfil", "Arroyo Seco", "Cadereyta de Montes", "Colón", "Corregidora", "El Marqués", "Ezequiel Montes", "Huimilpan", "Jalpan de Serra", "Landa de Matamoros", "Pedro Escobedo", "Peñamiller", "Pinal de Amoles", "Querétaro", "San Joaquín", "San Juan del Río", "Tequisquiapan", "Tolimán" ]
quintana_roo_provinces = [ "Benito Juárez", "Solidaridad", "Othón P. Blanco", "Cozumel", "Tulum", "Bacalar", "Puerto Morelos", "José María Morelos", "Felipe Carrillo Puerto", "Isla Mujeres", "Lázaro Cárdenas", "Tulum" ]
san_luis_potosi_provinces = [ "San Luis Potosí", "Soledad de Graciano Sánchez", "Ciudad Valles", "Matehuala", "Rioverde", "Tamazunchale", "Ciudad Fernández", "Matehuala", "Tamazunchale", "Ébano", "Cárdenas", "Villa de Reyes", "Ahualulco", "Santa María del Río", "Charcas", "Villa de Arriaga", "Mexquitic de Carmona", "Villa de Zaragoza", "Salinas de Hidalgo", "Cerro de San Pedro", "Villa de Ramos", "Santa Catarina", "Vanegas", "Cedral", "Moctezuma", "Tamasopo", "Axtla de Terrazas", "Rayón", "Xilitla", "San Vicente Tancuayalab", "Matlapa", "Cerritos", "Coxcatlán", "Villa Juárez", "El Naranjo", "Ciudad del Maíz", "San Nicolás Tolentino", "Alaquines", "Aquismón", "Huehuetlán", "Villa de Arista", "San Martín Chalchicuautla", "Tancanhuitz", "Tanlajás", "San Antonio", "Tanquián de Escobedo", "Lagunillas", "San Ciro de Acosta", "San José Iturbide", "Tierra Nueva" ]
sinaloa_provinces = [ "Ahome", "Angostura", "Badiraguato", "Choix", "Concordia", "Cosalá", "Culiacán", "El Fuerte", "Elota", "Escuinapa", "Guasave", "Mazatlán", "Mocorito", "Navolato", "Rosario", "Salvador Alvarado", "San Ignacio", "Sinaloa" ]
sonora_provinces = [ "Aconchi", "Agua Prieta", "Alamos", "Altar", "Arivechi", "Arizpe", "Atil", "Bacadehuachi", "Bacanora", "Bacerac", "Bacoachi", "Bácum", "Banámichi", "Baviácora", "Bavispe", "Benito Juárez", "Caborca", "Cajeme", "Cananea", "Carbó", "Cucurpe", "Cumpas", "Divisaderos", "Empalme", "Etchojoa", "Fronteras", "General Plutarco Elías Calles", "Granados", "Guaymas", "Hermosillo", "Huachinera", "Huásabas", "Huatabampo", "Huépac", "Imuris", "La Colorada", "Magdalena", "Mazatán", "Moctezuma", "Naco", "Nácori Chico", "Nacozari de García", "Navojoa", "Nogales", "Onavas", "Opodepe", "Oquitoa", "Pitiquito", "Puerto Peñasco", "Quiriego", "Rayón", "Rosario", "Sahuaripa", "San Felipe de Jesús", "San Ignacio Río Muerto", "San Javier", "San Luis Río Colorado", "San Miguel de Horcasitas", "San Pedro de la Cueva", "Santa Ana", "Santa Cruz", "Sáric", "Soyopa", "Suaqui Grande", "Tepache", "Trincheras", "Tubutama", "Ures", "Villa Hidalgo", "Villa Pesqueira", "Yécora", "General Plutarco Elías Calles" ]
tabasco_provinces = [ "Balancán", "Cárdenas", "Centla", "Centro", "Comalcalco", "Cunduacán", "Emiliano Zapata", "Huimanguillo", "Jalapa", "Jalpa de Méndez", "Jonuta", "Macuspana", "Nacajuca", "Paraíso", "Tacotalpa", "Teapa", "Tenosique" ]
tamaulipas_provinces = [ "Abasolo", "Aldama", "Altamira", "Antiguo Morelos", "Burgos", "Bustamante", "Camargo", "Casas", "Ciudad Madero", "Cruillas", "El Mante", "Gómez Farías", "González", "Güémez", "Guerrero", "Gustavo Díaz Ordaz", "Hidalgo", "Jaumave", "Jiménez", "Llera", "Mainero", "Matamoros", "Méndez", "Mier", "Miguel Alemán", "Miquihuana", "Nuevo Laredo", "Nuevo Morelos", "Ocampo", "Padilla", "Palmillas", "Reynosa", "Río Bravo", "San Carlos", "San Fernando", "San Nicolás", "Soto la Marina", "Tampico", "Tula", "Valle Hermoso", "Victoria", "Villagrán", "Xicoténcatl" ]
tlaxcala_provinces = [ "Amaxac de Guerrero", "Apetatitlán de Antonio Carvajal", "Atlangatepec", "Benito Juárez", "Calpulalpan", "Chiautempan", "Contla de Juan Cuamatzi", "Cuapiaxtla", "Cuaxomulco", "El Carmen Tequexquitla", "Emiliano Zapata", "Españita", "Huamantla", "Hueyotlipan", "Ixtacuixtla de Mariano Matamoros", "Ixtenco", "La Magdalena Tlaltelulco", "Lázaro Cárdenas", "Mazatecochco de José María Morelos", "Muñoz de Domingo Arenas", "Nanacamilpa de Mariano Arista", "Natívitas", "Panotla", "Papalotla de Xicohténcatl", "San Damián Texóloc", "San Francisco Tetlanohcan", "San Jerónimo Zacualpan", "San José Teacalco", "San Juan Huactzinco", "San Lorenzo Axocomanitla", "San Lucas Tecopilco", "San Pablo del Monte", "Sanctorum de Lázaro Cárdenas", "Santa Ana Nopalucan", "Santa Apolonia Teacalco", "Santa Catarina Ayometla", "Santa Cruz Quilehtla", "Santa Cruz Tlaxcala", "Santa Isabel Xiloxoxtla", "Tenancingo", "Teolocholco", "Tepetitla de Lardizábal", "Tepeyanco", "Terrenate", "Tetla de la Solidaridad", "Tetlatlahuca", "Tlaxcala", "Tlaxco", "Tocatlán", "Totolac", "Tzompantepec", "Xaloztoc", "Xaltocan", "Xicohtzinco", "Zacatelco", "Zacualpan", "Zitlaltepec de Trinidad Sánchez Santos", "Zumpango del Río" ]
veracruz_provinces = [ "Acajete", "Acatlán", "Acayucan", "Actopan", "Acula", "Acultzingo", "Agua Dulce", "Alpatláhuac", "Alto Lucero de Gutiérrez Barrios", "Altotonga", "Alvarado", "Amatitlán", "Amatlán de los Reyes", "Angel R. Cabada", "Apazapan", "Aquila", "Astacinga", "Atlahuilco", "Atoyac", "Atzacan", "Atzalan", "Ayahualulco", "Banderilla", "Benito Juárez", "Boca del Río", "Calcahualco", "Camarón de Tejeda", "Camerino Z. Mendoza", "Carlos A. Carrillo", "Carrillo Puerto", "Castillo de Teayo", "Catemaco", "Cazones de Herrera", "Cerro Azul", "Chacaltianguis", "Chalma", "Chiconamel", "Chiconquiaco", "Chicontepec", "Chinameca", "Chinampa de Gorostiza", "Chocamán", "Chontla", "Chumatlán", "Citlaltépetl", "Coacoatzintla", "Coahuitlán", "Coatepec", "Coatzacoalcos", "Coatzintla", "Coetzala", "Colipa", "Comapa", "Córdoba", "Cosamaloapan de Carpio", "Cosautlán de Carvajal", "Coscomatepec", "Cosoleacaque", "Cotaxtla", "Coxquihui", "Coyutla", "Cuichapa", "Cuitláhuac", "El Higo", "Emiliano Zapata", "Espinal", "Filomeno Mata", "Fortín", "Gutiérrez Zamora", "Hidalgotitlán", "Huatusco", "Huayacocotla", "Hueyapan de Ocampo", "Huiloapan de Cuauhtémoc", "Ignacio de la Llave", "Ilamatlán", "Isla", "Ixcatepec", "Ixhuacán de los Reyes", "Ixhuatlán de Madero", "Ixhuatlancillo", "Ixmatlahuacan", "Ixtaczoquitlán", "Jáltipan", "Jalcomulco", "Jáltocan", "Jamapa", "Jesús Carranza", "Jilotepec", "José Azueta", "Juan Rodríguez Clara", "Juchique de Ferrer", "Landero y Coss", "Lerdo de Tejada", "Magdalena", "Maltrata", "Manlio Fabio Altamirano", "Mariano Escobedo", "Martínez de la Torre", "Mecatlán" ]
yucatan_provinces = [ "Abalá", "Acanceh", "Akil", "Baca", "Bokobá", "Buctzotz", "Cacalchén", "Calotmul", "Cansahcab", "Cantamayec", "Celestún", "Cenotillo", "Conkal", "Cuncunul", "Cuzamá", "Chacsinkín", "Chankom", "Chapab", "Chemax", "Chichimilá", "Chicxulub Pueblo", "Chikindzonot", "Chocholá", "Chumayel", "Dzán", "Dzemul", "Dzidzantún", "Dzilam de Bravo", "Dzilam González", "Dzitás", "Dzoncauich", "Espita", "Halachó", "Hocabá", "Hoctún", "Homún", "Huhí", "Hunucmá", "Ixil", "Izamal", "Kanasín", "Kantunil", "Kaua", "Kinchil", "Kopomá", "Mama", "Maní", "Maxcanú", "Mayapán", "Mérida", "Mocochá", "Motul", "Muna", "Muxupip", "Opichén", "Oxkutzcab", "Panabá", "Peto", "Progreso", "Quintana Roo", "Río Lagartos", "Sacalum", "Samahil", "Sanahcat", "San Felipe", "Santa Elena", "Seyé", "Sinanché", "Sotuta", "Sucilá", "Sudzal", "Suma", "Tahdziú", "Tahmek", "Teabo", "Tecoh", "Tekal de Venegas", "Tekantó", "Tekax", "Tekit", "Tekom", "Telchac Pueblo", "Telchac Puerto", "Temax", "Temozón", "Tepakán", "Tetiz", "Teya", "Ticul", "Timucuy", "Tinum", "Tixcacalcupul", "Tixkokob", "Tixmehuac", "Tixpéhual", "Tizimín", "Tunkás", "Tzucacab", "Uayma", "Ucú" ]
zacatecas_provinces = [ "Apulco", "Atolinga", "Benito Juárez", "Calera", "Cañitas de Felipe Pescador", "Concepción del Oro", "Cuauhtémoc", "Chalchihuites", "El Plateado de Joaquín Amaro", "El Salvador", "Fresnillo", "Genaro Codina", "General Enrique Estrada", "General Francisco R. Murguía", "General Pánfilo Natera", "Guadalupe", "Huanusco", "Jalpa", "Jerez", "Jiménez del Teul", "Juan Aldama", "Juchipila", "Loreto", "Luis Moya", "Mazapil", "Melchor Ocampo", "Mezquital del Oro", "Miguel Auza", "Momax", "Monte Escobedo", "Morelos", "Moyahua de Estrada", "Nochistlán de Mejía", "Noria de Ángeles", "Ojocaliente", "Pánuco", "Pinos", "Río Grande", "Sain Alto", "Santa María de la Paz", "Sombrerete", "Susticacán", "Tabasco", "Tepechitlán", "Tepetongo", "Teúl de González Ortega", "Tlaltenango de Sánchez Román", "Trancoso", "Trinidad García de la Cadena", "Valparaíso", "Vetagrande", "Villa de Cos", "Villa García", "Villa González Ortega", "Villa Hidalgo", "Villanueva", "Zacatecas" ]


baja_california_provinces.each do |province|
  department_baja_california.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

baja_california_sur_provinces.each do |province|
  department_baja_california_sur.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

campeche_provinces.each do |province|
  department_campeche.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

chiapas_provinces.each do |province|
  department_chiapas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

chihuahua_provinces.each do |province|
  department_chihuahua.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

ciudad_de_mexico_provinces.each do |province|
  department_ciudad_de_mexico.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

coahuila_provinces.each do |province|
  department_coahuila.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

colima_provinces.each do |province|
  department_colima.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

durango_provinces.each do |province|
  department_durango.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

guanajuato_provinces.each do |province|
  department_guanajuato.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

guerrero_provinces.each do |province|
  department_guerrero.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

hidalgo_provinces.each do |province|
  department_hidalgo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

jalisco_provinces.each do |province|
  department_jalisco.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

michoacan_provinces.each do |province|
  department_michoacan.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

morelos_provinces.each do |province|
  department_morelos.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

nayarit_provinces.each do |province|
  department_nayarit.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

nuevo_leon_provinces.each do |province|
  department_nuevo_leon.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

oaxaca_provinces.each do |province|
  department_oaxaca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

puebla_provinces.each do |province|
  department_puebla.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

queretaro_provinces.each do |province|
  department_queretaro.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

quintana_roo_provinces.each do |province|
  department_quintana_roo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

san_luis_potosi_provinces.each do |province|
  department_san_luis_potosi.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

sinaloa_provinces.each do |province|
  department_sinaloa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

sonora_provinces.each do |province|
  department_sonora.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tabasco_provinces.each do |province|
  department_tabasco.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tamaulipas_provinces.each do |province|
  department_tamaulipas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tlaxcala_provinces.each do |province|
  department_tlaxcala.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

veracruz_provinces.each do |province|
  department_veracruz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

yucatan_provinces.each do |province|
  department_yucatan.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

zacatecas_provinces.each do |province|
  department_zacatecas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Argentina
department_autonoma_buenos_aires = Department.find_by(name: "Ciudad Autónoma de Buenos Aires")
department_buenos_aires = Department.find_by(name: "Buenos Aires")
department_catamarca= Department.find_by(name: "Catamarca")
department_chaco = Department.find_by(name: "Chaco")
department_chubut= Department.find_by(name: "Chubut")
department_cordoba = Department.find_by(name: "Córdoba")
department_corrientes= Department.find_by(name: "Corrientes")
department_entre_rios = Department.find_by(name: "Entre Ríos")
department_formosa = Department.find_by(name: "Formosa")
department_jujuy = Department.find_by(name: "Jujuy")
department_pampa = Department.find_by(name: "La Pampa")
department_rioja= Department.find_by(name: "La Rioja")
department_mendoza = Department.find_by(name: "Mendoza")
department_misiones = Department.find_by(name: "Misiones")
department_neuquen = Department.find_by(name: "Neuquén")
department_rio_negro = Department.find_by(name: "Río Negro")
department_salta = Department.find_by(name: "Salta")
department_san_juan = Department.find_by(name: "San Juan")
department_san_luis= Department.find_by(name: "San Luis")
department_santa_cruz= Department.find_by(name: "Santa Cruz")
department_santa_fe = Department.find_by(name: "Santa Fe")
department_santiago_estero = Department.find_by(name: "Santiago del Estero")
department_tierra_fuego = Department.find_by(name: "Tierra del Fuego")
department_tucuman = Department.find_by(name: "Tucumán")

ciudad_autonoma_buenos_aires_provinces = [ "Comuna 1 - Retiro", "Comuna 2 - Recoleta", "Comuna 3 - Balvanera", "Comuna 4 - Barracas", "Comuna 5 - Almagro", "Comuna 6 - Caballito", "Comuna 7 - Flores", "Comuna 8 - Villa Lugano", "Comuna 9 - Parque Avellaneda", "Comuna 10 - Villa Real", "Comuna 11 - Villa Devoto", "Comuna 12 - Coghlan", "Comuna 13 - Belgrano", "Comuna 14 - Palermo", "Comuna 15 - Chacarita" ]
buenos_aires_provinces = [ "Buenos Aires", "La Plata", "Mar del Plata", "Bahía Blanca", "Tandil", "Olavarría", "Pergamino", "San Nicolás de los Arroyos", "Junín", "Necochea", "Tres Arroyos", "Azul", "Balcarce", "Chivilcoy", "Zárate", "Mercedes", "Luján", "Saladillo", "Chacabuco", "San Pedro" ]
catamarca_provinces = [ "Ancasti", "Andalgalá", "Antofagasta de la Sierra", "Belén", "Capayán", "Capital", "El Alto", "Fray Mamerto Esquiú", "La Paz", "Paclín", "Pomán", "Santa María", "Santa Rosa", "Tinogasta", "Valle Viejo" ]
chubut_provinces = [ "Rawson", "Comodoro Rivadavia", "Puerto Madryn", "Trelew", "Esquel", "Gaiman"]
chaco_provinces = [ "Almirante Brown", "Bermejo", "Chacabuco", "Comandante Fernández", "Doce de Octubre", "Fray Justo Santa María de Oro", "General Belgrano", "General Donovan", "Independencia", "Libertad", "Libertador General San Martín", "Maipú", "Mayor Luis J. Fontana", "Nueve de Julio", "Presidencia de la Plaza", "Primero de Mayo", "Quitilipi", "San Fernando", "San Lorenzo", "Sargento Cabral", "Tapenagá", "25 de Mayo" ]
cordoba_provinces = [ "Calamuchita", "Colón", "Cruz del Eje", "General Roca", "General San Martín", "Ischilín", "Juárez Celman", "Marcos Juárez", "Minas", "Pocho", "Presidente Roque Sáenz Peña", "Punilla", "Río Cuarto", "Río Primero", "Río Seco", "Río Segundo", "San Alberto", "San Javier", "San Justo", "Santa María", "Sobremonte", "Tercero Arriba", "Totoral", "Tulumba", "Unión" ]
corrientes_provinces = [ "Bella Vista", "Berón de Astrada", "Capital", "Concepción", "Curuzú Cuatiá", "Empedrado", "Esquina", "General Alvear", "General Paz", "Goya", "Itatí", "Ituzaingó", "Lavalle", "Mburucuyá", "Mercedes", "Monte Caseros", "Paso de los Libres", "Saladas", "San Cosme", "San Luis del Palmar", "San Martín", "San Miguel", "San Roque", "Santa Ana", "Santa Lucía", "Santo Tomé", "Sauce", "Santo Tomé", "Sauce", "Yapeyú" ]
entre_rios_provinces = [ "Paraná", "Concordia", "Gualeguaychú", "Gualeguay", "Colón", "Victoria", "Federación", "La Paz", "San Salvador", "Diamante", "Nogoyá", "Villaguay", "Tala", "Uruguay", "Islas del Ibicuy" ]
formosa_provinces = [ "Formosa", "Clorinda", "Pirané", "Laguna Naineck", "El Colorado", "Las Lomitas", "Ibarreta", "Ingeniero Juárez", "Herradura", "Comandante Fontana", "Posta Cambio Zalazar", "General Lucio V. Mansilla", "Villa General Güemes", "Palo Santo", "Buena Vista", "El Espinillo" ]
jujuy_provinces = [ "San Salvador de Jujuy", "Palpalá", "San Pedro de Jujuy", "La Quiaca", "Libertador General San Martín", "Perico", "Humahuaca", "Tilcara", "Abra Pampa", "Yuto", "San Antonio", "Volcán", "Purmamarca", "La Mendieta", "El Carmen", "Fraile Pintado", "Maimará", "Tilcara" ]
la_pampa_provinces = [ "Santa Rosa", "General Pico", "Toay", "General Acha", "Eduardo Castex", "Realicó", "General San Martín", "Macachín", "Victorica", "General Campos", "Quemú Quemú", "Jacinto Arauz", "Anguil", "Santa Isabel", "25 de Mayo", "Alta Italia", "Parera", "Miguel Riglos", "Catriló", "Gobernador Duval", "Uriburu", "Bernardo Larroudé", "Lonquimay", "Trenel" ]
la_rioja_provinces = [ "La Rioja", "Chilecito", "Arauco", "Chamical", "Famatina", "Villa Unión", "Chepes", "Vinchina", "Malanzán", "Ulapes", "Olta", "Anillaco", "Sanagasta", "Rosario Vera Peñaloza", "Milagro", "Villa Castelli" ]
mendoza_provinces = [ "Mendoza", "San Rafael", "Godoy Cruz", "Las Heras", "Guaymallén", "Maipú", "Luján de Cuyo", "San Martín", "Junín", "Rivadavia", "Tunuyán", "General Alvear", "La Paz", "Malargüe", "Santa Rosa", "San Carlos" ]
misiones_provinces = [ "Posadas", "Eldorado", "Oberá", "Apostoles", "San Vicente", "Puerto Iguazú", "Leandro N. Alem", "Jardín América", "Montecarlo", "San Pedro", "Alem", "Campo Grande", "Puerto Rico", "Wanda", "Dos de Mayo", "Oberá", "El Soberbio" ]
neuquen_provinces = [ "Neuquén", "Cutral Có", "Plottier", "Centenario", "Zapala", "San Martín de los Andes", "Chos Malal", "Junín de los Andes", "Villa La Angostura", "Senillosa", "Rincón de los Sauces", "Villa Regina", "Chos Malal", "Picún Leufú" ]
rio_negro_provinces = [ "Viedma", "Bariloche", "General Roca", "Cipolletti", "Allen", "San Carlos de Bariloche", "Ingeniero Jacobacci", "El Bolsón", "Cinco Saltos", "Choele Choel", "San Antonio Oeste", "Catriel", "Río Colorado" ]
salta_provinces = [ "Salta", "San Ramón de la Nueva Orán", "Tartagal", "San Salvador de Jujuy", "San Pedro", "Metán", "General Güemes", "Cafayate", "Embarcación", "Orán", "Rosario de la Frontera", "Joaquín V. González", "Campo Quijano" ]
san_juan_provinces = [ "San Juan", "Rivadavia", "Rawson", "Santa Lucía", "Chimbas", "Pocito", "Caucete", "Albardón", "San Martín", "Angaco", "25 de Mayo", "Jáchal", "Iglesia" ]
san_luis_provinces = [ "San Luis", "Villa Mercedes", "Merlo", "La Punta", "Santa Rosa de Conlara", "Justo Daract", "Juana Koslay", "San Francisco del Monte de Oro", "Naschel", "Concarán", "Quines", "Tilisarao", "Candelaria", "Luján", "Renca", "La Toma" ]
santa_cruz_provinces = [ "Río Gallegos", "Caleta Olivia", "Puerto Deseado", "Pico Truncado", "Las Heras", "El Calafate", "Perito Moreno", "Río Turbio", "28 de Noviembre", "Gobernador Gregores", "Puerto San Julián", "Puerto Santa Cruz" ]
santa_fe_provinces = [ "Santa Fe", "Rosario", "Venado Tuerto", "Rafaela", "Esperanza", "Santo Tomé", "Reconquista", "Gálvez", "Villa Constitución", "San Lorenzo", "Casilda", "Firmat" ]
santiago_del_estero_provinces = [ "Santiago del Estero", "La Banda", "Termas de Río Hondo", "Fernández", "Añatuya", "Suncho Corral", "Frías", "Clodomira", "Forres", "Monte Quemado", "Loreto", "Pinto" ]
tierra_del_fuego_provinces = [ "Ushuaia", "Río Grande", "Tolhuin" ]
tucuman_provinces = [ "San Miguel de Tucumán", "Yerba Buena", "Tafí Viejo", "Banda del Río Salí", "Alderetes", "Río Seco" ]

ciudad_autonoma_buenos_aires_provinces.each do |province|
  department_autonoma_buenos_aires.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

buenos_aires_provinces.each do |province|
  department_buenos_aires.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

catamarca_provinces.each do |province|
  department_catamarca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

chubut_provinces.each do |province|
  department_chubut.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

chaco_provinces.each do |province|
  department_chaco.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cordoba_provinces.each do |province|
  department_cordoba.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

corrientes_provinces.each do |province|
  department_corrientes.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

entre_rios_provinces.each do |province|
  department_entre_rios.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

formosa_provinces.each do |province|
  department_formosa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

jujuy_provinces.each do |province|
  department_jujuy.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

la_pampa_provinces.each do |province|
  department_pampa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

la_rioja_provinces.each do |province|
  department_rioja.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

mendoza_provinces.each do |province|
  department_mendoza.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

misiones_provinces.each do |province|
  department_misiones.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

neuquen_provinces.each do |province|
  department_neuquen.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

rio_negro_provinces.each do |province|
  department_rio_negro.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

salta_provinces.each do |province|
  department_salta.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

san_juan_provinces.each do |province|
  department_san_juan.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

san_luis_provinces.each do |province|
  department_san_luis.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

santa_cruz_provinces.each do |province|
  department_santa_cruz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

santa_fe_provinces.each do |province|
  department_santa_fe.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

santiago_del_estero_provinces.each do |province|
  department_santiago_estero.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tierra_del_fuego_provinces.each do |province|
  department_tierra_fuego.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tucuman_provinces.each do |province|
  department_tucuman.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Colombia
department_amazonas = Department.find_by(name: "Amazonas")
department_antioquia = Department.find_by(name: "Antioquia")
department_arauca = Department.find_by(name: "Arauca")
department_atlantico = Department.find_by(name: "Atlántico")
department_bogota = Department.find_by(name: "Bogotá")
department_bolivar = Department.find_by(name: "Bolívar")
department_boyaca = Department.find_by(name: "Boyacá")
department_caldas = Department.find_by(name: "Caldas")
department_caqueta = Department.find_by(name: "Caquetá")
department_casanare = Department.find_by(name: "Casanare")
department_cauca = Department.find_by(name: "Cauca")
department_cesar = Department.find_by(name: "Cesar")
department_choco = Department.find_by(name: "Chocó")
department_cordoba = Department.find_by(name: "Córdoba")
department_cundinamarca = Department.find_by(name: "Cundinamarca")
department_guaviare = Department.find_by(name: "Guaviare")
department_huila = Department.find_by(name: "Huila")
department_guajira = Department.find_by(name: "La Guajira")
department_magdalena = Department.find_by(name: "Magdalena")
department_meta = Department.find_by(name: "Meta")
department_narino = Department.find_by(name: "Nariño")
department_norte_santander = Department.find_by(name: "Norte de Santander")
department_putumayo = Department.find_by(name: "Putumayo")
department_quindio = Department.find_by(name: "Quindío")
department_risaralda = Department.find_by(name: "Risaralda")
department_santander = Department.find_by(name: "Santander")
department_sucre= Department.find_by(name: "Sucre")
department_tolima = Department.find_by(name: "Tolima")
department_valle_cauca= Department.find_by(name: "Valle del Cauca")
department_vaupes = Department.find_by(name: "Vaupés")
department_vichada = Department.find_by(name: "Vichada")

amazonas_provinces = [ "Leticia", "Puerto Nariño", "Tarapacá", "El Encanto" ]
antioquia_provinces = [ "Medellín", "Envigado", "Itagüí", "Bello", "Rionegro", "Sabaneta", "Apartadó", "Turbo", "Caucasia", "Copacabana" ]
arauca_provinces = [ "Arauca", "Saravena", "Tame", "Fortul", "Cravo Norte", "Puerto Rondón", "Arauquita", "La Esmeralda" ]
atlantico_provinces = [ "Barranquilla", "Puerto Colombia", "Soledad", "Malambo", "Sabanalarga", "Palmar de Varela", "Santo Tomás", "Galapa", "Baranoa", "Campo de la Cruz", "Piojó", "Polonuevo", "Tubará", "Luruaco", "Usiacurí" ]
bogota_localidades = [ "Usaquén", "Chapinero", "Santa Fe", "San Cristóbal", "Usme", "Tunjuelito", "Bosa", "Kennedy", "Fontibón", "Engativá", "Suba", "Barrios Unidos", "Teusaquillo", "Los Mártires", "Antonio Nariño", "Puente Aranda", "La Candelaria", "Rafael Uribe Uribe", "Ciudad Bolívar" ]
bolivar_provinces = [ "Cartagena", "Magangué", "El Carmen de Bolívar", "San Juan Nepomuceno", "Turbaná", "Arjona", "Mompós", "Santa Rosa", "Simití", "Santa Catalina", "Cantagallo", "Montecristo", "Achí", "San Jacinto", "María la Baja", "San Estanislao", "Hatillo de Loba", "Mahates", "Cicuco", "Turbaco", "San Pablo", "Villanueva", "San Jacinto del Cauca", "Regidor", "San Martín de Loba", "Río Viejo", "Córdoba", "Pinillos", "Zambrano", "Tiquisio", "Santa Rosa del Sur", "Altos del Rosario", "Barranco de Loba", "Riohacha" ]
boyaca_provinces = [ "Tunja", "Duitama", "Sogamoso", "Chiquinquirá", "Puerto Boyacá", "Paipa", "Villa de Leyva", "Moniquirá", "Soatá", "Nobsa" ]
caldas_provinces = [ "Manizales", "La Dorada", "Chinchiná", "Villamaría", "Riosucio", "Palestina", "Aguadas", "Pácora", "Salamina", "Neira" ]
caqueta_provinces = [ "Florencia", "San Vicente del Caguán", "Cartagena del Chairá", "Puerto Rico", "Valparaíso", "Belén de los Andaquíes", "Solano", "Curillo", "Milán", "Morelia" ]
casanare_provinces = [ "Yopal", "Aguazul", "Villanueva", "Tauramena", "Paz de Ariporo", "Maní", "Monterrey", "Orocué", "Trinidad", "Hato Corozal" ]
cauca_provinces = [ "Popayán", "Santander de Quilichao", "Puerto Tejada", "Cajibío", "Piendamó", "Guachené", "Miranda", "Villa Rica", "Padilla", "Almaguer" ]
cesar_provinces = [ "Valledupar", "Aguachica", "San Alberto", "La Paz", "Codazzi", "Pailitas", "Becerril", "Curumaní", "Chiriguaná", "Gamarra" ]
choco_provinces = [ "Quibdó", "Bajo Baudó", "Riosucio", "Istmina", "Nuquí", "Bagadó", "Medio Atrato", "Tadó", "Condoto", "Unguía" ]
cordoba_provinces = [ "Montería", "Cereté", "Lorica", "Planeta Rica", "Sahagún", "Montelíbano", "Tierralta", "Puerto Libertador", "Ayapel", "Chinú" ]
cundinamarca_provinces = [ "Bogotá", "Soacha", "Chía", "Zipaquirá", "Girardot", "Facatativá", "Mosquera", "Madrid", "Funza", "Fusagasugá" ]
guaviare_provinces = [ "San José del Guaviare", "Calamar", "El Retorno", "Miraflores" ]
huila_provinces = [ "Neiva", "Pitalito", "Garzón", "Campoalegre", "La Plata", "Gigante", "Aipe", "Tarqui", "Baraya", "Yaguará" ]
la_guajira_provinces = [ "Riohacha", "Maicao", "Uribia", "Manaure", "Fonseca", "Barrancas", "Dibulla", "San Juan del Cesar", "Hatonuevo", "Albania" ]
magdalena_provinces = [ "Santa Marta", "Ciénaga", "Santa Ana", "Aracataca", "Fundación", "Plato", "Pivijay", "El Banco", "Zona Bananera", "Algarrobo" ]
meta_provinces = [ "Villavicencio", "Acacías", "Granada", "Restrepo", "San Martín", "San Juan de Arama", "Lejanías", "Castilla la Nueva", "El Castillo", "Uribe", "Barranca de Upía", "Cumaral", "Puerto Gaitán", "Puerto López", "Puerto Lleras" ]
narino_provinces = [ "Pasto", "Tumaco", "Ipiales", "Túquerres", "Samaniego", "La Unión", "Iles", "Chachagüí", "San Juan de Pasto", "Taminango", "Colón", "San Pablo", "El Tablón de Gómez", "Aldana", "Cumbal" ]
norte_santander_provinces = [ "Cúcuta", "Ocaña", "Pamplona", "Villa del Rosario", "Los Patios", "El Zulia", "Chinácota", "Puerto Santander", "Tibú", "Cáchira", "Salazar de Las Palmas", "La Esperanza", "San Cayetano", "El Carmen", "Villa Caro" ]
putumayo_provinces = [ "Mocoa", "Sibundoy", "Orito", "Puerto Asís", "San Francisco", "Villagarzón", "Valle del Guamuez", "San Miguel", "Colón", "Puerto Caicedo", "Puerto Guzmán", "Puerto Leguízamo", "Santiago", "San Pedro", "Puerto Guzmán" ]
quindio_provinces = [ "Armenia", "Calarcá", "La Tebaida", "Montenegro", "Quimbaya", "Salento" ]
risaralda_provinces = [ "Pereira", "Dosquebradas", "La Virginia", "Santa Rosa de Cabal", "Belén de Umbría", "Marsella", "Quinchía", "Apía", "Guática" ]
santander_provinces = [ "Bucaramanga", "Barrancabermeja", "San Gil", "Socorro", "Girón", "Piedecuesta", "Floridablanca", "Málaga", "Cimitarra", "Guadalupe" ]
sucre_provinces = [ "Sincelejo", "Corozal", "Tolú", "San Onofre", "Coveñas", "Morroa", "Sampués", "Palmito", "Guaranda", "Majagual" ]
tolima_provinces = [ "Ibagué", "Espinal", "Girardot", "Honda", "Líbano", "Mariquita", "Melgar", "Purificación", "Rovira", "Sahagún" ]
valle_del_cauca_provinces = [ "Cali", "Buenaventura", "Palmira", "Tuluá", "Yumbo", "Cartago", "Buga", "Candelaria", "Jamundí", "Florida" ]
vaupes_provinces = [ "Mitú", "Carurú", "Taraira", "Pacoa", "Yavaraté" ]
vichada_provinces = [ "Puerto Carreño", "La Primavera", "Santa Rosalía", "Cumaribo" ]

amazonas_provinces.each do |province|
  department_amazonas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

antioquia_provinces.each do |province|
  department_antioquia.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

arauca_provinces.each do |province|
  department_arauca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

atlantico_provinces.each do |province|
  department_atlantico.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

bogota_localidades.each do |province|
  department_bogota.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

bolivar_provinces.each do |province|
  department_bolivar.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

boyaca_provinces.each do |province|
  department_boyaca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

caldas_provinces.each do |province|
  department_caldas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

caqueta_provinces.each do |province|
  department_caqueta.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

casanare_provinces.each do |province|
  department_casanare.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cauca_provinces.each do |province|
  department_cauca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cesar_provinces.each do |province|
  department_cesar.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

choco_provinces.each do |province|
  department_choco.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cordoba_provinces.each do |province|
  department_cordoba.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cundinamarca_provinces.each do |province|
  department_cundinamarca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

guaviare_provinces.each do |province|
  department_guaviare.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

huila_provinces.each do |province|
  department_huila.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

la_guajira_provinces.each do |province|
  department_guajira.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

magdalena_provinces.each do |province|
  department_magdalena.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

meta_provinces.each do |province|
  department_meta.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

narino_provinces.each do |province|
  department_narino.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

norte_santander_provinces.each do |province|
  department_norte_santander.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

putumayo_provinces.each do |province|
  department_putumayo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

quindio_provinces.each do |province|
  department_quindio.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

risaralda_provinces.each do |province|
  department_risaralda.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

santander_provinces.each do |province|
  department_santander.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

sucre_provinces.each do |province|
  department_sucre.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tolima_provinces.each do |province|
  department_tolima.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

valle_del_cauca_provinces.each do |province|
  department_valle_cauca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

vaupes_provinces.each do |province|
  department_vaupes.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

vichada_provinces.each do |province|
  department_vichada.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Chile
department_arica_parinacota = Department.find_by(name: "Arica y Parinacota")
department_tarapaca = Department.find_by(name: "Tarapacá")
department_antofagasta = Department.find_by(name: "Antofagasta")
department_atacama = Department.find_by(name: "Atacama")
department_coquimbo = Department.find_by(name: "Coquimbo")
department_valparaiso = Department.find_by(name: "Valparaíso")
department_region_metropolitana = Department.find_by(name: "Región Metropolitana de Santiago")
department_libertador = Department.find_by(name: "Libertador General Bernardo O'Higgins")
department_maule = Department.find_by(name: "Maule")
department_nuble = Department.find_by(name: "Ñuble")
department_biobio = Department.find_by(name: "Biobío")
department_araucania = Department.find_by(name: "La Araucanía")
department_rios = Department.find_by(name: "Los Ríos")
department_lagos = Department.find_by(name: "Los Lagos")
department_aysen = Department.find_by(name: "Aysén del General Carlos Ibáñez del Campo")
department_magallanes = Department.find_by(name: "Magallanes y de la Antártica Chilena")

arica_parinacota_provinces = [ "Arica", "Parinacota" ]
tarapaca_provinces = [ "Iquique", "Tamarugal" ]
antofagasta_provinces = [ "Antofagasta", "El Loa", "Tocopilla" ]
atacama_provinces = [ "Chañaral", "Copiapó", "Huasco" ]
coquimbo_provinces = [ "Elqui", "Limarí", "Choapa" ]
valparaiso_provinces = [ "Valparaíso", "Isla de Pascua", "Los Andes", "Petorca", "Quillota", "San Antonio", "San Felipe de Aconcagua", "Marga Marga" ]
metropolitana_provinces = [ "Santiago", "Cordillera", "Chacabuco", "Maipo", "Melipilla", "Talagante" ]
ohiggins_provinces = [ "Cachapoal", "Cardenal Caro", "Colchagua" ]
maule_provinces = [ "Cauquenes", "Curicó", "Linares", "Talca" ]
nuble_provinces = [ "Diguillín", "Itata", "Punilla" ]
biobio_provinces = [ "Arauco", "Biobío", "Concepción", "Ñuble" ]
araucania_provinces = [ "Cautín", "Malleco" ]
los_rios_provinces = ["Valdivia","Ranco" ]
los_lagos_provinces = [ "Llanquihue", "Chiloé", "Osorno", "Palena" ]
aysen_provinces = [ "Aysén", "Capitán Prat" ]
magallanes_provinces = [ "Magallanes", "Antártica Chilena", "Tierra del Fuego", "Última Esperanza" ]

arica_parinacota_provinces.each do |province|
  department_arica_parinacota.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tarapaca_provinces.each do |province|
  department_tarapaca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

antofagasta_provinces.each do |province|
  department_antofagasta.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

atacama_provinces.each do |province|
  department_atacama.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

coquimbo_provinces.each do |province|
  department_coquimbo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

valparaiso_provinces.each do |province|
  department_valparaiso.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

metropolitana_provinces.each do |province|
  department_region_metropolitana.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

ohiggins_provinces.each do |province|
  department_libertador.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

maule_provinces.each do |province|
  department_maule.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

nuble_provinces.each do |province|
  department_nuble.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

biobio_provinces.each do |province|
  department_biobio.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

araucania_provinces.each do |province|
  department_araucania.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

los_rios_provinces.each do |province|
  department_rios.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

los_lagos_provinces.each do |province|
  department_lagos.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

aysen_provinces.each do |province|
  department_aysen.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

magallanes_provinces.each do |province|
  department_magallanes.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Ecuador
department_azuay = Department.find_by(name: "Azuay")
department_bolivar = Department.find_by(name: "Bolívar")
department_canar = Department.find_by(name: "Cañar")
department_carchi= Department.find_by(name: "Carchi")
department_chimborazo = Department.find_by(name: "Chimborazo")
department_cotopaxi = Department.find_by(name: "Cotopaxi")
department_el_oro = Department.find_by(name: "El Oro")
department_esmeralda = Department.find_by(name: "Esmeraldas")
department_galapagos = Department.find_by(name: "Galápagos")
department_guayas = Department.find_by(name: "Guayas")
department_imbabura = Department.find_by(name: "Imbabura")
department_loja = Department.find_by(name: "Loja")
department_los_rios = Department.find_by(name: "Los Ríos")
department_manabi = Department.find_by(name: "Manabí")
department_morona_santiago = Department.find_by(name: "Morona-Santiago")
department_napo = Department.find_by(name: "Napo")
department_orellana = Department.find_by(name: "Orellana")
department_pastaza = Department.find_by(name: "Pastaza")
department_pichincha = Department.find_by(name: "Pichincha")
department_santa_elena = Department.find_by(name: "Santa Elena")
department_santo_domingo = Department.find_by(name: "Santo Domingo de los Tsáchilas")
department_sucumbios = Department.find_by(name: "Sucumbíos")
department_tungurahua = Department.find_by(name: "Tungurahua")
department_zamora_chinchipe = Department.find_by(name: "Zamora-Chinchipe")

azuay_provinces = [ "Cuenca", "Gualaceo", "Paute", "Sígsig", "Chordeleg", "El Pan", "Sevilla de Oro", "Guachapala", "Camilo Ponce Enríquez", "La Troncal", "Suscal" ]
bolivar_provinces = [ "Guaranda", "Chillanes", "Chimbo", "Echeandía", "San Miguel", "Las Naves" ]
canar_provinces = [ "Azogues", "Biblián", "Cañar", "La Troncal", "El Tambo", "Déleg", "Suscal" ]
carchi_provinces = [ "Tulcán", "Bolívar", "Espejo", "Mira", "Montúfar", "San Pedro de Huaca" ]
chimborazo_provinces = [ "Riobamba", "Alausí", "Colta", "Chambo", "Chunchi", "Guamote", "Guano", "Pallatanga", "Penipe" ]
cotopaxi_provinces = [ "Latacunga", "La Maná", "Pujilí", "Saquisilí", "Sigchos" ]
el_oro_provinces = [ "Machala", "Arenillas", "Atahualpa", "Balsas", "Chilla", "El Guabo", "Huaquillas", "Marcabelí", "Pasaje", "Piñas", "Portovelo", "Santa Rosa", "Zaruma" ]
esmeraldas_provinces = [ "Esmeraldas", "Atacames", "Eloy Alfaro", "Muisne", "Quinindé", "San Lorenzo" ]
galapagos_provinces = [ "Galápagos" ]
guayas_provinces = [ "Guayaquil", "Samborondón", "Durán", "Milagro", "Daule", "Salitre", "Nobol", "El Empalme", "Yaguachi", "El Triunfo", "Isidro Ayora", "Bucay", "Colimes", "Balzar", "Santa Lucía", "Palestina", "Naranjal", "Alfredo Baquerizo Moreno (Jujan)", "Playas", "Simón Bolívar", "Coronel Marcelino Maridueña" ]
imbabura_provinces = [ "Ibarra", "Antonio Ante", "Cotacachi", "Otavalo", "Pimampiro", "San Miguel de Urcuquí" ]
loja_provinces = [ "Loja", "Calvas", "Catamayo", "Celica", "Chaguarpamba", "Espíndola", "Gonzanamá", "Macará", "Olmedo", "Paltas", "Puyango", "Quilanga", "Saraguro", "Sozoranga", "Zapotillo" ]
los_rios_provinces = [ "Baba", "Babahoyo", "Buena Fe", "Mocache", "Montalvo", "Palenque", "Puebloviejo", "Quevedo", "Quinsaloma", "Urdaneta", "Valencia", "Ventanas", "Vinces" ]
manabi_provinces = [ "Bolívar", "Chone", "El Carmen", "Flavio Alfaro", "Jama", "Jaramijó", "Jipijapa", "Junín", "Manta", "Montecristi", "Olmedo", "Paján", "Pedernales", "Pichincha", "Portoviejo", "Rocafuerte", "San Vicente", "Santa Ana", "Sucre", "Tosagua" ]
morona_santiago_provinces = [ "Gualaquiza", "Huamboya", "Limón Indanza", "Logroño", "Morona", "Pablo Sexto", "Palora", "San Juan Bosco", "Santiago", "Sucúa", "Taisha", "Tiwintza" ]
napo_provinces = [ "Tena", "Archidona", "El Chaco", "Quijos" ]
orellana_provinces = [ "Orellana", "La Joya de los Sachas", "Loreto", "Aguarico" ]
pastaza_provinces = [ "Pastaza", "Mera", "Santa Clara", "Arajuno" ]
pichincha_provinces = [ "Quito", "Cayambe", "Mejía", "Pedro Moncayo", "Rumiñahui", "San Miguel de los Bancos", "Pedro Vicente Maldonado", "Puerto Quito" ]
santa_elena_provinces = [ "Santa Elena" ]
santo_domingo_provinces = [ "Santo Domingo de los Tsáchilas" ]
sucumbios_provinces = [ "Sucumbíos" ]
tungurahua_provinces = [ "Tungurahua" ]
zamora_chinchipe_provinces = [ "Zamora", "Chinchipe" ]

azuay_provinces.each do |province|
  department_azuay.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

bolivar_provinces.each do |province|
  department_bolivar.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

canar_provinces.each do |province|
  department_canar.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

carchi_provinces.each do |province|
  department_carchi.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

chimborazo_provinces.each do |province|
  department_chimborazo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cotopaxi_provinces.each do |province|
  department_cotopaxi.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

el_oro_provinces.each do |province|
  department_el_oro.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

esmeraldas_provinces.each do |province|
  department_esmeralda.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

galapagos_provinces.each do |province|
  department_galapagos.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

guayas_provinces.each do |province|
  department_guayas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

imbabura_provinces.each do |province|
  department_imbabura.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

loja_provinces.each do |province|
  department_loja.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

los_rios_provinces.each do |province|
  department_los_rios.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

manabi_provinces.each do |province|
  department_manabi.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

morona_santiago_provinces.each do |province|
  department_morona_santiago.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

napo_provinces.each do |province|
  department_napo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

orellana_provinces.each do |province|
  department_orellana.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

pastaza_provinces.each do |province|
  department_pastaza.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

pichincha_provinces.each do |province|
  department_pichincha.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

santa_elena_provinces.each do |province|
  department_santa_elena.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

santo_domingo_provinces.each do |province|
  department_santo_domingo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

sucumbios_provinces.each do |province|
  department_sucumbios.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tungurahua_provinces.each do |province|
  department_tungurahua.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

zamora_chinchipe_provinces.each do |province|
  department_zamora_chinchipe.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Guatemala
department_alta_verapaz = Department.find_by(name: "Alta Verapaz")
department_baja_verapaz= Department.find_by(name: "Baja Verapaz")
department_chimaltenago = Department.find_by(name: "Chimaltenago")
department_chiquimula = Department.find_by(name: "Chiquimula")
department_escuintla = Department.find_by(name: "Escuintla")
department_huehuetenango = Department.find_by(name: "Huehuetenango")
department_izabal = Department.find_by(name: "Izabal")
department_jalapa = Department.find_by(name: "Jalapa")
department_jutiapa = Department.find_by(name: "Jutiapa")
department_peten = Department.find_by(name: "Petén")
department_quetzaltenango = Department.find_by(name: "Quetzaltenango")
department_quinche= Department.find_by(name: "Quiché")
department_retalhuleu = Department.find_by(name: "Retalhuleu")
department_sacatepequez = Department.find_by(name: "Sacatepequez")
department_san_marcos = Department.find_by(name: "San Marcos")
department_santa_rosa = Department.find_by(name: "Santa Rosa")
department_solola= Department.find_by(name: "Sololá")
department_suchitepequez = Department.find_by(name: "Suchitepequez")
department_totonicapan = Department.find_by(name: "Totonicapán")
department_zacapa = Department.find_by(name: "Zacapa")

provincia_alta_verapaz = [ "Cobán", "San Cristóbal Verapaz", "Tactic", "Tamahú", "Tucurú", "Santa Cruz Verapaz", "San Miguel Tucurú", "Panzós", "Senahú", "Santa María Cahabón", "Lanquín", "Chahal", "Chisec", "Santa Catalina La Tinta", "Raxruhá" ]
provincia_baja_verapaz = [ "Salamá", "San Miguel Chicaj", "Rabinal", "Cubulco", "Granados", "Santa Cruz El Chol" ]
departamento_chimaltenango = [ "Chimaltenango", "San José Poaquil", "San Martín Jilotepeque", "Comalapa", "Santa Apolonia", "Tecpán Guatemala", "Patzún", "Pochuta", "Patzicía", "Santa Cruz Balanyá", "Acatenango", "San Pedro Yepocapa", "San Andrés Itzapa", "Parramos", "Zaragoza", "El Tejar" ]
departamento_chiquimula = [ "Chiquimula", "San José La Arada", "San Juan Hermita", "Jocotán", "Camotán", "Olopa", "Esquipulas", "Concepción Las Minas", "Quetzaltepeque", "San Jacinto", "Ipala" ]
escuintla_provinces = [ "Escuintla", "Santa Lucía Cotzumalguapa", "La Democracia", "Siquinalá", "Masagua", "Tiquisate", "La Gomera", "Guanagazapa", "San José", "Iztapa", "Palín", "San Vicente Pacaya", "Nueva Concepción" ]
huehuetenango_provinces = [ "Huehuetenango", "Chiantla", "Cuilco", "Jacaltenango", "La Democracia", "La Libertad", "Malacatancito", "Nentón", "San Mateo Ixtatán", "San Pedro Necta", "San Pedro Soloma", "Santa Bárbara", "Todos Santos Cuchumatán" ]
izabal_provinces = [ "El Estor", "Livingston", "Los Amates", "Morales", "Puerto Barrios" ]
jalapa_provinces = [ "Jalapa", "San Pedro Pinula", "San Luis Jilotepeque", "San Manuel Chaparrón", "San Carlos Alzatate", "Monjas" ]
peten_provinces = [ "Flores", "San Benito", "San Francisco", "San José", "San Andrés", "La Libertad", "Santa Ana", "Sayaxché", "Melchor de Mencos", "Dolores" ]
quetzaltenango_provinces = [ "Quetzaltenango", "Salcajá", "Olintepeque", "San Carlos Sija", "Sibilia", "Cabricán", "Cajolá", "San Miguel Siguilá", "Ostuncalco", "San Mateo", "Concepción Chiquirichapa", "San Martín Sacatepéquez", "Almolonga", "Cantel", "Huitán", "Zunil", "El Palmar", "Coatepeque", "Génova", "Flores Costa Cuca", "La Esperanza", "Palestina de los Altos" ]
quiche_provinces = [ "Santa Cruz del Quiché", "Chiché", "Chinique", "Zacualpa", "Chajul", "Chichicastenango", "Patzité", "San Antonio Ilotenango", "San Bartolomé Jocotenango", "San Juan Cotzal", "San Pedro Jocopilas", "Uspantán", "Sacapulas", "San Andrés Sajcabajá", "San Juan Ixcoy", "San Miguel Uspantán", "Cunén", "Joyabaj", "Nebaj", "San Pedro Jocopilas" ]
retalhuleu_provinces = [ "Retalhuleu", "San Andrés Villa Seca", "Champerico", "Nuevo San Carlos", "El Asintal", "San Felipe", "San Martín Zapotitlán" ]
sacatepequez_provinces = [ "Antigua Guatemala", "Ciudad Vieja", "Jocotenango", "Magdalena Milpas Altas", "Pastores", "San Antonio Aguas Calientes", "San Bartolomé Milpas Altas", "San Lucas Sacatepéquez", "San Miguel Dueñas", "Santa Catarina Barahona", "Santa Lucía Milpas Altas", "Santa María de Jesús", "Santiago Sacatepéquez", "Santo Domingo Xenacoj", "Sumpango" ]
san_marcos_provinces = [ "San Marcos", "San Pedro Sacatepéquez", "San Antonio Sacatepéquez", "Comitancillo", "San Miguel Ixtahuacán", "Concepción Tutuapa", "Tacaná", "Sibinal", "Tajumulco", "Tejutla", "San Rafael Pie de la Cuesta", "Nuevo Progreso", "El Tumbador", "El Rodeo" ]
santa_rosa_provinces = [ "Cuilapa", "Casillas", "San Rafael Las Flores", "San Juan Tecuaco", "Chiquimulilla", "Taxisco", "Santa María Ixhuatán", "Guazacapán", "Santa Cruz Naranjo", "Pueblo Nuevo Viñas" ]
suchitepequez_provinces = [ "Mazatenango", "Cuyotenango", "San Francisco Zapotitlán", "San Bernardino", "San José El Ídolo", "San Antonio Suchitepéquez", "San Miguel Panán", "San Gabriel", "Chicacao", "Patulul", "Santa Bárbara", "San Juan Bautista", "Santo Domingo Suchitepéquez", "San Lorenzo" ]
totonicapan_provinces = [ "Totonicapán", "San Cristóbal Totonicapán", "San Bartolo", "San Francisco El Alto", "Santa Lucía La Reforma", "San Andrés Xecul", "Momostenango" ]
zacapa_provinces = [ "Zacapa", "Estanzuela", "Río Hondo", "Gualán", "Teculután", "Usumatlán", "Cabañas" ]


provincia_alta_verapaz.each do |province|
  department_alta_verapaz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincia_baja_verapaz.each do |province|
  department_baja_verapaz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

departamento_chimaltenango.each do |province|
  department_chimaltenago.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

departamento_chiquimula.each do |province|
  department_chiquimula.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

escuintla_provinces.each do |province|
  department_escuintla.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

huehuetenango_provinces.each do |province|
  department_huehuetenango.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

izabal_provinces.each do |province|
  department_izabal.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

jalapa_provinces.each do |province|
  department_jalapa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

peten_provinces.each do |province|
  department_peten.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

quetzaltenango_provinces.each do |province|
  department_quetzaltenango.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

quiche_provinces.each do |province|
  department_quinche.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

retalhuleu_provinces.each do |province|
  department_retalhuleu.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

sacatepequez_provinces.each do |province|
  department_sacatepequez.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

san_marcos_provinces.each do |province|
  department_san_marcos.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

santa_rosa_provinces.each do |province|
  department_santa_rosa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

suchitepequez_provinces.each do |province|
  department_suchitepequez.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

totonicapan_provinces.each do |province|
  department_totonicapan.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

zacapa_provinces.each do |province|
  department_zacapa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end
# Departaments from España
department_curuña = Department.find_by(name: "A Coruña")
department_alvara = Department.find_by(name: "Alava")
department_albacete = Department.find_by(name: "Albacete")
department_alicante = Department.find_by(name: "Alicante")
department_almeria = Department.find_by(name: "Almería")
department_asturias= Department.find_by(name: "Asturias")
department_avila = Department.find_by(name: "Avila")
department_badajoz = Department.find_by(name: "Badajoz")
department_barcelona= Department.find_by(name: "Barcelona")
department_burgos = Department.find_by(name: "Burgos")
department_caceres = Department.find_by(name: "Cáceres")
department_cadiz = Department.find_by(name: "Cádiz")

coruna_provinces = [ "A Coruña", "Ferrol", "Santiago de Compostela", "Lugo", "Ourense", "Pontevedra" ]
alava_provinces = [ "Vitoria-Gasteiz", "Llodio", "Amurrio", "Salvatierra", "Laudio", "Elciego" ]
albacete_provinces = [ "Albacete", "Hellín", "Villarrobledo", "Almansa", "La Roda", "Caudete" ]
alicante_provinces = [ "Alicante", "Elche", "Torrevieja", "Orihuela", "Benidorm", "Alcoy" ]
almeria_provinces = [ "Almería", "Roquetas de Mar", "El Ejido", "Níjar", "Adra", "Vícar" ]
asturias_provinces = [ "Oviedo", "Gijón", "Avilés", "Siero", "Langreo", "Mieres" ]
avila_provinces = [ "Ávila", "Arévalo", "El Barco de Ávila", "Las Navas del Marqués", "Cebreros", "Candeleda" ]
badajoz_provinces = [ "Badajoz", "Mérida", "Don Benito", "Almendralejo", "Villanueva de la Serena", "Zafra" ]
barcelona_provinces = [ "Barcelona", "Badalona", "Hospitalet de Llobregat", "Sabadell", "Terrassa", "Mataró" ]
burgos_provinces = [ "Burgos", "Aranda de Duero", "Miranda de Ebro" ]
caceres_provinces = [ "Cáceres", "Plasencia", "Navalmoral de la Mata" ]
cadiz_provinces = [ "Cádiz", "Algeciras", "Jerez de la Frontera", "San Fernando", "El Puerto de Santa María" ]


coruna_provinces.each do |province|
  department_curuña.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

alava_provinces.each do |province|
  department_alvara.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

albacete_provinces.each do |province|
  department_albacete.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

alicante_provinces.each do |province|
  department_alicante.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

almeria_provinces.each do |province|
  department_almeria.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

asturias_provinces.each do |province|
  department_asturias.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

avila_provinces.each do |province|
  department_avila.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

badajoz_provinces.each do |province|
  department_badajoz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

barcelona_provinces.each do |province|
  department_barcelona.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

burgos_provinces.each do |province|
  department_burgos.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

caceres_provinces.each do |province|
  department_caceres.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cadiz_provinces.each do |province|
  department_cadiz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Uruguay
department_artigas = Department.find_by(name: "Artigas")
department_canelones = Department.find_by(name: "Canelones")
department_cerro_largo= Department.find_by(name: "Cerro Largo")
department_colonia= Department.find_by(name: "Colonia")
department_durazno= Department.find_by(name: "Durazno")
department_flores = Department.find_by(name: "Flores")
department_florida= Department.find_by(name: "Florida")
department_lavalleja = Department.find_by(name: "Lavalleja")
department_maldonado= Department.find_by(name: "Maldonado")
department_montivideo = Department.find_by(name: "Montevideo")
department_paysandu = Department.find_by(name: "Paysandú")
department_rio_negro= Department.find_by(name: "Río Negro")
department_rivera = Department.find_by(name: "Rivera")
department_rocha = Department.find_by(name: "Rocha")
department_salto = Department.find_by(name: "Salto")
department_san_jose = Department.find_by(name: "San José")
department_soriano = Department.find_by(name: "Soriano")
department_tacurembo = Department.find_by(name: "Tacuarembó")
department_treinta_tres = Department.find_by(name: "Treinta y Tres")

artiga_provinces = [ "Artigas", "Bella Unión", "Tomás Gomensoro", "Baltasar Brum", "Topador", "Diego Lamas", "Colonia Palma", "Sequeira", "Rincón de Valentín" ]
canelone_provinces = [ "Canelones", "Santa Lucía", "Las Piedras", "Pando", "Atlántida", "La Paz", "Toledo", "Progreso", "Ciudad de la Costa", "San Ramón", "Sauce", "Santa Rosa", "Empalme Olmos", "Joaquín Suárez", "Tala" ]
cerro_largo_provinces = [ "Melo", "Aceguá", "Fraile Muerto", "Río Branco", "Arévalo", "Tupambaé", "Vichadero", "Isidoro Noblía", "Río Negro" ]
colonia_provinces = [ "Colonia del Sacramento", "Nueva Helvecia", "Carmelo", "Juan Lacaze", "Rosario", "Tarariras", "Ombúes de Lavalle", "Florencio Sánchez", "Colonia Valdense", "Conchillas", "Nueva Palmira", "Colonia Miguelete" ]
durazno_provinces = [ "Durazno", "Sarandí del Yí", "Carmen", "Blanquillo", "La Paloma", "San Jorge", "Carlos Reyles", "Centenario", "Villa del Carmen", "Cerro Chato", "Santa Bernardina" ]
flores_provinces = [ "Trinidad", "Florida", "Sarandí Grande", "Ismael Cortinas", "Andresito", "Villa 25 de Mayo", "La Casilla", "Cerro Colorado" ]
florida_provinces = [ "Florida", "Sarandí Grande", "Casupa", "Cardal", "Fray Marcos", "Sarandí del Yí", "Veinticinco de Mayo" ]
lavalleja_provinces = [ "Minas", "José Pedro Varela", "Solís de Mataojo", "Mariscala", "Pirarajá", "Villa Serrana", "Batlle y Ordóñez" ]
maldonado_provinces = [ "Maldonado", "Punta del Este", "San Carlos", "Piriápolis", "Pan de Azúcar", "Aiguá", "Solís Grande", "Gregorio Aznárez", "José Ignacio", "Garzón" ]
montevideo_provinces = [ "Montevideo", "Ciudad de la Costa", "Pocitos", "Punta Carretas", "Carrasco", "Buceo", "Malvín", "Sayago", "Paso Molino", "Aguada" ]
paysandu_provinces = [ "Paysandú", "Guichón", "Quebracho", "Chapicuy", "Porvenir", "Tambores", "También", "Merinos", "Villa María", "El Eucalipto" ]
rio_negro_provinces= [ "Fray Bentos", "Young", "San Javier", "Nuevo Berlín", "Algorta", "Las Cañas", "El Ombú", "Grecco", "San Javier y Yacaré", "Mercedes" ]
rivera_provinces = [ "Rivera", "Tranqueras", "Vichadero", "Minas de Corrales", "Pueblo de Sequeira", "La Pedrera", "Lapuente", "Cerro Pelado", "Lago Merín", "Villa Minas", "Paso Ataques" ]
rocha_provinces = [ "Rocha", "Chuy", "La Paloma", "Castillos", "Velázquez", "Lascano", "Cebollatí", "Aiguá", "Punta del Diablo", "Santa Teresa" ]
salto_provinces = [ "Salto", "Concordia", "Bella Unión", "Daymán", "Arapey", "Sarandí de Arapey", "Colonia Lavalleja", "Pueblo Belén", "Villa Constitución", "Fernández", "Villa Quebracho" ]
san_jose_provinces = [ "San José de Mayo", "Libertad", "Rodríguez", "Ciudad del Plata", "Rafael Perazza", "Ecilda Paullier", "Capurro", "Playa Pascual", "Santa Mónica" ]
soriano_provinces = [ "Mercedes", "Dolores", "Cardona", "Nueva Palmira", "Bella Vista", "Palmitas", "Santa Catalina", "Agraciada", "Egaña" ]
tacuarembo_provinces = [ "Tacuarembó", "Paso de los Toros", "San Gregorio de Polanco", "Ansina", "Rincón del Bonete", "Piedra Sola", "Curtina", "Caraguata", "Tambores" ]
treinta_tres_provinces = [ "Treinta y Tres", "Vergara", "Santa Clara de Olimar", "Río Branco", "Melo", "Aceguá", "Arrozal Treinta y Tres", "Poblado Vichadero" ]

artiga_provinces.each do |province|
  department_artigas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

canelone_provinces.each do |province|
  department_canelones.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cerro_largo_provinces.each do |province|
  department_cerro_largo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

colonia_provinces.each do |province|
  department_colonia.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

durazno_provinces.each do |province|
  department_durazno.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

flores_provinces.each do |province|
  department_flores.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

florida_provinces.each do |province|
  department_florida.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

lavalleja_provinces.each do |province|
  department_lavalleja.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

maldonado_provinces.each do |province|
  department_maldonado.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

montevideo_provinces.each do |province|
  department_montivideo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

paysandu_provinces.each do |province|
  department_paysandu.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

rio_negro_provinces.each do |province|
  department_rio_negro.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

rivera_provinces.each do |province|
  department_rivera.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

salto_provinces.each do |province|
  department_salto.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

san_jose_provinces.each do |province|
  department_san_jose.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

soriano_provinces.each do |province|
  department_soriano.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

tacuarembo_provinces.each do |province|
  department_tacurembo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

treinta_tres_provinces.each do |province|
  department_treinta_tres.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from Costa Rica
department_alajuela = Department.find_by(name: "Alajuela")
department_cartago = Department.find_by(name: "Cartago")
department_guanacaste = Department.find_by(name: "Guanacaste")
department_heredia = Department.find_by(name: "Heredia")
department_limon = Department.find_by(name: "Limón")
department_puntarenas = Department.find_by(name: "Puntarenas")
department_san_jose = Department.find_by(name: "San José")

alajuela_provinces = [ "Alajuela", "San Ramón", "Grecia", "San Mateo", "Atenas", "Naranjo", "Palmares", "Poás", "Orotina", "San Carlos", "Zarcero", "Valverde Vega", "Upala", "Los Chiles", "Guatuso" ]
cartago_provinces = [ "Cartago", "Paraíso", "La Unión", "Jiménez", "Turrialba", "Alvarado", "Oreamuno", "El Guarco" ]
guanacaste_provinces = [ "Liberia", "Nicoya", "Santa Cruz", "Bagaces", "Carrillo", "Cañas", "Abangares", "Tilarán", "Nandayure", "La Cruz", "Hojancha" ]
heredia_provinces = [ "Heredia", "Barva", "Santo Domingo", "Santa Bárbara", "San Rafael", "San Isidro", "Belén", "Flores", "San Pablo", "Sarapiquí" ]
limon_provinces = [ "Limón", "Guácimo", "Pococí", "Siquirres", "Talamanca", "Matina" ]
puntarenas_provinces = [ "Puntarenas", "Esparza", "Buenos Aires", "Montes de Oro", "Osa", "Quepos", "Golfito", "Coto Brus", "Parrita", "Corredores", "Garabito" ]
san_jose_provinces = [ "San José", "Escazú", "Desamparados", "Puriscal", "Tarrazú", "Aserrí", "Mora", "Goicoechea", "Santa Ana", "Alajuelita", "Vázquez de Coronado", "Acosta", "Tibás", "Moravia", "Montes de Oca", "Turrubares", "Dota", "Curridabat", "Pérez Zeledón", "León Cortés Castro" ]

alajuela_provinces.each do |province|
  department_alajuela.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

cartago_provinces.each do |province|
  department_cartago.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

guanacaste_provinces.each do |province|
  department_guanacaste.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

heredia_provinces.each do |province|
  department_heredia.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

limon_provinces.each do |province|
  department_limon.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

puntarenas_provinces.each do |province|
  department_puntarenas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

san_jose_provinces.each do |province|
  department_san_jose.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from República Dominicana
department_azua = Department.find_by(name: "Azua")
department_bahoruco = Department.find_by(name: "Bahoruco")
department_barahona = Department.find_by(name: "Barahona")
department_dajabon = Department.find_by(name: "Dajabón")
department_duarte = Department.find_by(name: "Duarte")
department_seibo = Department.find_by(name: "El Seibo")
department_elias_pina = Department.find_by(name: "Elías Piña")
department_espaillat = Department.find_by(name: "Espaillat")
department_hato_mayor = Department.find_by(name: "Hato Mayor")
department_hermanas= Department.find_by(name: "Hermanas Mirabal")
department_independencia = Department.find_by(name: "Independencia")
department_monte_plata = Department.find_by(name: "Monte Plata")
department_pedernales = Department.find_by(name: "Pedernales")
department_peravia = Department.find_by(name: "Peravia")
department_puerto_plata = Department.find_by(name: "Puerto Plata")
department_samana = Department.find_by(name: "Samaná")
department_san_juan= Department.find_by(name: "San Juan")
department_santiago = Department.find_by(name: "Santiago")

provinces_azua = [ "Azua", "Estebanía", "Guayabal", "Las Charcas", "Las Yayas de Viajama", "Padre Las Casas", "Peralta", "Pueblo Viejo", "Sabana Yegua", "Tábara Arriba", "Villa Tabara Arriba" ]
provinces_bahoruco = [ "Neiba", "Galván", "Los Ríos", "Tamayo", "Villa Jaragua" ]
provinces_barahona = [ "Barahona", "Cabral", "El Peñón", "Enriquillo", "Jaquimeyes", "La Ciénaga", "Las Salinas", "Paraíso", "Polo", "Vicente Noble" ]
provinces_dajabon = [ "Dajabón", "El Pino", "Loma de Cabrera", "Partido", "Restauración" ]
provinces_duarte = [ "San Francisco de Macorís", "Las Guáranas", "Pimentel", "Villa Riva", "Castillo" ]
provinces_el_seibo = [ "El Seibo", "Miches" ]
provinces_elias_pina = [ "Elías Piña" ]
provinces_espaillat = [ "Moca" ]
provinces_hato_mayor = [ "Hato Mayor" ]
provinces_hermanas_mirabal = [ "Hermanas Mirabal" ]
provinces_independencia = [ "Independencia" ]
provinces_monte_plata = [ "Monte Plata", "Bayaguana", "Sabana Grande de Boyá", "Yamasá", "Peralvillo", "Don Juan", "Gonzalo", "Chirino", "Boyá" ]
provinces_pedernales = [ "Pedernales", "Oviedo", "José Francisco Peña Gómez", "Juancho", "Mencía" ]
provinces_peravia = [ "Bani", "Nizao", "Sabana Buey", "Sabana Larga", "Villa Fundación", "Villa Sombrero", "Cambita Garabitos", "Matanzas" ]
provinces_puerto_plata = [ "San Felipe de Puerto Plata", "Altamira", "Guananico", "Imbert", "Los Hidalgos", "Luperón", "Sosúa", "Villa Isabela", "Villa Montellano" ]
provinces_samana = [ "Santa Bárbara de Samaná", "Las Terrenas", "Sánchez", "El Limón" ]
provinces_sanjuan = [ "San Juan de la Maguana", "Bohechío", "El Cercado", "Las Matas de Farfán", "Vallejuelo" ]
provinces_santiago = [ "Santiago de los Caballeros", "Bisonó", "Jánico", "Licey al Medio", "Puñal", "Sabana Iglesia", "San José de las Matas", "Tamboril", "Villa González" ]

provinces_azua.each do |province|
  department_azua.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_bahoruco.each do |province|
  department_bahoruco.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_barahona.each do |province|
  department_barahona.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_dajabon.each do |province|
  department_dajabon.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_duarte.each do |province|
  department_duarte.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_el_seibo.each do |province|
  department_seibo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_espaillat.each do |province|
  department_espaillat.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_hato_mayor.each do |province|
  department_hato_mayor.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_hermanas_mirabal.each do |province|
  department_hermanas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_independencia.each do |province|
  department_independencia.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_monte_plata.each do |province|
  department_monte_plata.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_pedernales.each do |province|
  department_pedernales.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_peravia.each do |province|
  department_peravia.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_puerto_plata.each do |province|
  department_puerto_plata.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_samana.each do |province|
  department_samana.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_sanjuan.each do |province|
  department_san_juan.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_santiago.each do |province|
  department_santiago.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from República Bolivia
department_chuquisaca = Department.find_by(name: "Chuquisaca")
department_la_paz = Department.find_by(name: "La Paz")
department_cochabamba = Department.find_by(name: "Cochabamba")
department_oruro = Department.find_by(name: "Oruro")
department_potosi = Department.find_by(name: "Potosí")
department_tarija= Department.find_by(name: "Tarija")
department_santa_cruz = Department.find_by(name: "Santa Cruz")
department_beni = Department.find_by(name: "Beni")
department_pando = Department.find_by(name: "Pando")

provincias_chuquisaca = [ "Oropeza", "Zudañez", "Juana Azurduy de Padilla", "Tomina", "Hernando Siles", "Yamparáez", "Azurduy", "Belisario Boeto" ]
provincias_la_paz = [ "Aroma", "Bautista Saavedra", "Caranavi", "Eliodoro Camacho", "Franz Tamayo", "Gualberto Villarroel", "Ingavi", "Inquisivi", "José Manuel Pando", "Larecaja", "Loayza", "Los Andes", "Manco Kapac", "Muñecas", "Nor Yungas", "Omasuyos", "Pacajes", "Pedro Domingo Murillo", "Sud Yungas" ]
provincias_cochabamba = [ "Arani", "Arque", "Ayopaya", "Bolívar", "Capinota", "Carrasco", "Cercado", "Chapare", "Esteban Arce", "Germán Jordán", "Mizque", "Narciso Campero", "Punata", "Quillacollo", "Tapacarí", "Tiraque" ]
provincias_oruro = [ "Cercado", "Carangas", "Eduardo Abaroa", "Ladislao Cabrera", "Litoral", "Pantaléon Dalence", "Poopó", "Sajama", "San Pedro de Totora", "Saucarí", "Sebastián Pagador" ]
provincias_potosi = [ "Alonso de Ibáñez", "Antonio Quijarro", "Bernardino Bilbao", "Charcas", "Chayanta", "Cornelio Saavedra", "Daniel Campos", "Enrique Baldivieso", "José María Linares", "Modesto Omiste", "Nor Chichas", "Rafael Bustillo", "Sur Chichas", "Tomás Frías" ]
provincias_tarija = [ "Aniceto Arce", "Burnet O'Connor", "Cercado", "Eustaquio Méndez", "Gran Chaco", "José María Avilés" ]
provincias_santa_cruz = [ "Andrés Ibáñez", "Ángel Sandoval", "Chiquitos", "Cordillera", "Florida", "Germán Busch", "Guarayos", "Ichilo", "Ignacio Warnes", "José Miguel de Velasco", "Ñuflo de Chávez", "Obispo Santistevan", "Sara", "Vallegrande" ]
provincias_beni = [ "Cercado", "Yacuma", "Moxos", "Marbán", "Mamoré", "Iténez", "José Ballivián", "Yacuíba", "Vaca Díez" ]
provincias_pando = [ "Manuripi", "Nicolás Suárez", "Federico Román", "Madre de Dios" ]


provincias_chuquisaca.each do |province|
  department_chuquisaca.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_la_paz.each do |province|
  department_la_paz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_cochabamba.each do |province|
  department_cochabamba.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_oruro.each do |province|
  department_oruro.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_potosi.each do |province|
  department_potosi.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_tarija.each do |province|
  department_tarija.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_santa_cruz.each do |province|
  department_santa_cruz.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_beni.each do |province|
  department_beni.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_pando.each do |province|
  department_pando.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

# Departaments from República Venezuela
department_amazonas = Department.find_by(name: "Amazonas")
department_anzoategui = Department.find_by(name: "Anzoátegui")
department_apure = Department.find_by(name: "Apure")
department_aragua = Department.find_by(name: "Aragua")
department_barinas = Department.find_by(name: "Barinas")
department_bolivar = Department.find_by(name: "Bolívar")
department_carabobo = Department.find_by(name: "Carabobo")
department_cojedes = Department.find_by(name: "Cojedes")
department_delta_amacuro = Department.find_by(name: "Delta Amacuro")
department_falcon = Department.find_by(name: "Falcón")
department_guarico = Department.find_by(name: "Guárico")
department_lara = Department.find_by(name: "Lara")
department_merida = Department.find_by(name: "Mérida")
department_monagas = Department.find_by(name: "Monagas")
department_portuguesa = Department.find_by(name: "Portuguesa")
department_sucre = Department.find_by(name: "Sucre")
department_tachira = Department.find_by(name: "Táchira")


provincias_amazonas = [ "atabapo", "atures", "autana", "manapiare", "maroa", "rio_negro" ]
provincias_anzoategui = [ "anzoategui", "freites", "guanta", "independencia", "juan_antonio_sotillo", "mcgregor", "miranda", "monagas", "pez", "pirtigua", "simon_bolivar", "simon_rodriguez" ]
provincias_apure = [ "achaguas", "biruaca", "muñoz", "paez", "pedro_camejo", "romulo_gallegos", "san_fernando" ]
provincias_aragua = [ "bolivar", "camatagua", "francisco_linares_alcantara", "jose_angel_lamas", "josé_félix_rivas", "josé_rafael_revenga", "libertador", "mario_brisson", "san_casimiro", "san_sebastian", "santiago_mariño", "santos_michelena", "sucre", "tovar", "urdaneta", "zamora" ]
provincias_barinas = [ "alberto_arvelo_torrealba", "andres_ereu", "antonio_jose_de_sucre", "arismendi", "barinas", "bolivar", "cruz_paredes", "ezequiel_zamora", "obispos", "pedraza", "rojas", "sosa", "sosa_molina" ]
provincias_bolivar = [ "angostura", "caroni", "cepeda", "heres", "padre_pedro_chien", "piaroa", "raul_leoni", "roscio", "sifontes", "sucre", "vargas" ]
provincias_carabobo = [ "bejuma", "carlos_arvelo", "diego_ibarra", "guacara", "juan_jose_mora", "libertador", "los_guayos", "miranda", "montalban", "naguanagua", "puerto_cabello", "san_diego", "san_joaquin", "valencia" ]
provincias_cojedes = [ "anzoategui", "ezequiel_zamora", "girardot", "lima_blanco", "pao_de_san_juan_bautista", "tinaco", "tinaco", "romulo_gallegos" ]
provincias_delta_amacuro = [ "antonio_diaz", "casacoima", "pedernales", "tucupita" ]
provinces_falcon = [ "Acosta", "Bolívar", "Buchivacoa", "Cacique Manaure", "Carirubana", "Colina", "Dabajuro", "Democracia", "Falcón", "Federación", "Jacura", "Los Taques", "Mauroa", "Miranda", "Monseñor Iturriza", "Palmasola", "Petit", "Píritu", "San Francisco", "Silva", "Sucre", "Tocópero", "Unión", "Urumaco", "Zamora" ]
provinces_guarico = [ "Camaguan", "Chaguaramas", "El Socorro", "Infante", "Las Mercedes", "Mellado", "Miranda", "Monagas", "Ortiz", "Ribas", "Roscio", "San Gerónimo de Guayabal", "San José de Guaribe", "Santa María de Ipire", "Zaraza" ]
provinces_lara = [ "Andrés Eloy Blanco", "Crespo", "Iribarren", "Jiménez", "Morán", "Palavecino", "Simón Planas", "Torres", "Urdaneta" ]
provinces_merida = [ "Alberto Adriani", "Antonio Pinto Salinas", "Aricagua", "Arzobispo Chacón", "Campo Elías", "Caracciolo Parra Olmedo", "Cardenal Quintero", "Guaraque", "Julio César Salas", "Justo Briceño", "Libertador", "Miranda", "Obispo Ramos de Lora", "Padre Noguera", "Pueblo Llano", "Rangel", "Rivas Dávila", "Santos Marquina", "Sucre", "Tovar", "Tulio Febres Cordero", "Zea" ]
provinces_monagas = ["Acosta", "Aguasay", "Bolívar", "Caripe", "Cedeño", "Ezequiel Zamora", "Libertador", "Maturín", "Piar", "Punceres", "Santa Bárbara", "Sotillo", "Uracoa" ]
provinces_portuguesa = [ "Agua Blanca", "Araure", "Esteller", "Guanare", "Guanarito", "La Aparición", "Mesa de Cavacas", "Ospino", "Páez", "Papelón", "San Genaro de Boconoíto", "San Rafael de Onoto", "Santa Rosalía" ]
provinces_sucre = [ "Altagracia", "Ayacucho", "Bolívar", "Cajigal", "Gran Mariscal", "Libertador", "Mariño", "Mejía", "Montes", "Ribero", "Sucre", "Valdez" ]
provinces_tachira = [ "Andrés Bello", "Antonio Rómulo Costa", "Ayacucho", "Bolívar", "Cárdenas", "Córdoba", "Fernández Feo", "Francisco de Miranda", "García de Hevia", "Guásimos", "Independencia", "Jáuregui", "José María Vargas", "Junín", "Libertad", "Libertador", "Lobatera", "Michelena", "Panamericano", "Pedro María Ureña", "Rafael Urdaneta", "Samuel Darío Maldonado", "San Cristóbal", "Seboruco", "Simón Rodríguez", "Sucre", "Torbes", "Uribante", "San Judas Tadeo" ]

provincias_amazonas.each do |province|
  department_amazonas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_anzoategui.each do |province|
  department_anzoategui.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_apure.each do |province|
  department_apure.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_aragua.each do |province|
  department_aragua.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_barinas.each do |province|
  department_barinas.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_bolivar.each do |province|
  department_bolivar.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_carabobo.each do |province|
  department_carabobo.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_cojedes.each do |province|
  department_cojedes.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provincias_delta_amacuro.each do |province|
  department_delta_amacuro.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_falcon.each do |province|
  department_falcon.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_guarico.each do |province|
  department_guarico.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_lara.each do |province|
  department_lara.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_merida.each do |province|
  department_merida.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_portuguesa.each do |province|
  department_portuguesa.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_sucre.each do |province|
  department_sucre.province.find_or_create_by(
    name: province,
    var_name: province
  )
end

provinces_tachira.each do |province|
  department_tachira.province.find_or_create_by(
    name: province,
    var_name: province
  )
end




