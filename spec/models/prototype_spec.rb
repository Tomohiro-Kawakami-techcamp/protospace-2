require 'rails_helper'

RSpec.describe Prototype, type: :model do
  describe '#create' do
    before do
      @prototype = FactoryBot.build(:prototype)
    end

    it 'title,catch_copy,concept,imageが存在していれば保存できること' do
      expect(@prototype).to be_valid
    end

    it 'titleが空では保存できないこと' do
      @prototype.title = ''
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include("Title can't be blank")
    end

    it 'catch_copyが空では保存できないこと' do
      @prototype.catch_copy = ''
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include("Catch copy can't be blank")
    end

    it 'conceptが空では保存できないこと' do
      @prototype.concept = ''
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include("Concept can't be blank")
    end

    it 'imageが空では保存できないこと' do
      @prototype.image = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include("Image can't be blank")
    end

    it 'userが紐付いていないと保存できないこと' do
      @prototype.user = nil
      @prototype.valid?
      expect(@prototype.errors.full_messages).to include('User must exist')
    end
  end
end