require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#create' do
    before do
      @comment = FactoryBot.build(:comment)
    end

    it 'textの値が存在すれば登録できること' do
      expect(@comment).to be_valid
    end

    it 'textが空では投稿できないこと' do
      @comment.text = ''
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Text can't be blank")
    end
  end
end