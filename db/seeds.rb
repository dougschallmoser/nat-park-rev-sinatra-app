### SEED DATABASE ###

## Users ##
doug = User.create(:name => "Doug", :username => "dougr81", :email => "dougr81@hotmail.com", :password => "monkey")

skittles = User.create(:name => "Skittles", :username => "skittles123", :email => "skittles123@gmail.com", :password => "iluvskittles")

erin = User.create(:name => "Erin", :username => "branzell", :email => "erin@aol.com", :password => "brass")

razor83 = User.create(:name => "Rachel", :username => "razor83", :email => "razor83@aol.com", :password => "blade")

## Posts ##
so_many_animals = Post.create(:title => "So Many Animals", :content => "I would definitely suggest doing lots of research before coming to make sure you know where you want to go and what you want to see while in Yellowstone. The park is huge! And there is a lot to see and do. We drove through in one day and saw some highlights but probably could have done more. It can be tricky driving through there, so make sure you are prepared for the winding roads and hills. We did see Old Faithful, it was cool but there were really too many people around to feel safe during covid. The views are unmatched though, highly recommend the park overall!", :rating => "4", :created_at => "2020-08-16 15:42:48 -0700")

very_good = Post.create(:title => "Very Good", :content => "We have traveled extensively in the US. We have visited most of the National Parks. Somehow the North Cascades National Park doesn't have the PR that other parks do and is therefore not that famous. I agree with the reviewer who wrote that the park is underrated. It definitely is!! We entered from the west (which is the right way to do it.....) and started at the Newhalem Visitor Center (reviewed by me separately). From there we drove eastward through the park and stopped at the various viewpoints and did some short hikes. The scenery is absolutely breathtaking!! The mountains, forests, waterfalls and lakes are stunning. We didn't know where to look first. I am attaching a few photos, but believe me, photos don't do justice to this park......You need to be there. Magnificent Majestic Scenery!!! A Definite MUST!!!", :rating => "5", :created_at => "2020-08-18 20:14:11 -0700")

bad_park = Post.create(:title => "Worst Exerience Ever", :content => "I wish those taking my money would have told me that we would not see anything. It had rained for a few days before and once we were at the reef, the captain told us that often you can't see the reef because of the run off even that far offshore. The waves were 2 to 4 feet and you could not see more then 8in in front of your face. There is no way you could snorkel and see any of the reef. They dropped 13 of us in the water and said 'Swim for it' but no one could see. Total waste of money. The information that DW shared was the only good part of the trip. Moved us to shallow water and told us that we could look in the mangroves. We could have done that for free near the parking lot. Would not ever go back.", :rating => "1", :created_at => "2020-08-19 13:58:40 -0700")

so_so = Post.create(:title => "So So", :content => "Yes it’s a quick journey through unless you decide to go camping or hiking but it’s still worth a day or two. I managed to do all the way through to Chelan from Seattle in a day and if just stopping at overlooks then you can do that.", :rating => "3", :created_at => "2020-08-20 17:21:48 -0700")

beautiful_drive = Post.create(:title => "Beautiful drive on a hot summer morning!", :content => "My wife and I recently decided to get out of the house and take a drive. We took the 9 mile drive through Saguaro National Park East. We've enjoyed hiking here in the past, but not with 100+ degree temperatures. So with the AC running in the comfort of our vehicle, we took in the beautiful scenery of majestic saguaro cacti and mountains. Nice way to enjoy the desert on a hot, summer day!", :rating => "5", :created_at => "2020-08-14 7:19:30 -0700")

covid_insights = Post.create(:title => "Covid insights", :content => "Obviously Denali itself is amazing - no need to rate or review the park itself. Tons of wildlife around. A quick FYI though - the Transit Bus is usually marketed as a flexible hop-on - hop-off type of tour. The idea is you can get off of one bus, walk around and explore for a bit, and then hop on another later to get back out of the park where you left off. This is NOT the case right now. Basically, we were warned that if we left our tour bus at any time, that we might have to wait for 3 hours before another bus came by that had room for us...... yet somehow ours kept picking up campers along the way at other stops. I understand buses are limited bc of resources right now, but you cant make it so that people are scared into not exploring the park at all. It's a real shame that there is no flexibility at all right now. Additionally, our transit bus driver Scott was a bit of a pill. He was very rigid and inflexible about everything. He made it so that the bus was afraid to breathe or move, which seriously minimized the enjoyment of the tour...... especially since we couldnt get off of the bus and try another bus/driver like normal. Scott clearly was a wealth of knowledge, but the way he presented the information was in a very condescending way. His demeanor was sarcastic and unpleasant. His comments and answers to people were very snippy and arrogant as if the guests were below him and a bother. I've been on a lot of safaris and wildlife tours, and the guides are always amazing - I was sad to see one in my own country be so rude. I originally was considering doing one of the more expensive tours, but opted for the transit bus to have flexibility, which apparently doesnt exist right now. Just know this going into things this current tourist season.", :rating => "4", :created_at => "2020-08-11 9:51:13 -0700")

