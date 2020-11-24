class BloodOath 
    attr_reader :initiation_date, :follower, :cult

    @@all = []
    def initialize(initiation_date, follower, cult)
        @initiation_date = initiation_date 
        @follower = follower
        @cult = cult 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.first_oath
        @@all.map {|oath| oath.follower}.first
    end 
end 
