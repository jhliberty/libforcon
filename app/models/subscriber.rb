class Subscriber < ActiveRecord::Base
  before_create :activation_token
  
  validates :email, :presence => true
  validates :zip,   :presence => true
  
  private
  def activation_token
    self.activation_code = generate_activation_code
  end
  
  def generate_activation_code(size = 12)
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
  end
end
