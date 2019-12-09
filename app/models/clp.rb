class Clp < ApplicationRecord
  belongs_to :user
  has_many :clp_contents, dependent: :destroy
end
