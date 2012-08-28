class Document < ActiveRecord::Base
  
  has_many :downloads
  belongs_to :license
  
  def file_path
    "#{RAILS_ROOT}/documents/#{filename}"
  end
  
  def file_url
    "http://downloads.asapisoft.com/#{filename}"
  end
  
  def last_modification_time_of_file
    File::mtime(file_path).gmtime
  end
  
end
