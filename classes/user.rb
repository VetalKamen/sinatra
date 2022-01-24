class User < ActiveRecord::Base
  attr_accessor :username

  def admin?
    false
  end
end