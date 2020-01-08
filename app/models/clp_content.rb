class ClpContent < ApplicationRecord
  belongs_to :clp
  has_many :song_assigns, dependent: :destroy
  has_and_belongs_to_many :song

  accepts_nested_attributes_for :song_assigns, allow_destroy: true

  def assigned_songs
    return self.song_assigns.each{ |sa| sa }
  end
end
