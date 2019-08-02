# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.delete_all
City.create([
	{ name: 'Medellín' },
	{ name: 'Bogotá' },
	{ name: 'Manizales' },
	{ name: 'Cali' },
	{ name: 'Armenia' },
	{ name: 'Barranquilla' },
	{ name: 'Pereira' },
	{ name: 'Cartagena' },
	{ name: 'Soledad' },
	{ name: 'Cúcuta' },
	{ name: 'Soacha' },
	{ name: 'Ibagué' },
	{ name: 'Bucaramanga' },
	{ name: 'Villavicencio' },
	{ name: 'Santa Marta' },
	{ name: 'Bello' },
	{ name: 'Valledupar' },
	{ name: 'Buenaventura' },
	{ name: 'Pasto' },
	{ name: 'Montería' },
	{ name: 'Neiva' },
])

Type.delete_all
Type.create([{name: 'Virtual'}, {name: 'Presential'},])