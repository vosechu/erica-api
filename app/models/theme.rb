class Theme < ActiveRecord::Base
  has_many :activities

  def to_s
    name
  end
end
