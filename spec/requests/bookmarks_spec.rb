require 'spec_helper'
	
describe "Bookmarks pages" do

  subject { page }

  describe "View bookmarks" do
    before { visit view_path } 

    it { should have_selector('h1', text: 'View bookmarks') }
    it { should have_selector('title', text: full_title('View bookmarks')) }
  end

  describe "New bookmark" do
    before { visit new_path }

    it { should have_selector('h1', text: 'New bookmark') }
    it { should have_selector('title', text: full_title('New bookmark')) }
  end
end
