class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_many :genre
  has_many :day
  has_many :season
  belongs_to :network
end
