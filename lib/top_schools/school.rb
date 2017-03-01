class TopSchools::School
  attr_accessor :name

  @all = []
  @descriptions = []

  def self.all
    @all
  end

  def self.schools
    12.times do |s|
      @all << self.scrape(s)
    end
    @all
  end

  def self.descriptions
    15.times do |d|
      @descriptions << self.scrape_descriptions(d)
    end
    @descriptions.delete_at(1)
    @descriptions.delete_at(5)
    @descriptions.delete_at(7)
    @descriptions
  end

  def self.scrape_descriptions(d)
    @doc.css('div.bodycopy p')[d + 2].text
  end

  def self.scrape(s)
    @doc = Nokogiri::HTML(open("https://www.entrepreneur.com/article/250323"))

    self.make_schools(s)
  end

  def self.make_schools(s)
    school = self.new
    school.name = @doc.css('div.bodycopy h2')[s].text
    # school.description = @descriptions[s]
    # binding.pry
  end

end


# def self.make_descriptions
#   @all.each do |school|
#     school
#   end
# end

# def self.description(index)
#   @doc.search("strong").remove
#   @doc.css('div.bodycopy > p')[index].text
# end

# @@all = []
#
# def schools
#   TopSchools::Scraper.new
# end

# def self.new_from_scraper(s)
#   self.new(s)
#     # s.css('div.bodycopy h2').text,
#     # s.css('div.bodycopy p')[+2].text
#     # )
# end

# def initialize(name=nil, description=nil)
#   @name = name
#   @description = description
#   @@all << self
# end

# def self.all
#   @@all
# end

# def self.schools
#   TopSchools::Scraper.school_scraper
#   #I should return a number of instances of "schools"
#
#   # school_1 = self.new
#   # school_1.name = "flatiron"
#   # school_1.rank = "1"
#   # school_1.url = "http://www.learn.com"
#   # school_1.location = "New York, NY"
#   # school_1.rating = "5"
#   # school_1.subjects = "Ruby, Javascript"
#   #
#   # school_2 = self.new
#   # school_2.name = "app academy"
#   # school_2.rank = "2"
#   # school_2.url = "http://www.learn.com"
#   # school_2.location = "New York, NY"
#   # school_2.rating = "5"
#   # school_2.subjects = "Ruby"
#   #
#   # [school_1, school_2]
# end
