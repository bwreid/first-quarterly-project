# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Classroom.delete_all
Strength.delete_all
Weakness.delete_all
Member.delete_all
Recommendation.delete_all
Message.delete_all

s1 = Strength.create( :name => 'Ruby' )
s2 = Strength.create( :name => 'HTML5' )
s3 = Strength.create( :name => 'CSS3' )
s4 = Strength.create( :name => 'MySQL' )
s5 = Strength.create( :name => 'PostgreSQL' )
s6 = Strength.create( :name => 'Rails' )
s7 = Strength.create( :name => 'Terminal' )
s8 = Strength.create( :name => 'Github' )
s9 = Strength.create( :name => 'Pivotal Tracker' )
s10 = Strength.create( :name => 'Rspec' )

w1 = Weakness.create( :name => 'Ruby' )
w2 = Weakness.create( :name => 'HTML5' )
w3 = Weakness.create( :name => 'CSS3' )
w4 = Weakness.create( :name => 'MySQL' )
w5 = Weakness.create( :name => 'PostgreSQL' )
w6 = Weakness.create( :name => 'Rails' )
w7 = Weakness.create( :name => 'Terminal' )
w8 = Weakness.create( :name => 'Github' )
w9 = Weakness.create( :name => 'Pivotal Tracker' )
w10 = Weakness.create( :name => 'Rspec' )

member0 = Member.create( :first => 'James', :last => 'Franco', :username => 'jamesfranco', :password => 'welcome', :photo => 'http://img2.timeinc.net/people/i/2004/04/specials/sexiestsummerguys/jfranco.jpg', :description => 'Meh irony elit iphone aesthetic. Shoreditch ullamco wolf, sapiente kale chips tousled mollit nesciunt reprehenderit duis retro letterpress Austin direct trade. In nostrud nisi, photo booth high life reprehenderit sriracha labore narwhal.' )
member1 = Member.create( :first => 'Bryan', :last => 'Reid', :username => 'bryanreid', :password => 'welcome', :photo => 'https://sphotos-b.xx.fbcdn.net/hphotos-ash4/391787_2370514016041_719898176_n.jpg', :description => 'Lorem ipsum incididunt Duis eiusmod culpa laborum dolor ullamco commodo officia quis reprehenderit non eu aliquip anim.' )
member2 = Member.create( :first => 'Ryan', :last => 'Gosling', :username => 'ryangosling', :password => 'welcome', :photo => 'http://www.gq.com/images/style/2011/01/ryan-gosling/ryan-gosling-cover-nologo.jpg', :description => 'Lorem ipsum incididunt Duis eiusmod culpa laborum dolor ullamco commodo officia quis reprehenderit non eu aliquip anim. Lorem ipsum incididunt Duis eiusmod culpa laborum dolor ullamco commodo officia quis reprehenderit non eu aliquip anim.' )
member3 = Member.create( :first => 'Anne', :last => 'Hathaway', :username => 'annehathaway', :password => 'welcome', :photo => 'http://www.temptalia.com/images/spring2013/2013goldenglobes_annehathaway001.jpg', :description => 'Lorem ipsum incididunt Duis eiusmod culpa laborum dolor ullamco commodo officia quis reprehenderit non eu aliquip anim.' )
member4 = Member.create( :first => 'Helen', :last => 'Mirren', :username => 'helenmirren', :password => 'welcome', :photo => 'http://images1.wikia.nocookie.net/__cb20121009115906/glee/images/8/88/Helen-mirren.jpg', :description => 'Lorem ipsum incididunt Duis eiusmod culpa laborum dolor ullamco commodo officia quis reprehenderit non eu aliquip anim.' )
member5 = Member.create( :first => 'James', :last => 'Blake', :username => 'jamesblake', :password => 'welcome', :photo => 'http://www.audiocastle.net/uploads/tracks/James_Blake.jpg', :description => 'Lorem ipsum incididunt Duis eiusmod culpa laborum dolor ullamco commodo officia quis reprehenderit non eu aliquip anim. Lorem ipsum incididunt Duis eiusmod culpa laborum dolor ullamco commodo officia quis reprehenderit non eu aliquip anim.' )
member6 = Member.create( :first => 'Taylor', :last => 'Swift', :username => 'taylorswift', :password => 'welcome', :photo => 'http://images6.fanpop.com/image/photos/32600000/-3-taylor-swift-32676784-500-500.jpg', :description => 'Meh irony elit iphone aesthetic. Shoreditch ullamco wolf, sapiente kale chips tousled mollit nesciunt reprehenderit duis retro letterpress Austin direct trade. In nostrud nisi, photo booth high life reprehenderit sriracha labore narwhal.' )
member7 = Member.create( :first => 'Jeremy', :last => 'Renner', :username => 'jeremyrenner', :password => 'welcome', :photo => 'http://thecelebritycafe.com/sites/default/files/imagecache/image_display/_img/2013/01/jeremy.jpg', :description => 'Meh irony elit iphone aesthetic. Shoreditch ullamco wolf, sapiente kale chips tousled mollit nesciunt reprehenderit duis retro letterpress Austin direct trade. In nostrud nisi, photo booth high life reprehenderit sriracha labore narwhal.' )
member8 = Member.create( :first => 'Kanye', :last => 'West', :username => 'kanyewest', :password => 'welcome', :photo => 'http://frequency.blogs.bendbulletin.com/files/2013/01/rapkanye.jpg', :description => 'Meh irony elit iphone aesthetic. Shoreditch ullamco wolf, sapiente kale chips tousled mollit nesciunt reprehenderit duis retro letterpress Austin direct trade. In nostrud nisi, photo booth high life reprehenderit sriracha labore narwhal.' )
member9 = Member.create( :first => 'Katie', :last => 'Couric', :username => 'katiecouric', :password => 'welcome', :photo => 'http://www.usmagazine.com/uploads/assets/articles/51826-25-things-you-dont-know-about-me-katie-couric/1335360034_katie-couric-lg.jpg', :description => 'Meh irony elit iphone aesthetic. Shoreditch ullamco wolf, sapiente kale chips tousled mollit nesciunt reprehenderit duis retro letterpress Austin direct trade. In nostrud nisi, photo booth high life reprehenderit sriracha labore narwhal.' )


