class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :author, :genre, :summary

  has_many :stores

  attribute :num_stores do |object|
    object.stores.count
  end
end
