require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    asset_no_difference 'User.count' do
      posr users_path, params: { user: { name: '',
                        email: 'user@invalid',
                     password: 'foo',
         passord_confirmation: 'bar'}}
    end
    asser_template 'users/new'
  end
end
