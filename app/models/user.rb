class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  #Userがもつ多くのmicropots
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :name,  presence: true, length: { maximum: 50 }
  # 名前をエラーチェックの対象とし、条件としてその名前が
  # 存在するかを検証する。
  # 名前の長さはMAX50ですよ！
  # ※ validation length  で調べることが可能ですよ！
  
  
end
