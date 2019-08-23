FactoryBot.define do
  factory :review do
    rating { true }
    content { 'a positive experience' }
    service { create(:service) }
    user { create(:user) }
  end
end
