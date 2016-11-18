class User < ActiveRecord::Base

  has_many :progress_bars  
  enum role: [:admin, :user, :partner ]
  
  after_initialize :set_default_role, :if => :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  #attr_accessible :email, :password, :password_confirmation         
         
         
  def set_default_role
    self.role ||= :user
  end         
end
