class Post < ActiveRecord::Base

    belongs_to :user 
    belongs_to :park

    validates :title, :presence => true 
    validates :content, :presence => true 
    validates :rating, :presence => true 
    validates :user_id, :presence => true 
    validates :park_id, :presence => true 

    def self.find_by_slug_state(slug_name)
        self.all.select {|post| post.park.slug_state == slug_name}
    end 

    def capitalize_title
        self.title.split(" ").map(&:capitalize).join(" ")
    end

    def convert_time(timestamp)
        time = (Time.current - timestamp).to_i
        case time 
        when 0..60
            "#{time}" + " secs ago"
        when 60..119
            "#{time / 60}" + " min ago"
        when 60..3600
            "#{time / 60}" + " mins ago"
        when 3600..7199
            "#{time / 3600}" + " hour ago"
        when 3600..86400
            "#{time / 3600}" + " hours ago"
        when 86400..172799
            "#{time / 86400}" + " day ago"
        else
            "#{time / 86400}" + " days ago"
        end
    end

end