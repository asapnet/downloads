class RenameAcceptanceField < ActiveRecord::Migration
  def self.up
    rename_column :downloads, :accepted, :license_agreement
  end

  def self.down
    rename_column :downloads, :license_agreement, :accepted
  end
end