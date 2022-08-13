puts "🌱 Seeding spices..."

# Seed your database here
Audition.destroy_all
Role.destroy_all

a1=Audition.create(actor: "Michael jordan", location:"Jakarta",phone:6534331,hired:true,role_id:1 )
a2=Audition.create(actor: "Susan", location:"Jakarta",phone:2216639,hired:false,role_id:2 )
a3=Audition.create(actor: "Budi Utomo", location:"Bandung",phone:6534312,hired:true,role_id:2 )
a4=Audition.create(actor: "Agung", location:"Jakarta",phone:6511313,hired:true,role_id:3 )
a5=Audition.create(actor: "Umina", location:"Bandung",phone:6345890,hired:true,role_id:2 )

# r1=Role.create(character_name: "Admin")
# r2=Role.create(character_name: "User")
puts "✅ Done seeding!"
