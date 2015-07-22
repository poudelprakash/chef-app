class User < ActiveRecord::Base
  def to_s
    first_name
  end
end
