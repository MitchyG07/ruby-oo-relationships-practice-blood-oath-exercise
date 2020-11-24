class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []
    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto
        @@all << self
    end 

    def self.all
        @@all
    end

    def oaths 
        BloodOath.all.select {|oath| oath.follower == self}
    end 

    def follower_cults
        oaths.count
    end 

    def my_cults_slogan
        puts oaths.map {|oath| oath.cult.slogan}
    end 

    def self.most_active
        @@all.max_by {|follower| follower.follower_cults} 
    end 

    def cults 
        oaths.map {|oath| oath.cult}
    end 

    def join_cult(cult)
        BloodOath.new(Time.now.to_s, self, cult)
    end 

    def self.of_a_certain_age(age)
        @@all.select {|follower| follower.age >= age}
    end 

    def self.top_ten
        @@all.max_by(10) {|follower| follower.follower_cults} 
    end 
    

end 