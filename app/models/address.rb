class Address
  include Mongoid::Document
  field :street, type: String
  field :city, type: String
  field :state, type: String
  field :zipcode, type: String
  field :country, type: String

  embedded_in :author, inverse_of: :permanent_address
  embedded_in :author, inverse_of: :current_address
end
