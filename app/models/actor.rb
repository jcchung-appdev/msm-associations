# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  dob        :string
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ApplicationRecord
    has_many :characters
    validates :name, presence: true
    validates :name, uniqueness: { 
        scope: :dob,
        message: "should be unique in combination with dob" 
    }
end
