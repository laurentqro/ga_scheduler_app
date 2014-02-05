class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :role_ids
  has_and_belongs_to_many :roles

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.with_role_of(role_name)
    includes(:roles).where(roles: {name: "#{role_name}"}).order(:first_name)
  end

end
