require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do

    it 'ensures email is presence' do
      user = User.new(email: "ali@gmail.com").save
      should(user).to eq(false)
    end

  end

  context 'validations' do
    it 'is valid without street' do
      expect(build(:user, email: 'piko@gmail.com')).to be_valid
    end

    it 'is invalid without street' do
      expect(build(:user, street: '')).not_to be_valid
    end

    it 'is invalid when street has wrong format' do
      expect(build(:user, email: 'Ulica45')).not_to be_valid
    end

    it 'is invalid when no number in adress' do
      expect(build(:user, email: 'www@gmail.com')).not_to be_valid
    end
  end


end
