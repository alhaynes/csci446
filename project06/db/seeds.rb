Game.delete_all

admin = Role.create(name: "admin")
member = Role.create(name: "member")

User.create(
username: 'administrator',
password: 'password',
password_confirmation: 'password',
fname: 'Brad',
lname: 'Uppercrust',
role: admin,
email: 'BradUppercrustTheThird@gmail.com'
)

User.create(
username: 'member',
password: 'password',
password_confirmation: 'password',
fname: 'John',
lname: 'Smith',
role: member,
email: 'genericemail@yahoo.com'
)

user = ['administrator', 'member']
games = ['Pokemon', 'Apples to Apples', 'Scrabble', 'Fruit Ninja', 'Settlers of Catan', 'Words with Friends', 'Solitare', 'Yatzee', 'Game of Life', 'Angry Birds', '5 Degrees of Kevin Bacon']
ratings = ['Hell Ya', 'This Blows', 'Nothing to Write home about', 'Ok']

for i in (0..10)
	Game.create(
		title: games[i],
		rating: ratings[i%4],
		author: User.find_by_username(user[i%2])
		)
end