class Ship
    include Mongoid::Document
    has_one :vehicle, as: resource
    field :is_military, type: Boolean
    field :number_engines, type: Integer
end
