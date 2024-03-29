class User < ActiveRecord::Base
  # include default devise modules.  Others available are:
  # :token_authenticatable, :encyptable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :password, :admin, :as => :admin

  has_many :permissions

  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
  # attr_accessible :title, :body
end
