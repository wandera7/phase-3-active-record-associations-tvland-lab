class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors , through: :characters

  def full_name
    "#{self.actors.first_name} #{self.actors.last_name}"
  end
  def actors_list
    self.actors.map {|act| "#{act.first_name} #{act.last_name}"}
  end

end