friendly_staff = Post.create(:title => "Friendly park staff", :content => "I camped here with friends while we explored the Olympic peninsula. It was a lovely experience. We did an easy day hike and were able to see amazing waterfalls and glacier fed streams. We also drove to the salmon cascades (but didn't witness the salmon as we went at the wrong time of year) but the view was still pretty! Be sure to check out the Sol Duc Falls and the beaches if you can. Seeing the large driftwood on the beaches and the large rocks on the shoreline were unlike anything I have seen on the East Coast!", :rating => "4", :created_at => "2020-08-17 4:20:39 -0700")

beautiful_places = Post.create(:title => "One of the most beautiful places", :content => "The shuttle went ok, it was hot and we had to make 3 stops along the way to drop people off which took 35 minutes. With no air conditioner and having to wear masks it was hot. However, the hike was worth it and you forgot all about the shuttle ride. Zion was absolutely the most beautiful thing we have ever seen. Purchase HIKING STICKS for everyone, they are a must! Walk far, don't stop the views get more beautiful the farther you go. What a great experience we had. Wear clothes that can get wet and shoes that cover your toes.", :rating => "5", :created_at => "2020-08-10 8:15:22 -0700")

go_early = Post.create(:title => "Go early", :content => "Phenomenal and protected - so clean, vast and well managed, we absolutely loved the Road to the Sun and hikes we did. We did the road twice. Steep, narrow, and all that, but we were in a big pickup and did just fine. Many great places to stop and ogle. Driver needs to focus on the road... Early is best! Many many people want to hike Logan Pass, and by 7 am the parking lot was completely full with people waiting! We went on the road twice for the sunrise! Hike at Lake Mary is wonderful - but with crowds - early is better. Take water and first aid supplies and a wrap. It was windy one day, and got cloudy and temp dropped. This is simply an experience not to be missed.", :rating => "5", :created_at => "2020-08-04 12:04:09 -0700")

shadow_yellowstone = Post.create(:title => "Shadow of Yellowstone", :content => "Yellowstone and see the Tetons on the way south. As far as I could tell there is not entrance fee station when leaving Yellowstone’s south exit to grand Tetons. There is definitely a fee station at the Teton entrance and another one at the south entrance of Yellowstone so make sure you have the right national park pass", :rating => "3", :created_at => "2020-08-05 14:04:02 -0700")

denied_entry = Post.create(:title => "Denied entry to a national park is unpatriotic!", :content => "I drove 345 miles to go to the Rocky Mountains on August 6 and 7th. I had a timed pass, but didn't arrive at the time of my pass. At 5pm, my kids and I were allowed to enter, but it started raining so we had to leave. Before we left I asked if there was an overlook area (since we couldn't hike in the rain) , and the ranger didn't know of one. The next morning, I explained the situation to a ranger. She told me to come back at 5pm, despite my having a National Park Pass. We had planned to hike the Copeland Falls Trail and Alberta Falls Trail which aren't heavily trafficked trails. The park is 415 miles with a large mountain range. I can't imagine people bumping into each other, which is the reason for the 'timed entries during Coronavirus'. We never saw the park. My kids and I won't be back. The Rocky Mountain National Park is being used as a political pawn. No other national park is denying entry. What a shame! Politics shouldn't prevent Americans from viewing a national treasure. How unpatriotic.", :rating => "1", :created_at => "2020-08-08 9:42:07 -0700")

must_see = Post.create(:title => "Must see!", :content => "Beautiful park! So many trails to walk with beautiful views. Driving the Going to the Sun road is a treat in itself. Allow about an hour and a half to go from the far end of the park (Rising Sun) to the entrance at the end of the day. We found it was easier to find parking in the most popular destinations (Logan Pass) after 5 pm but you didn't have alot of time to hike the trails. At Hidden Lake outlook, it was worth it to continue on down towards Hidden Lake. It is a more rigorous trail and you definitely want bear spray and drinking water. The park is definitely a must see.", :rating => "5", :created_at => "2020-08-22 5:08:07 -0700")

