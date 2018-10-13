class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :async, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :activities
  has_one_attached :avatar

  validates :name, presence: true
  validate :has_image_attached

  private
  def has_image_attached
  	if !avatar.attached?
  		errors.add(:avatar, "must have a picture")
  	elsif !avatar.attached? && !avatar.content_type.in?(%w(avatar/jpeg avatar/png))
  		errors.add(:avatar, "must be of type JPEG or PNG")
  	end
  end
end

