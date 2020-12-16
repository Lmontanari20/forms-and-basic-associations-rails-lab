class Song < ActiveRecord::Base
  # add associations here
  belongs_to :genre 
  belongs_to :artist 
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def note_names=(names)
    names.each do|name|
      # note = Note.create(content: name)
      self.notes.build(content: name)
    end
  end

end
