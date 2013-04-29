xml.instruct!

xml.rss(:version => "2.0") do
  xml.channel do
    xml.title('ASAP iSystems Downloads')
    xml.link(document_index_url)
    xml.description('An index of downloadable documents from ASAP iSystems')
    xml.pubDate(rss_time_format(Time.now.gmtime))
    @documents.each do |document|
      xml.item do
        xml.title(document.title)
        xml.link(document_download_url(document.filename))
        xml.description(document.description)
        xml.pubDate(rss_time_format(document.last_modification_time_of_file))
      end
    end
  end
end