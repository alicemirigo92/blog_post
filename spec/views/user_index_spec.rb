require 'rails_helper'
RSpec.describe 'Users Index Page', type: :feature do
  before :each do
    @user = User.create(name: 'Symo', photo: 'https://media.gettyimages.com/id/1278139568/nl/foto/studioportret-van-20-jaar-oude-vrouw.jpg?s=612x612&w=0&k=20&c=3Bd4Ot79Z1ZKoCwAl0qFQ9hoBrQTar4SqtPefHOBEkg=',
                        bio: 'This is my brother.', postscounter: 5)
  end
  scenario 'displays all users username' do
    visit '/'
    expect(page).to have_content(@user.name)
  end
  scenario 'displays all users profile photo' do
    visit '/'
    expect(page).to have_css(
      "img[src='#{@user.photo}']", wait: 30
    )
  end
  scenario 'displays number of posts' do
    visit '/'
    expect(page).to have_content(@user.postscounter)
  end
  scenario 'renders the user show page' do
    visit '/'
    click_link(@user.name, match: :first)
    expect(page).to have_content(@user.name)
  end
end
