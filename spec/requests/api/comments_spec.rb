require 'swagger_helper'

RSpec.describe 'api/comments', type: :request do
  path '/api/v1/users/{user_id}/posts/{post_id}/comments' do
    post 'Creates a comment' do
      tags 'Comments'
      consumes 'application/json'
      parameter name: :post, in: :body, schema: {
        type: :object,
        properties: {
          id: { type: :integer },
          text: { type: :string },
          post_id: { type: :integer },
          user_id: { type: :integer }
        },
        required: ['text']
      }

      response '201', 'comment created' do
        let(:comment) { { text: 'new comment' } }
        run_test!
      end