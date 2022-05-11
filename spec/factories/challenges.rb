FactoryBot.define do
  factory :challenge do
    title { "My Challenge" }
    stack { 'python' }
    kind { 'challenge' }
    difficulty { 'easy' }
    description { "In this Challenge you'll learn how to use print and inputs" }
    link { 'link ' }
  end
end
