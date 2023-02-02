class User < ApplicationRecord
  validates :name, presence: true
  enum user_type: { manager: 0, developer: 1, QA: 2 }
  validates :user_type, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
