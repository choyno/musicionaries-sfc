class ClpContent < ApplicationRecord
  belongs_to :clp
  has_and_belongs_to_many :song
end
