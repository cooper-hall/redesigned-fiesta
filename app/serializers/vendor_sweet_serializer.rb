class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id, :price

  belongs_to :vendor
  belongs_to :sweet
end
