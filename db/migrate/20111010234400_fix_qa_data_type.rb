class FixQaDataType < ActiveRecord::Migration
  def self.up
    change_column :downloads, :quality_assurance, :boolean
  end

  def self.down
    change_column :downloads, :quality_assurance, :string
  end
end