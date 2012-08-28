module DocumentsHelper
  
  def downloads_root_url
    "#{request.protocol}#{request.host}#{request.port == 80 ? '' : ':' + request.port.to_s}"
  end
  
  def document_index_url
    "#{downloads_root_url}/documents"
  end
  
  def document_download_url(filename)
    "#{downloads_root_url}/#{filename}"
  end
  
  def rss_time_format(time)
    time.strftime('%a, %d %b %Y %H:%M:%S %Z+00.00').sub('UTC', 'GMT')
  end
  
end
