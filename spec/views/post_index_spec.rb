# require 'rails_helper'

# RSpec.describe 'Render posts index page', type: :feature do
#   before :each do
#     @user = User.create(name: 'John', photo: 'https://media.gettyimages.com/id/1278139568/nl/foto/studioportret-van-20-jaar-oude-vrouw.jpg?s=612x612&w=0&k=20&c=3Bd4Ot79Z1ZKoCwAl0qFQ9hoBrQTar4SqtPefHOBEkg=',
#                         bio: 'Teacher from Brazil.', postscounter: 0)

#     @first_post = Post.create(title: 'Hello there', text: 'This is my first post',
#                               commentscounter: 0, likescounter: 0, author_id: @user.id)

#     Comment.create(text: 'Hi John!', author_id: @user.id, post_id: @first_post.id)
#     Comment.create(text: 'How are you?', author_id: @user.id, post_id: @first_post.id)

#     visit user_posts_path(@user)
#   end

#   scenario 'should render user profile photo' do
#     expect(@user.photo).to match(%r{^https?://.*\.(jpe?g|gif|png)(\?.*)?$})
#   end

#   scenario 'should display user name' do
#     expect(page).to have_content(@user.name)
#   end

#   scenario 'shows number of user posts' do
#     expect(page).to have_content(@user.posts.count)
#   end

#   scenario 'render button section for Pagination' do
#     expect(page).to have_button('Pagination')
#   end

#   scenario 'redirects to the post show page' do
#     click_link('a', match: :first)
#     expect(page).to have_content(@first_post.title)
#   end

#   scenario 'displays post text' do
#     expect(page).to have_text('This is my first post', wait: 10)
#   end

#   scenario 'display the post title' do
#     expect(page).to have_content(@first_post.title)
#   end

#   scenario 'display the post body' do
#     expect(page).to have_content(@first_post.text)
#   end

#   scenario 'display the first comment on a post' do
#     expect(page).to have_content('Hi John!')
#   end

#   scenario 'display the how many comments' do
#     expect(page).to have_content(/comments: 2/i)
#   end

#   scenario 'display the how many Likes' do
#     expect(page).to have_content("Likes: #{@first_post.likescounter}")
#   end
# end
