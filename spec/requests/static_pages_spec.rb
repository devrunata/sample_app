require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',:text =>"Sample App")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
    
  end
  
  describe "Help page" do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',:text =>"Sample App | Help")
    end
    
  end
  
  describe "About page"do
    it "schould have content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',:text =>"Sample App | About")
    end
    
  end
  
end