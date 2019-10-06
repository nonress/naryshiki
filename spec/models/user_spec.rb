require 'rails_helper'

RSpec.describe User, type: :model do

   it 'has a valid factory' do
     expect(FactoryBot.build(:user)).to be_valid
   end

  it 'is invalid without a name' do
    user =FactoryBot.build(:user,name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a coname' do
    user =FactoryBot.build(:user,coname: nil)
    user.valid?
    expect(user.errors[:coname]).to include("can't be blank")
  end

  it 'is invalid without an email' do
    user =FactoryBot.build(:user,email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
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
end
