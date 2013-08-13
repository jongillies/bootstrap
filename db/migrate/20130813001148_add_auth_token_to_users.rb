class AddAuthTokenToUsers < ActiveRecord::Migration
# remember to add "devise :token_authenticatable" to user.rb
# and uncomment "config.token_authentication_key = :auth_token" from devise.rb
  def self.up
    change_table(:users) do |t|
      t.string :authentication_token
    end
    User.reset_column_information

    User.all.each do |user|
      puts "#{user.email} token generate"
      user.ensure_authentication_token
      user.save
    end
  end

  def self.down
    remove_column :users, :authentication_token
  end
end
