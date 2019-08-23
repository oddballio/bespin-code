class ReviewSerializer
  include FastJsonapi::ObjectSerializer

  attributes :rating, :content
  belongs_to :user
end
