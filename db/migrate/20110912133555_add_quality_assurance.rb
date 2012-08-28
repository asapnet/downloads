class AddQualityAssurance < ActiveRecord::Migration
  def self.up
    add_column :downloads, :quality_assurance, :string, :default => false
  end

  def self.down
    remove_column :downloads, :quality_assurance
  end
end