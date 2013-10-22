require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Rspec Overview" }

  describe 'Home page' do
    before do
      visit '/static_pages/home'
    end

    it "should have the content 'Rspec Overview'" do
      expect(page).to have_content('Rspec Overview')
    end

    it "should have title 'Home'" do
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe 'Help page' do
    before do
      visit '/static_pages/help'
    end

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have title 'Help'" do
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe 'About page' do
    before do
      visit '/static_pages/about'
    end

    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end

    it "should have title 'About'" do
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe 'Contact page' do
    before do
      visit '/static_pages/contact'
    end

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have title 'Contact'" do
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end