# spec/controllers/comments_controller_spec.rb
require 'rails_helper'

describe CommentsController do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates the comment' do
        post :create, comment: attributes_for(:comment)
        expect(Comment.count).to eq(1)
      end

