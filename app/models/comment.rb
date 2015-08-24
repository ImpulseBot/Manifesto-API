class Comment < ActiveRecord::Base
	validates :author, presence: true
	validates :body, presence: true
	validates :manifesto_id, presence: true
end