require 'rails_helper'

RSpec.describe NasaPic, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:date_taken) }
  end

  describe 'instance methods' do
  end

  describe 'class methods' do
  end
end
