# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WorkPost, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:workpost) { FactoryBot.create(:workpost) }

  it 'is valid workpost' do
  end
end
