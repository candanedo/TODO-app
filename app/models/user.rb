class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :async, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook]

  has_many :activities
  has_one_attached :avatar

  validates :name, presence: true
  validate :has_image_attached
  after_create :after_create_send_email
  #after_update :after_update_send_email
  after_destroy :after_delete_send_email

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name = auth.infor.name
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.avatar = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

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

