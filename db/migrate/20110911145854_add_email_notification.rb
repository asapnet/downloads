class AddEmailNotification < ActiveRecord::Migration
  def self.up
    add_column :downloads, :email_notification, :boolean, :default => false
  end

  def self.down
    remove_column :downloads, :email_notification
  end
end