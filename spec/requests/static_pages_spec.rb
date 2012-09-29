require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Flavorites'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Flavorites')
    end

    it "should have the title 'Flavorites'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Flavorites | Home")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Flavorites | About Us")
    end
  end
end

