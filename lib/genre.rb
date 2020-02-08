class Genre
  attr_accessor :name 
@@all = []
def initialize(name)
  @name = name 
  #@@all = []
end

def self.all
  @@all
end 

def self.destroy_all
  @@all.clear
end 

def save
@@all << self
end 

def self.create(genre)
news = self.new(genre)
news.save
news 

end 

end 

#rspec spec/003_genre_basics_spec.rb