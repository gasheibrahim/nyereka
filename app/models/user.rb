class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :checkouts
  has_one :order
  validates :fullname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phonenumber, presence: true
  validates :gender, presence: true
  validates :province, presence: true
  validates :district, presence: true
end
