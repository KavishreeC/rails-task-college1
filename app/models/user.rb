class User < ApplicationRecord
 
  enum role: [:admin , :teacher, :student]

  after_initialize :set_default_role, :if => :new_record?

  PASSWORD_FORMAT = /\A
  (?=.{8,})          # 8 or more characters
  (?=.*[[:^alnum:]]) # symbol
  /x


  
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :phone, presence: true,uniqueness: true,length: { maximum: 10 }
  validates :password,format: PASSWORD_FORMAT
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  def set_default_role
    self.role ||= :student
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_create :welcome_send
  def welcome_send
    WelcomeJob.perform_later(User.last)
  end
end
