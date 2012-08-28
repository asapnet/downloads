class CreateDownloads < ActiveRecord::Migration
  def self.up
    create_table :downloads do |t|
      t.column :email, :string
      t.column :accepted, :boolean, :default => false
      t.column :ip_address, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :downloads
  end
end
