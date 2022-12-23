class User < ApplicationRecord

  has_many :articles, class_name: 'Article', foreign_key: :author_id

  enum role: %i[admin author user]

  def is_admin?
    self.admin?
  end


  after_initialize do
    self.role ||= :user if new_record?
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :rememberable, :validatable
end
