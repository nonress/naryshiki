require 'rails_helper'

RSpec.describe User, type: :model do

  it 'is valid with a name, coname, mail, and password' do
    user = User.new(
    name: 'onari',
    coname: 'nonress',
    email: 'enui@naryshiki.com',
    password: 'hogehoge',
  )
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a coname' do
    user = User.new(coname: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is invalid with a duplicate email address' do
    User.create(
      name: 'enui',
      coname: 'nonress',
      email: 'test@naryshiki.com',
      password: 'hogehoge',
    )
    user = User.new(
      name: 'enui3',
      coname: 'nonresses',
      email: 'test@naryshiki.com',
      password: 'hogehgoe',
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  it 'is invalid without an email address'

  it "returns a user's full name as astring"
end
