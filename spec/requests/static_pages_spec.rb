require 'spec_helper'

describe "StaticPages" do

  let(:base_title){ "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "GET /static_pages/home" do
    before { visit root_path }
    
    it { should have_content('Sample App') }
    it { should have_title(base_title) }
    it { should_not have_title('| Home') }
  end

  describe "GET /static_pages/help" do
    before { visit help_path }
    
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "GET /static_pages/about" do
    before { visit about_path }
    
    it { should have_content('About') }
    it { should have_title(full_title('About')) }
  end

  describe "GET /static_pages/contact" do
    before { visit contact_path }
    
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
