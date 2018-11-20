class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(attributes)
    if attributes[:username] != ""
      user = User.find_or_create_by(username: attributes[:username])
      self.user = user
    end
  end
end
