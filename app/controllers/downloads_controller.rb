require 'uri'

class DownloadsController < ApplicationController
  
  def new
    document = lookup_document
    @download = Download.new(params[:download])
    @download.document = document
  end
  
  def create
    fields = params[:download] || {}
    @download = Download.new(fields.merge(:ip_address => request.ip))
    if @download.save
      send_file(@download.document.file_path)
    else
      render :action => "new"
    end
  end
  
  private
  
  def lookup_document
    if params[:document_id]
      Document.find(params[:document_id])
    else
      Document.find_by_filename(URI.unescape(request.path.sub('/', '')))
    end
  end
  
end
