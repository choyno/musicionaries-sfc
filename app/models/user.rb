class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :songs
  has_many :clps
  has_many :clp_songs

  def admin?
    self.user_type == 101
  end

  def super_admin?
    self.user_type == 1001
  end
end