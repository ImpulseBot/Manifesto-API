class Manifesto < ActiveRecord::Base
	validates :name, presence: true
	validates :organizer, presence: true

	has_many :comments

	def self.trending
		Manifesto.where_max_count_of('comments', 5)
	end

	def self.discover
		Manifesto.latest(5)
	end

	private
	
	def self.where_max_count_of(dependency, limit=5)
		Manifesto.all.map{|m| {m => m.send(dependency).count}}
		.sort_by{|i| i.values}.reverse[0...limit].map{|m_hash| m_hash.map{|key, val| key}}
		.flatten
	end

	def self.latest(count)
		Manifesto.order(created_at: :desc).limit(count)
	end

end