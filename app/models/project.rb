class Project < ApplicationRecord

  after_create :create_chat_room
  include Slugable
  
 
  has_many :personals
  has_many :users , through: :personals 
  has_one :chat_room
  
  validates :title , presence: true , uniqueness: true
  validates :description , presence: true , length:{maximum: 50}
  validates :nickname , presence: true
  
  def normalize_friendly_id(value)
    value.to_s.parameterize(preserve_case: true)
  end
end
