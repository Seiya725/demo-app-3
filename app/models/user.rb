class User < ActiveRecord::Base
  validates :email, {uniqueness: true}
  validates :name, {presence: true}
  validates :email, {presence: true}
  validates :password, {presence: true}

  def posts
    return Post.where(user_id: self.id)
  end
end