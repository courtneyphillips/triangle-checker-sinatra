require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the triangle result path', {:type => :feature}) do
  it('returns the type of triangle, and if not a triangle, says so') do
    visit('/')
    fill_in('a', :with => '2')
    fill_in('b', :with => '2')
    fill_in('c', :with => '2')
    click_button('Submit')
    expect(page).to have_content("Equilateral")
  end
end
