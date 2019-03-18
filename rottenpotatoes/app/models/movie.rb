class Movie < ActiveRecord::Base
   
  def user_params
      params.require(:parkscontroller).permit(:name, :material, :location, :cost)
  end
  #attr_accessible :title, :rating, :description, :release_date
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

end
