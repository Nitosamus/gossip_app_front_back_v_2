class Gossip < ApplicationRecord
	validates :title, presence: { message: "Error : you need to complete this field / the title must be at least 3 characters longue / etc."}	#length: {in: 3..14}
	validates :content, presence: {message:"Error : you need to complete this field / the title must be at least 3 characters longue / etc." }
	has_many :types
	has_many :tags, through: :types
	has_many :comments
	has_one :like
	belongs_to :user
end
