class Player
    include Mongoid::Document
    field :name
    field :age, type: Integer
    belongs_to :team, counter_cache: :players_count

    has_and_belongs_to_many :followers,
                            class_name: "Player",
                            inverse_of: :following

    has_and_belongs_to_many :following,
                            class_name: "Player",
                            inverse_of: :followers
	index({name: 1, age: 1}, {unique: true})
end
