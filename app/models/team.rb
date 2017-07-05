class Team
	include Mongoid::Document
    include Mongoid::Attributes::Dynamic

    field :name
    field :money, type: Float, default: 0
    field :tages, type: Array

	has_many :players, after_add: :send_email
	def send_email(document)
		puts "Send email: #{document.inspect}"
		puts "self: #{self.inspect}"
	end
    index({tags: 1})
end
