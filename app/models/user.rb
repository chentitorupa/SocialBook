class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attr_accessible :first_name, :last_name, :nickname,
                  :email, :password, :password_confirmation

  # En plural el nombre del modelo
  has_many :statuses

  def full_name

       first_name + " " + last_name
         
  end

end
