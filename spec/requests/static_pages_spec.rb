require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have content 'Sample App'" do
        visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  describe "Help Page" do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/help'
      expect(page).not_to have_title('| Help')
    end
  end
  describe "About Page" do
    it "should have content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About Us')
    end
  end
end
