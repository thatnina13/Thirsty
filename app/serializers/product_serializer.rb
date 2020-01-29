class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :quantity, :user_id
  # belongs_to :user
end
