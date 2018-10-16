class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :async, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :activities
  has_one_attached :avatar

  validates :name, presence: true
  validate :has_image_attached
  after_create :after_create_send_email
  #after_update :after_update_send_email
  after_destroy :after_delete_send_email
  private
  def has_image_attached
  	if !avatar.attached?
  		errors.add(:avatar, "must have a picture")
  	elsif !avatar.attached? && !avatar.content_type.in?(%w(avatar/jpeg avatar/png))
  		errors.add(:avatar, "must be of type JPEG or PNG")
  	end
  end
  def after_create_send_email
    UserMailer.welcome_email(self).deliver_now
  end
  def after_delete_send_email
    UserMailer.delete_email(self).deliver_now
  end
  def after_update_send_email
    UserMailer.update_info(self).deliver_now
  end
end

