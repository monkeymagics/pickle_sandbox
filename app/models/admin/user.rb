class Admin::User < ActiveRecord::Base

  validates :name, :presence => true
end
