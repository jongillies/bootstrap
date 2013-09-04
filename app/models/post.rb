class Post < ActiveRecord::Base

  attr_accessible :description, :title, :user_id, :created_at, :updated_at

  belongs_to :user

  has_paper_trail

end
