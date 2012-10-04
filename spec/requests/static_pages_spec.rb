require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Flavorites'" do
      visit root_path
      page.should have_selector('h1', :text => 'Flavorites')
    end

    it "should have the title 'Flavorites'" do
      visit root_path
      page.should have_selector('title', :text => "Flavorites App")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', text: '| Home')
    end
  end


  describe "About page" do

    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "Flavorites App | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    :text => "Flavorites App | Contact")
    end
  end
end

