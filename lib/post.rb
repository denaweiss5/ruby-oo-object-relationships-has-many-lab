class Post

    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name 
        my_author = Author.all.select do |author|
        author.name == self.author.name
       end     
       self.author.name 
    end

end

# def rides
#     Ride.all.select do |ride|
#         ride.passenger == self
#     end
# end

# def drivers
#     rides.map do |ride|
#         ride.driver
#     end