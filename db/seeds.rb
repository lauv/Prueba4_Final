# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Crear un seed con 20 compañías, 30 usuarios y 250 reclamos, los reclamos deben
# ir a asignados a los usuarios y a las compañías respectivas, dentro del seed
# especificar los created_at de los reclamos para que ninguno sea más antiguo a un
# mes.

Claim.destroy_all
User.destroy_all
Enterprise.destroy_all


 20.times do |e|
 	Enterprise.create(name: "Empresa#{e}")
	user = User.create(name: "Usuario#{e}", email:"guy#{e}@gmail.com", role: 1, password: "111111", password_confirmation:"111111")
	12.times do |r|
		Claim.create(content: "No me gusta esto #{r}", user_id: user.id)
	end
end
