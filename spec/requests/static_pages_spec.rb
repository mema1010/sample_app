require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App' 
        and titel 'Home'
        and not the custom page title" do
      visit '/static_pages/home'
      expect(page).to have_title("Sample App")
      expect(page).to have_content('Sample App')
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help' 
        and titel 'help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us' 
        and titel 'about'" do
      visit '/static_pages/about'
      expect(page).to have_title("About")
      expect(page).to have_content('About Us')
    end
  end
  
  describe "Contact page" do
    
    it "should have the content 'Contact' and titel 'about'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact")
    end
  end
end
