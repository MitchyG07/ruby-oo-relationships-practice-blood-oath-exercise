class Cult
    attr_reader :founding_year 
    attr_accessor :name, :location, :slogan 

    @@all = []
    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location 
        @founding_year = founding_year
        @slogan = slogan 
        @@all << self
    end 

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(Time.now.to_s, follower, self)
    end 

    def oaths 
        BloodOath.all.select {|oath| oath.cult == self}
    end 

    def cult_population
        oaths.count
    end 

    def self.find_by_name(name)
        @@all.find {|cult| cult.name == name}
    end 

    def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end 

    def self.find_by_founding_year(founding_year)
        @@all.select {|cult| cult.founding_year == founding_year}
    end 





end 