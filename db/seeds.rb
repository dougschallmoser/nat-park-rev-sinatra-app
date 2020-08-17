# SEED DATABASE

# Users
doug = User.create(:name => "Doug", :username => "dougr81", :email => "dougr81@hotmail.com", password: => "monkey")
skittles = User.create(:name => "Skittles", :username => "skittles123", :email => "skittles123@gmail.com", password: => "iluveskittles")
erin = User.create(:name => "Erin", :username => "branzell", :email => "erin@aol.com", password: => "brass")

# Parks
north_cascades = Park.create(:name => "North Cascades", :state => "Washington")
olympic = Park.create(:name => "Olympic", :state => "Washington")
mount_rainier = Park.create(:name => "Mount Rainier", :state => "Washington")
yellowstone = Park.create(:name => "Yellowstone", :state => "Wyoming")
biscayne = Park.create(:name => "Biscayne", :state => "Florida")

# Posts
so_many_animals = Post.create(:title => "So Many Animals", :content => "Proin volutpat sem nec volutpat aliquet. Aenean quis turpis varius, faucibus mauris in, fermentum velit. Mauris egestas orci eu lectus finibus vehicula. Duis posuere ligula sit amet eleifend lacinia. Vivamus ac lectus ut elit porttitor ornare sit amet nec purus. Nullam luctus nibh vitae mi placerat ullamcorper. Proin molestie augue non eros imperdiet, eget malesuada lacus auctor. Sed consequat, justo sit amet lacinia maximus, tortor nisl consectetur mauris, id rhoncus lacus sapien eu ante. Ut eleifend, mi ut rhoncus interdum, purus justo elementum lorem, ac rhoncus ex mi vel justo. Duis cursus odio eu nunc aliquam, at pellentesque dui ornare.", :rating => "4", :created_at => Time.new.strftime("%A, %B %d, %Y at%l:%M%p"))
very_good = Post.create(:title => "Very Good", :content => "Donec vulputate efficitur vehicula. Etiam nec lectus sit amet ligula elementum finibus sed ac ante. In efficitur lorem eu scelerisque luctus. Nullam feugiat odio eget enim maximus vulputate. Donec nec diam ex. Fusce suscipit feugiat ultrices. Morbi a facilisis dui, quis viverra metus. Donec dictum, metus facilisis dapibus semper, orci enim hendrerit justo, sed mollis risus metus eget mi. Donec consectetur lorem in metus dapibus, in malesuada magna ultrices. Proin sit amet placerat nisl, quis volutpat quam. Nunc at justo sed arcu bibendum maximus. Ut non iaculis nibh.", :rating => "5", :created_at => Time.new.strftime("%A, %B %d, %Y at%l:%M%p"))
bad_park = Post.create(:title => "Worst Exerience Ever", :content => "Phasellus non eros eget neque convallis volutpat. Maecenas blandit, sapien nec molestie pharetra, nunc augue tristique nibh, eget finibus lectus mauris in ante. Nunc eget neque et mauris consectetur suscipit. Pellentesque bibendum ut dui ut fermentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla et sodales ipsum, vitae aliquam quam. Duis condimentum arcu sit amet suscipit scelerisque. Curabitur vulputate nibh a placerat luctus. Vivamus accumsan fringilla laoreet. Proin ut risus sem. Quisque accumsan nisl quis auctor pretium. Donec consequat pharetra ligula, at scelerisque erat.", :rating => "1", :created_at => Time.new.strftime("%A, %B %d, %Y at%l:%M%p"))
so_so = Post.create(:title => "So So", :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictum mattis libero eget convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean posuere arcu scelerisque tellus varius porttitor et eget enim. Ut fermentum neque arcu, nec auctor tellus faucibus quis. Nullam non ex et tellus placerat feugiat nec id felis. In auctor enim sed est fringilla bibendum. Nunc ut lobortis tellus. Sed tempus metus sapien, ut dignissim elit condimentum eu.", :rating => "3", :created_at => Time.new.strftime("%A, %B %d, %Y at%l:%M%p"))

# Associations 

so_many_animals.user = doug 
so_many_animals.park = yellowstone
so_many_animals.save

very_good.user = skittles 
very_good.park = north_cascades 
very_good.park.save 

bad_park.user = erin
bad_park.park = biscayne 
bad_park.save 

so_so.user = doug 
so_so.park = north_cascades 
so_so.save 


