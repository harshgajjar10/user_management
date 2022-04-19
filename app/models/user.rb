class User < ApplicationRecord
  ##Favourite book
  acts_as_favoritor

  ##For assign a role
  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ## Callbacks
  after_create :assign_default_role

  def assign_default_role
    if self.email.eql?('admin@mail.com')
      self.add_role(:admin) if self.roles.blank?
    else
      self.add_role(:user) if self.roles.blank?
    end
  end
end
