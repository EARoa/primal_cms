# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create! :email => 'test@me.com', :password => '12345678', :password_confirmation => '12345678', :admin => 'true'

video = Video.create! :title => "Commercial",
                      :thumbnail => "http://earoa.com/primaltv/images/commercial.png",
                      :videourl => "http://earoa.com/primaltv/videos/commercial.mp4",
                      :category => "Primal",
                      :description => "Such Description. Wow."

video = Video.create! :title => "Plank",
                      :thumbnail => "http://earoa.com/primaltv/images/plank.png",
                      :videourl => "http://earoa.com/primaltv/videos/plank.mp4",
                      :category => "Plank",
                      :description => "Much Description. Wow."
