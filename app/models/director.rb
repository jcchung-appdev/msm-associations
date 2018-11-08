# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  dob        :string
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Director < ApplicationRecord
    has_many :movies
    validates :name, presence: true
    validates :name, uniqueness: { 
        scope: :dob,
        message: "should be unique in combination with dob" 
    }
    
end
