class AddDocumentReferenceToDownloads < ActiveRecord::Migration
  def self.up
    add_column :downloads, :document_id, :integer
  end

  def self.down
    remove_column :downloads, :document_id
  end
end