class Animal < ApplicationRecord
    has_many :sightings
    validates :common_name, :latin_name, presence: true
    validates :common_name, :latin_name, uniqueness: true
    validate :check_common_and_latin

def check_common_and_latin
  if common_name == latin_name
    errors.add(:latin_name, "can't be the same as email")
  end 
end

end
