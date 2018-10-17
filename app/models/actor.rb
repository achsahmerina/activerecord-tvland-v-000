class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  belongs_to :actor_id


  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list_of_roles = []
    characters = self.characters.map {|character| character.name}
    shows = self.shows.map {|show| show.name}
    role = characters.concat shows
    list_of_roles << role.join(" - ")
    list_of_roles
  end
end
