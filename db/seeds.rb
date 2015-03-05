# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "faker"

Category.create(
	name: "Where to live" ,
	summary: "Recommendations for cool areas for live",
	image_url: "http://blog.lifestylebarcelona.com/wp-content/uploads/2013/08/gracia-barcelona-2011.jpg"
	)

Category.create(
	name: "Where to go" ,
	summary: "Nice places to visit those days you want to see new things",
	image_url: "http://www.the-interiordesign.com/progprodimg/IMG_1310.jpg"
	)

Category.create(
	name: "Food" ,
	summary: "Best places to eat the best food in Barna",
	image_url: "http://www.apartmentbarcelona.com/blog/wp-content/uploads/2012/07/Princesa-23-Barceloneta.jpg"
	)


Category.create(
	name: "Telephone line" ,
	summary: "Best tips for new users of phone lines here in Barna",
	image_url: "http://www.vsacomunicacion.com/blog/wp-content/uploads/2013/07/Vodafone-Gran-Via-13-Madrid.jpg"
	)

Category.create(
	name: "Shopping" ,
	summary: "Best stores without spending much money",
	image_url: "https://bellowblogs.files.wordpress.com/2012/02/la-boqueria-68.jpg"
	)

Category.create(
	name: "Hostel" ,
	summary: "Best places you can get to spend that first night",
	image_url: "http://3.bp.blogspot.com/-Va0FdeCJdzY/TmtP0GIIaBI/AAAAAAAAJaU/jNqhV2Ap-t8/s1600/BARCELONA_PASSEIG_DE_GRACIA_PLA%25C3%2587A_JOAN_CARLES.jpg"
	)

Category.create(
	name: "Art" ,
	summary: "Best meetings artistic sites and museums",
	image_url: "http://payload.cargocollective.com/1/0/633/367207/art-brut_2_u_1000.jpg"
	)

Category.create(
	name: "Sports" ,
	summary: "Places where you can practice different disciplines",
	image_url: "http://www.hdwallpapersos.com/wp-content/uploads/2014/07/high-definition-wallpapers-volleyball-beach-cool-desktop-backgrounds-widescreen1.jpg"
	)

Category.create(
	name: "Partying" ,
	summary: "The best places to party, categorized by musical genres",
	image_url: "http://cdnstatic-8.mydestination.com/library/images/583485_1000_667.jpg"
	)

Category.create(
	name: "Bar" ,
	summary: "Top tips for different types of bars you can find",
	image_url: "http://stoomly.com/wp-content/uploads/2014/01/Marsella.jpg"
	)

Category.create(
	name: "Jobs" ,
	summary: "Best tips if you're looking for a new job",
	image_url: "http://2.bp.blogspot.com/_LFsy49yCUjg/TKf42LhexKI/AAAAAAAAAkY/Abe3EjTWpsw/s1600/Barcelona_subway_D3S7567.jpg"
	)

Category.create(
	name: "Meditation" ,
	summary: "Best tips to go and maditate about your new life style",
	image_url: "http://www.yogaenred.com/wp-content/uploads/2013/09/FreeYogaBCN.jpg"
	)



u= User.create!(
	name: "Amor",
	email: "amor.dibella@gmail.com",
	password: "12345"
	)

(1..2).each do |num|
	categories = Category.all

	categories.each do |cat|
		cat.tips.create!(
			description: Faker::Hacker.say_something_smart,
			user_id: u.id
			)
	end
end



a= User.create!(
	name: "Amalia",
	email: "amalia.hurtado@gmail.com",
	password: "12345"
	)

(1..2).each do |num|
	categories = Category.all

	categories.each do |cat|
		cat.tips.create!(
			description: Faker::Hacker.say_something_smart,
			user_id: a.id
			)
	end
end



b= User.create!(
	name: "Jorge",
	email: "Jorge@gmail.com",
	password: "12345"
	)

(1..2).each do |num|
	categories = Category.all

	categories.each do |cat|
		cat.tips.create!(
			description: Faker::Hacker.say_something_smart,
			user_id: b.id
			)
	end
end

