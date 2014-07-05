class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:linkedin]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :provider, :uid, :title, :industry, :name, :image, :link, :role
  # attr_accessible :title, :body

  def self.find_for_linkedin_oauth2(auth, signed_in_user=nil)
    if user = signed_in_user || User.find_by_email(auth.info.email)
      user.provider = auth.provider
      user.uid = auth.uid
      user.role ||= 'user'
      user.link = auth.info.urls.public_profile if user.link.blank?
      user.name = auth.info.name if user.name.blank?
      user.image = auth.info.image if user.image.blank?
      user.email = auth.info.email if user.email.blank?
      user.title = auth.info.description if user.title.blank?
      user.industry = auth.info.industry if user.industry.blank?
      user.save
      user
    else
      User.where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.role ||= 'user'
        user.link = auth.info.urls.public_profile
        user.name = auth.info.name
        user.image = auth.info.image 
        user.email = auth.info.email 
        user.title = auth.info.description 
        user.industry = auth.info.industry
        # user.password = Devise.friendly_token[0,20]
        # user.skip_confirmation! # don't require email confirmation
        # user.save
        # User
      end
    end
  end
end