classroom1 = Classroom.create( :name => 'wdi', :password => 'qwerty' )

member0.strengths
member0.weaknesses << w10 << w8 << w4

member1.strengths << s2 << s3 << s1
member1.weaknesses << w10 << w8 << w4 << w6 << w7
member1.recommendations << Recommendation.create(:message => "#{member1.first} was so helpful with understanding HTML5. It was really easy to schedule something with him as well.", :recommender => "#{member0.id}")


member2.strengths << s10 << s8 << s4 << s5 << s6
member2.weaknesses << w2 << w3 << w9
member2.recommendations << Recommendation.create(:message => "#{member2.first} knows everything about Rspec. I\'m a TDD master now.", :recommender => "#{member9.id}")
member2.recommendations << Recommendation.create(:message => "#{member2.first} really helpful with understanding PostgreSQL. Took just a couple meetings for me to get it down.", :recommender => "#{member4.id}")

member3.strengths << s9 << s2
member3.weaknesses << w3 << w5 << w8 << w1

member4.strengths << s10 << s2 << s3 << s1 << s9
member4.weaknesses << w4 << w6 << w5 << w7

member5.strengths << s2 << s3 << s5
member5.weaknesses << w1 << w4 << w6
member5.recommendations << Recommendation.create(:message => "I really appreciate #{member5.first}\'s help with HTML5. Huge help.", :recommender => "#{member7.id}")

member6.strengths << s1 << s10 << s3
member6.weaknesses << w9 << w2

member7.strengths << s5 << s6
member7.weaknesses << w2
member7.recommendations << Recommendation.create(:message => "#{member7.first} got me up to speed with Rails very quickly. Put together some great practice projects as well.", :recommender => "#{member6.id}")
member7.recommendations << Recommendation.create(:message => "#{member7.first} is a Rails ninja.", :recommender => "#{member2.id}")

member8.strengths << s9 << s8 << s4 << s2
member8.weaknesses << w1 << w3 << w7

member9.strengths << s7 << s6 << s5
member9.weaknesses

classroom1.members << Member.all