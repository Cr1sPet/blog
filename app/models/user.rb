class User < ApplicationRecord

  enum role: %i[admin author user]

  def is_admin?
    self.admin?
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :rememberable, :validatable
end
