require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    weapon = build(:weapon, level: FFaker::Random.rand(100..9999))
    expect(weapon).to_not be_valid
  end

  it "returns the correct weapon title" do
    name = FFaker::Name.first_name
    level = FFaker::Random.rand(1..99)
    weapon = create(:weapon, name: name, level: level)
    expect(weapon.title).to eq("#{name} ##{level}")
  end

  it "returns the correct weapon current power" do
    power_base = FFaker::Random.rand(500..9999)
    power_step = FFaker::Random.rand(1..99)
    level = FFaker::Random.rand(1..99)
    weapon = create(:weapon, power_base: power_base, power_step: power_step, level: level)
    expect(weapon.current_power).to eq(power_base + ((level - 1) * power_step))
  end
end
