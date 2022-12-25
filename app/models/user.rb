# frozen_string_literal: true

class User < ApplicationRecord
  has_many :articles, class_name: 'Article', foreign_key: :author_id

  has_many :comments, class_name: 'Comment', foreign_key: :author_id

  enum role: %i[admin author]

  def is_admin?
    admin?
  end

  after_initialize do
    self.role ||= :author if new_record?
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
