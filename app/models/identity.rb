class Identity < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
=======
  
  # for SNS Login ------------------
>>>>>>> f7de8da45bfb555f1bb5cb856c853cccbc2d0c3a
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider)
  end
<<<<<<< HEAD
=======
  #----------------------------------
  
>>>>>>> f7de8da45bfb555f1bb5cb856c853cccbc2d0c3a
end
