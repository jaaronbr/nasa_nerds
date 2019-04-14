# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create!(first_name: 'Aaron', last_name: 'McMuffington', password:  "password", confirmation: 'testing')
user_2 = User.create!(first_name: 'John', last_name: 'Wilkerson', password:  "password", confirmation: 'testing123')

NasaPic.create!(title: 'great pic', description: 'yeah man', image: 'https://media.wired.com/photos/5a593a7ff11e325008172bc2/master/pass/pulsar-831502910.jpg', date_taken: 'Wed 2 2018', user_id: user_1)
NasaPic.create!(title: 'amazing', description: 'dope city', image: 'https://fsmedia.imgix.net/7c/64/de/56/fb79/497e/b8ca/d146bcdd00ab/space-genetics-is-essential-making-life-in-space-work.jpeg', date_taken: 'Mon 2 2018', user_id: user_2)
NasaPic.create!(title: 'cant believe it' , description: 'the absolute best', image: 'https://lh4.googleusercontent.com/proxy/-KiGs6f7SsZMQLMAbGEd55LgIPpN-y39QrRSF8Wa7gESysw7G5rCFU6KOuCYZK09j9IUSp61PMuHF2-SJcT1ZH0dT2nfjOefa5RIah5f2G38WyYKj9WmTCWvS_6kVfWIPNPx5ktmaaxkq1-ftMaZHYla=s0-d', date_taken: 'Fri 2 2018', user_id: user_2)
