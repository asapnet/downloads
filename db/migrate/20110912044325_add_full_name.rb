class AddFullName < ActiveRecord::Migration
  def self.up
    add_column :downloads, :first_name, :string
    add_column :downloads, :last_name, :string
  end

  def self.down
    remove_column :downloads, :last_name
    remove_column :downloads, :first_name
  end
end