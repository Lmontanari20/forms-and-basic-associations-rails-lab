class Genre < ActiveRecord::Base
  # add associations
  has_many :songs

  def self.genre_uniq
    Genre.all.uniq
  end
end
