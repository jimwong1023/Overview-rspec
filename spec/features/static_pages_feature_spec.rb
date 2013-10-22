require 'spec_helper'

describe "Static pages" do

  describe 'Home page' do
    it "should have the content 'Rspec Overview'" do
      visit '/static_pages/home'
      expect(page).to have_content('Rspec Overview')
    end

    it "should have title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Rspec Overview | Home")
    end
  end

  describe 'Help page' do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Rspec Overview | Help")
    end
  end

  describe 'About page' do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Rspec Overview | About")
    end
  end
end