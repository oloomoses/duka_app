FactoryBot.define do
  factory :product do
    name {'test name'}
    description {'test description'}
    price { 1234 }
    qty { 1 }
  end
end
