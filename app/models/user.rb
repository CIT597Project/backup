class User < ActiveRecord::Base
  has_many :my_schools, dependent: :destroy
  has_many :schools, through: :my_schools
  has_many :reviews
  has_many :active_relationships, class_name: "Relationship", 
                                  foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", 
                                  foreign_key: "followed_id", dependent: :destroy
                                  
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  
  
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         devise :omniauthable, :omniauth_providers => [:facebook]


         
   def self.search(search)
    if search
      where(['"USERNAME" LIKE ?', "%#{search}%"]) 
    else
     scoped
    end
   end      


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end
  
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end
  
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
  
  def following?(other_user)
    following.include?(other_user)
  end
  
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  


end
