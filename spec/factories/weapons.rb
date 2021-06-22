FactoryBot.define do
  factory :weapon do
    name {FFaker::Lorem.word}
    description{FFaker::Lorem.phrase}
    power_base{FFaker::Random.rand(500..9999)}
    power_step{FFaker::Random.rand(1..99)}
    level {FFaker::Random.rand(1..99)}
  end
end
