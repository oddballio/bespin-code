class ServiceSerializer
  include FastJsonapi::ObjectSerializer

  set_id :id
  attributes :name, :description
  has_many :reviews
end
