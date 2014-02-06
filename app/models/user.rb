class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :job_title, :profile, :twitter, :role_ids, :password, :password_confirmation
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create

  has_secure_password

  has_and_belongs_to_many :roles
  has_many :enrollments

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.with_role_of(role_name)
    includes(:roles).where(roles: {name: "#{role_name}"}).order(:first_name)
  end

  def is?(role)
    self.roles.map(&:name).include?(role.to_s)
  end

end
