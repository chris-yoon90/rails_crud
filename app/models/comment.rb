class Comment < ActiveRecord::Base
	validates :commenter, presence: true, length: {minimum: 2, maximum: 50}
 	belongs_to :text
end
