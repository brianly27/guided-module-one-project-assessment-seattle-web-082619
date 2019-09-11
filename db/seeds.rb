User.destroy_all
Pokemon.destroy_all
Companion.destroy_all

ash = User.create(name: "ash", id: 1)
brian = User.create(name: "brian", id: 2)


p1 = Pokemon.create(id: 1, name: "p_name1", pokemon_number: 1)
p2 = Pokemon.create(id: 2, name: "p_name2", pokemon_number: 2)
p3 = Pokemon.create(id: 3, name: "p_name3", pokemon_number: 3)
p4 = Pokemon.create(id: 4, name: "p_name4", pokemon_number: 4)
p5 = Pokemon.create(id: 5, name: "p_name5", pokemon_number: 5)

j1 = Companion.create(user_id: 1, pokemon_id:1, nickname: "nickname1")
j2 = Companion.create(user_id: 1, pokemon_id:2, nickname: "nickname2")
j3 = Companion.create(user_id: 1, pokemon_id:3, nickname: "nickname3")
j4 = Companion.create(user_id: 2, pokemon_id:1, nickname: "nickname4")
