class User < ApplicationRecord

  enum role: [:student, :admin]

  after_initialize do
    if self.new_record?
      self.role ||= :student
    end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
