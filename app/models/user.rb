class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role

  # Checks if the user logged-in is super-admin
  #
  # @return [True or False]
  def admin?
    return true if role.eql?(Role.first)
    false
  end

  # Checks if the user logged-in is customer
  #
  # @return [True or False]
  def customer?
    return true if role.eql?(Role.second)
    false
  end

  # Checks if the user logged-in is guest
  #
  # @return [True or False]
  def guest?
    return true if role.eql?(Role.third)
    false
  end

end
