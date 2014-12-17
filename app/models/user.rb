class User < ActiveRecord::Base

  validates :social_security_number, { 
    numericality: true,
    length: { is: 9 }
  }

end
