class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  # Uncomment me for LDAP and comment out the line devise :database_authenticatable, :registerable, :recoverable,
  # devise :ldap_authenticatable,

  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, as: :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :authentication_token

  has_many :posts

  ## Uncomment me for LDAP
  #before_save :get_ldap_updates
  #
  #def get_ldap_updates
  #  self.name = Devise::LDAP::Adapter.get_ldap_param(self.email,'displayName').first
  #end

end
