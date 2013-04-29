class ContentNotifier < ActionMailer::Base
  
  default :from     => 'downloads@asapisystems.com',
          :bcc      => 'admin@asapisystems.com'
  
  def notify(document_id, summary)
    @document = Document.find(document_id)
    @summary = summary
    recipients = Download.find_all_by_email_notification(true).collect(&:email).uniq
    recipients.each do |recipient|
      change_notification(recipient).deliver
      sleep 1
    end
  end
  
  def change_notification(recipient)
    prototype_download = Download.find(:first, :conditions => ['email = ?', recipient], :order => 'created_at desc')
    if prototype_download
      @download = Download.new(:email => prototype_download.email,
                               :license_agreement => true,
                               :email_notification => true,
                               :quality_assurance => prototype_download.quality_assurance,
                               :first_name => prototype_download.first_name,
                               :last_name => prototype_download.last_name,
                               :document_id => prototype_download.document_id)
      mail(:subject => "Download Change Notification for '#{@document.title}'", :to => recipient)
    end
  end
  
end
