class Song < ApplicationRecord
  belongs_to :user
  has_many :song_assigns
  has_and_belongs_to_many :clp_content

  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.search(search)
    search.nil? ? self.all : self.where("lower(title) LIKE '%#{search}%'")
    # search.nil? ? self.all : self.where("title LIKE '%#{search}%'")
  end
end
