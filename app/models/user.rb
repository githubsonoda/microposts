class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  
  validates :introduction, length: { maximum: 255 } # サインアップ時は未登録の為、空を許容
  validates :area, length: { maximum: 50 } # サインアップ時は未登録の為、空を許容
  
  has_many :microposts
end
