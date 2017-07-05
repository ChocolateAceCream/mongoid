class Author
	include Mongoid::Document
	include Mongoid::Attributes::Dynamic
	include Mongoid::Versioning
	include Mongoid::Timestamps
	field :name, type: String
	field :password
	field :reserve, type: Boolean
	field :reserved_count, type: Integer

	index( {name: 1}, {unique: true, background: true, drop_dups: true})

	embeds_one :permanent_address, class_name: "Address"
	embeds_one :current_address, class_name: "Address"
	validates :name, presence: true

end