## Parks ##
parks = [
    {name: "Acadia", state: "Maine"},
    {name: "American Samoa", state: "American Samoa"},
    {name: "Arches", state: "Utah"},
    {name: "Badlands", state: "South Dakota"},
    {name: "Big Bend", state: "Texas"},
    {name: "Biscayne", state: "Florida"},
    {name: "Black Canyon of the Gunnison", state: "Colorado"},
    {name: "Bryce Canyon", state: "Utah"},
    {name: "Canyonlands", state: "Utah"},
    {name: "Capitol Reef", state: "Utah"},
    {name: "Carlsbad Caverns", state: "New Mexico"},
    {name: "Channel Islands", state: "California"},
    {name: "Congaree", state: "South Carolina"},
    {name: "Crater Lake", state: "Oregon"},
    {name: "Cuyahoga Valley", state: "Ohio"},
    {name: "Death Valley", state: "California"},
    {name: "Denali", state: "Alaska"},
    {name: "Dry Tortugas", state: "Florida"},
    {name: "Everglades", state: "Florida"},
    {name: "Gates of the Arctic", state: "Alaska"},
    {name: "Gateway Arch", state: "Missouri"},
    {name: "Glacier", state: "Montana"},
    {name: "Glacier Bay", state: "Alaska"},
    {name: "Grand Canyon", state: "Arizona"},
    {name: "Grand Teton", state: "Wyoming"},
    {name: "Great Basin", state: "Nevada"},
    {name: "Great Sand Dunes", state: "Colorado"},
    {name: "Great Smoky Mountains", state: "North Carolina"},
    {name: "Guadalupe Mountains", state: "Texas"},
    {name: "Haleakala", state: "Hawaii"},
    {name: "Hawai'i Volcanoes", state: "Hawaii"},
    {name: "Hot Springs", state: "Arkansas"},
    {name: "Indiana Dunes", state: "Indiana"},
    {name: "Isle Royale", state: "Michigan"},
    {name: "Joshua Tree", state: "California"},
    {name: "Katmai", state: "Alaska"},
    {name: "Kenai Fjords", state: "Alaska"},
    {name: "Kings Canyon", state: "California"},
    {name: "Kobuk Valley", state: "Alaska"},
    {name: "Lake Clark", state: "Alaska"},
    {name: "Lassen Volcanic", state: "California"},
    {name: "Mammoth Cave", state: "Kentucky"},
    {name: "Mesa Verde", state: "Colorado"},
    {name: "Mount Rainier", state: "Washington"},
    {name: "North Cascades", state: "Washington"},
    {name: "Olympic", state: "Washington"},
    {name: "Petrified Forest", state: "Arizona"},
    {name: "Pinnacles", state: "California"},
    {name: "Redwood", state: "California"},
    {name: "Rocky Mountain", state: "Colorado"},
    {name: "Saguaro", state: "Arizona"},
    {name: "Sequoia", state: "California"},
    {name: "Shenandoah", state: "Virginia"},
    {name: "Theodore Roosevelt", state: "North Dakota"},
    {name: "Virgin Islands", state: "U.S. Virgin Islands"},
    {name: "Voyageurs", state: "Minnesota"},
    {name: "White Sands", state: "New Mexico"},
    {name: "Wind Cave", state: "South Dakota"},
    {name: "Wrangell-St. Elias", state: "Alaska"},
    {name: "Yellowstone", state: "Wyoming"},
    {name: "Yosmite", state: "California"},
    {name: "Zion", state: "Utah"}
]

Park.create(parks)

## Associations ##

so_many_animals.user = doug 
so_many_animals.park = Park.find_by(:name => "Yellowstone")
so_many_animals.save

very_good.user = skittles 
very_good.park = Park.find_by(:name => "North Cascades")
very_good.save 

bad_park.user = erin
bad_park.park = Park.find_by(:name => "Biscayne")
bad_park.save 

so_so.user = doug 
so_so.park = Park.find_by(:name => "North Cascades") 
so_so.save 

beautiful_drive.user = erin 
beautiful_drive.park = Park.find_by(:name => "Saguaro")
beautiful_drive.save

covid_insights.user = skittles 
covid_insights.park = Park.find_by(:name => "Denali")
covid_insights.save

friendly_staff.user = doug 
friendly_staff.park = Park.find_by(:name => "Olympic")
friendly_staff.save

beautiful_places.user = erin 
beautiful_places.park = Park.find_by(:name => "Zion")
beautiful_places.save 

go_early.user = skittles 
go_early.park = Park.find_by(:name => "Zion")
go_early.save

shadow_yellowstone.user = doug
shadow_yellowstone.park = Park.find_by(:name => "Yellowstone")
shadow_yellowstone.save

denied_entry.user = razor83 
denied_entry.park = Park.find_by(:name => "Rocky Mountain")
denied_entry.save

must_see.user = skittles 
must_see.park = Park.find_by(:name => "Glacier")
must_see.save