class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :challenges
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def get_age
    (DateTime.now.to_i - self.birthday.to_datetime.to_i) / (60*60*24*365)
  end
end
