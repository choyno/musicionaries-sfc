class Song < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :clp_content

  extend FriendlyId
  friendly_id :title, use: :slugged
end
