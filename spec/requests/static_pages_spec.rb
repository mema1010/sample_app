require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App' 
        and titel 'Home'
        and not the custom page title" do
      visit root_path
      expect(page).to have_title("Sample App")
      expect(page).to have_content('Willkommen')
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help' 
        and titel 'help'" do
      visit help_path
      expect(page).to have_title("Help")
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us' 
        and titel 'about'" do
      visit about_path
      expect(page).to have_title("About")
      expect(page).to have_content('About Us')
    end
  end
  
  describe "Contact page" do
    
    it "should have the content 'Contact' and titel 'about'" do
      visit contact_path
      expect(page).to have_content("Contact")
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
