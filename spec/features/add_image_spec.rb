require 'rails_helper'

describe "the add a image process" do
  it "adds a new image" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Sign In'
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    click_on 'Add Image to Flickr'
    image = FactoryGirl.create(:image)
    fill_in 'image[name]', :with => image.name
    fill_in 'image[description]', :with => image.description
    attach_file('image[avatar]', Rails.root + 'spec/support/missing.png' )

    click_on 'Create Image'
    expect(page).to have_content 'User Profile'
  end
end
