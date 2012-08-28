class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.column :title, :string
      t.column :filename, :string
      t.column :license_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
