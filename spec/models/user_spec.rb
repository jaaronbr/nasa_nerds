require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:password) }
    it { should have_many(:nasa_pics) }
  end

  describe 'instance methods' do
  end

  describe 'class methods' do
  end
end
