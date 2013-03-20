class EmailAddress < ActiveRecord::Base
  attr_accessible :address
  validates :address, :presence => true
  validates :person_id, presence: true
  belongs_to :person
end
