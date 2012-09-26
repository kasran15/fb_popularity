class AuthToken < ActiveRecord::Base
  attr_accessible :fbId, :token
end
