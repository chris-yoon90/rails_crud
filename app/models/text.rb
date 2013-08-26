class Text < ActiveRecord::Base
	validates :author, presence: true, length: {minimum: 2, maximum: 50}
	validate :body, length: {maximum: 100}
	has_many :comments
end
