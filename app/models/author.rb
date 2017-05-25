class Author
    include Mongoid::Document
    include Mongoid::Attributes::Dynamic
    field :name, type: String
    field :password
    field :reserve, type: Boolean
    field :reserved_count, type: Integer

    embeds_one :permanent_address, class_name: "Address"
    embeds_one :current_address, class_name: "Address"
    validates :name, presence: true

end
