# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  actor_id   :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ApplicationRecord
    validates :movie_id, :actor_id, presence: true
    
    belongs_to :movie
    belongs_to :actor 
end
