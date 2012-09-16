class Bookmark < ActiveRecord::Base
  attr_accessible :name, :saved, :url
end
