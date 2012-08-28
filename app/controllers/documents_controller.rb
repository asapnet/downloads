class DocumentsController < ApplicationController
  
  def index
    @documents = Document.find(:all)
  end
  
end
