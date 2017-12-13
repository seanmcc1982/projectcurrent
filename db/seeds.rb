# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Admin.create("email"=>"admin@cinemob.com", "encrypted_password"=>"$2a$11$cMlHZPvB7yE1P2rhXwo9TuVINGW3Q3b3EOessx.y/MMh8kcOemX0S")
#User.create("email"=>"user1@cinemob.com", "encrypted_password"=>"$2a$11$cMlHZPvB7yE1P2rhXwo9TuVINGW3Q3b3EOessx.y/MMh8kcOemX0S")


Film.create("title"=>"E.T. The Extra-Terrestrial", "filmcast"=>"Henry Thomas, Drew Barrymore, Dee Wallace", "plot"=>"A troubled child summons the courage to help a friendly alien escape Earth and return to his home world", "poster_url"=>"et.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=qYAETtIIClk", "runtime"=>115)

Film.create("title"=>"The Godfather", "filmcast"=>"Marlon Brando, Al Pacino, Diane Keaton", "plot"=>"The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", "poster_url"=>"the_godfather.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=fB_8VCwXydM", "runtime"=>175)

Film.create("title"=>"The Terminator", "filmcast"=>"Arnold Schwarzenegger, Linda Hamilton, Michael Biehn", "plot"=>"A seemingly indestructible humanoid cyborg is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.", "poster_url"=>"terminator.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=k64P4l2Wmeg", "runtime"=>107)

Film.create("title"=>"Inception", "filmcast"=>"Leonardo DiCaprio, Joseph Gordon-Levitt, Cillian Murphy", "plot"=>"A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.", "poster_url"=>"inception.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=YoHD9XEInc0", "runtime"=>148)

Film.create("title"=>"Beauty and the Beast", "filmcast"=>"Paige O'Hara, Robby Benson, Angela Lansbury", "plot"=>"A young woman whose father has been imprisoned by a terrifying beast offers herself in his place, unaware that her captor is actually a prince, physically altered by a magic spell.", "poster_url"=>"beauty_and_the_beast.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=xD5pcGp62ec", "runtime"=>84)

Film.create("title"=>"Pulp Fiction", "filmcast"=>"Samuel L. Jackson, John Travolta, Uma Thurman", "plot"=>"The lives of two mob hit men, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", "poster_url"=>"pulp_fiction.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=s7EdQ4FqbhY", "runtime"=>154)

Film.create("title"=>"Predator", "filmcast"=>"Arnold Schwarzenegger, Carl Weathers, Kevin Peter Hall", "plot"=>"A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.", "poster_url"=>"predator.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=K9AT3tQGbIk", "runtime"=>107)

Film.create("title"=>"Casablanca", "filmcast"=>"Humphrey Bogart, Ingrid Bergman, Paul Henreid", "plot"=>"In Casablanca in December 1941, a cynical American expatriate encounters a former lover, with unforeseen complications.", "poster_url"=>"casablanca.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=BkL9l7qovsE", "runtime"=>102)

Film.create("title"=>"Home Alone", "filmcast"=>"|Macaulay Culkin, Joe Pesci, Daniel Stern", "plot"=>"An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.", "poster_url"=>"home_alone.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=IsOlj-xpK9Q", "runtime"=>103)

Film.create("title"=>"Singin' in the Rain", "filmcast"=>"Gene Kelly, Donald O'Connor, Debbie Reynolds", "plot"=>"A silent film production company and cast make a difficult transition to sound.", "poster_url"=>"singin_in_the_rain.jpg", "trailer_url"=>"https://www.youtube.com/watch?v=Lv6DNrIUiZU", "runtime"=>103)


Screen.create("screenname"=>"Screen 1","rows"=>5,"width"=>5,"seating"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")
Screen.create("screenname"=>"Screen 2","rows"=>3,"width"=>3,"seating"=>"A01N A02N A03N B01N B02N B03N C01N C02N C03N")
Screen.create("screenname"=>"Screen 3","rows"=>4,"width"=>4,"seating"=>"A01N A02N A03N A04N B01N B02N B03N B04N C01N C02N C03N C04N D01N D02N D03N D04N")
Screen.create("screenname"=>"Screen 4","rows"=>5,"width"=>5,"seating"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")
Screen.create("screenname"=>"Screen 5","rows"=>3,"width"=>5,"seating"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N")
Screen.create("screenname"=>"Screen 6","rows"=>5,"width"=>3,"seating"=>"A01N A02N A03N B01N B02N B03N C01N C02N C03N D01N D02N D03N E01N E02N E03N")
Screen.create("screenname"=>"Screen 7","rows"=>5,"width"=>5,"seating"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")
Screen.create("screenname"=>"Screen 8","rows"=>2,"width"=>2,"seating"=>"A01N A02N B01N B02N")
Screen.create("screenname"=>"Screen 9","rows"=>5,"width"=>4,"seating"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N")
Screen.create("screenname"=>"Screen IMAX","rows"=>6,"width"=>5,"seating"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N F01N F02N F03N F04N F05N")


Showing.create("slot"=>"2017-12-27 19:27:00","price"=>10,"screen_id"=>1,"film_id"=>1,"seatallocation"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")

Showing.create("slot"=>"2018-08-17 20:39:00","price"=>12,"screen_id"=>1,"film_id"=>2,"seatallocation"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")

Showing.create("slot"=>"2017-12-24 22:59:00","price"=>5,"screen_id"=>2,"film_id"=>9,"seatallocation"=>"A01N A02N A03N B01N B02N B03N C01N C02N C03N")

Showing.create("slot"=>"2017-01-22 18:32:00","price"=>10,"screen_id"=>3,"film_id"=>4,"seatallocation"=>"A01N A02N A03N A04N B01N B02N B03N B04N C01N C02N C03N C04N D01N D02N D03N D04N")
Showing.create("slot"=>"2018-01-27 22:59:00","price"=>7,"screen_id"=>5,"film_id"=>8,"seatallocation"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N")
Showing.create("slot"=>"2018-03-12 12:45:00","price"=>8,"screen_id"=>7,"film_id"=>6,"seatallocation"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")
Showing.create("slot"=>"2018-02-24 16:32:00","price"=>13,"screen_id"=>5,"film_id"=>2,"seatallocation"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N")
Showing.create("slot"=>"2018-05-07 15:03:00","price"=>11,"screen_id"=>7,"film_id"=>5,"seatallocation"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")
Showing.create("slot"=>"2018-06-15 17:15:00","price"=>12,"screen_id"=>3,"film_id"=>6,"seatallocation"=>"A01N A02N A03N A04N B01N B02N B03N B04N C01N C02N C03N C04N D01N D02N D03N D04N")
Showing.create("slot"=>"2018-07-10 07:26:00","price"=>9,"screen_id"=>4,"film_id"=>7,"seatallocation"=>"A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N")

