require 'spec_helper'

describe Bookmark do

  before { @Bookmark = Bookmark.new(name: "Example Bookmark", url: "www.example.com") }

  subject { @Bookmark }

  it { should respond_to(:name) }
  it { should respond_to(:url) }
  it { should be_valid }


  describe "when name is not present" do
    before { @Bookmark.name = " " }
    it { should_not be_valid }
  end

  describe "when name is max length" do
    before { @Bookmark.name = "a" * 100}
    it { should be_valid }
  end

    describe "when name is too long" do
    before { @Bookmark.name = "a" * 101}
    it { should_not be_valid }
  end

  describe "when url is not present" do
    before { @Bookmark.url = " " }
    it { should_not be_valid }
  end

  describe "when url is min length" do
    before { @Bookmark.url = "a" *10 }
    it { should be_valid }
  end

  describe "when url is too short" do
    before { @Bookmark.url = "a" * 9}
    it { should_not be_valid }
  end



end

