class CreateLicenses < ActiveRecord::Migration
  def self.up
    create_table :licenses do |t|
      t.column :title, :string
      t.column :content, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :licenses
  end
end
