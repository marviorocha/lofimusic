class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :username, presence: true,
                       uniqueness: { case_sensitive: false, message: 'must be given please' }
  enum roles: { admin: 'admin', user: 'user' }

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
