### SEED DATABASE ###

## Users ##
doug = User.create(:name => "Doug", :username => "dougr81", :email => "dougr81@hotmail.com", :password => "monkey")

skittles = User.create(:name => "Skittles", :username => "skittles123", :email => "skittles123@gmail.com", :password => "iluvskittles")

erin = User.create(:name => "Erin", :username => "branzell", :email => "erin@aol.com", :password => "brass")

## Posts ##
so_many_animals = Post.create(:title => "So Many Animals", :content => "I would definitely suggest doing lots of research before coming to make sure you know where you want to go and what you want to see while in Yellowstone. The park is huge! And there is a lot to see and do. We drove through in one day and saw some highlights but probably could have done more. It can be tricky driving through there, so make sure you are prepared for the winding roads and hills. We did see Old Faithful, it was cool but there were really too many people around to feel safe during covid. The views are unmatched though, highly recommend the park overall!", :rating => "4", :created_at => Time.new.strftime("%A, %B %d, %Y at %l:%M%p"))

very_good = Post.create(:title => "Very Good", :content => "We have traveled extensively in the US.
We have visited most of the National Parks. Somehow the North Cascades National Park doesn't have the PR that other parks do and is therefore not that famous. I agree with the reviewer who wrote that the park is underrated. It definitely is!!
We entered from the west (which is the right way to do it.....) and started at the Newhalem Visitor Center (reviewed by me separately). From there we drove eastward through the park and stopped at the various viewpoints and did some short hikes.
The scenery is absolutely breathtaking!! The mountains, forests, waterfalls and lakes are stunning. We didn't know where to look first. I am attaching a few photos, but believe me, photos don't do justice to this park......You need to be there. Magnificent Majestic Scenery!!! A Definite MUST!!!", :rating => "5", :created_at => Time.new.strftime("%A, %B %d, %Y at %l:%M%p"))

bad_park = Post.create(:title => "Worst Exerience Ever", :content => "I wish those taking my money would have told me that we would not see anything. It had rained for a few days before and once we were at the reef, the captain told us that often you can't see the reef because of the run off even that far offshore. The waves were 2 to 4 feet and you could not see more then 8in in front of your face. There is no way you could snorkel and see any of the reef. They dropped 13 of us in the water and said 'Swim for it' but no one could see. Total waste of money. The information that DW shared was the only good part of the trip. Moved us to shallow water and told us that we could look in the mangroves. We could have done that for free near the parking lot. Would not ever go back.", :rating => "1", :created_at => Time.new.strftime("%A, %B %d, %Y at %l:%M%p"))

so_so = Post.create(:title => "So So", :content => "Yes it’s a quick journey through unless you decide to go camping or hiking but it’s still worth a day or two. I managed to do all the way through to Chelan from Seattle in a day and if just stopping at overlooks then you can do that.", :rating => "3", :created_at => Time.new.strftime("%A, %B %d, %Y at %l:%M%p"))

    # Time.new.strftime("%A, %B %d, %Y at%l:%M%p")

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
    {name: "Joshau Tree", state: "California"},
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