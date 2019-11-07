class Show < ActiveRecord::Base 
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    high_num = Show.highest_rating
    show = Show.where("rating = ?", high_num)
    show
  end
  
end