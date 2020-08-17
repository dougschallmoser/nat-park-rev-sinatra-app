# SEED DATABASE

doug = User.create(:name => "Doug", :username => "dougr81", :email => "dougr81@hotmail.com", password: => "monkey")
skittles = User.create(:name => "Skittles", :username => "skittles123", :email => "skittles123@gmail.com", password: => "iluveskittles")
erin = User.create(:name => "Erin", :username => "branzell", :email => "erin@aol.com", password: => "brass")

post.user = Post.create(:title => "The Way Home", :content => "Proin volutpat sem nec volutpat aliquet. Aenean quis turpis varius, faucibus mauris in, fermentum velit. Mauris egestas orci eu lectus finibus vehicula. Duis posuere ligula sit amet eleifend lacinia. Vivamus ac lectus ut elit porttitor ornare sit amet nec purus. Nullam luctus nibh vitae mi placerat ullamcorper. Proin molestie augue non eros imperdiet, eget malesuada lacus auctor. Sed consequat, justo sit amet lacinia maximus, tortor nisl consectetur mauris, id rhoncus lacus sapien eu ante. Ut eleifend, mi ut rhoncus interdum, purus justo elementum lorem, ac rhoncus ex mi vel justo. Duis cursus odio eu nunc aliquam, at pellentesque dui ornare.", :rating => "4", :created_at => Time.new.strftime("%A, %B %d, %Y at%l:%M%p"))

north_cascades = Park.create(:name => "North Cascades", :state => "Washington")
olympic = Park.create(:name => "Olympic", :state => "Washington")
mount_rainier = Park.create(:name => "Mount Rainier", :state => "Washington")
yellowstone = Park.create(:name => "Yellowstone", :state => "Washington")