class Item
  include Mongoid::Document
  field :Title, type: String
  field :Description, type: String
  field :created_at, type: Date
  field :updated_at, type: Date
end
