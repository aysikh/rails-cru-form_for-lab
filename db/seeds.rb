Artist.destroy_all
Genre.destroy_all
Song.destroy_all

adele = Artist.create(name: "Adele", bio: "She's cool")
samsmith = Artist.create(name: "Sam Smith", bio: "He's cool")
jcole = Artist.create(name: "J Cole", bio: "He's cool")
cardib = Artist.create(name: "Cardi B", bio: "She's cool")

pop = Genre.create(name: "Pop")
sadboy = Genre.create(name: "Sad Boy Music")
rap = Genre.create(name: "Rap")
hiphop = Genre.create(name: "Hip Hop")


Song.create(name: "Hello", artist:adele, genre:pop)
Song.create(name: "No Role Modelz", artist:jcole, genre:rap)
Song.create(name: "Work Out", artist:jcole, genre:hiphop)
Song.create(name: "WAP", artist:cardib, genre:rap)
Song.create(name: "Dancing With A Stranger", artist:samsmith, genre:sadboy)
