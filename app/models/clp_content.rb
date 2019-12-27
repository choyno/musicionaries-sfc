class ClpContent < ApplicationRecord
  belongs_to :clp
  has_and_belongs_to_many :song

  def song_titles
    return self.song.map(&:title)
  end
end
