class Character < ActiveRecord::Base
  has_many :catchphrase
  belongs_to :actor_id
  belongs_to :show
  belongs_to :network

  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end
end
