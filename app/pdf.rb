# PDF 2 HTML API
# POST http://localhost:4567/pdf

post '/pdf' do 
  return_message = {} 
  return_message[:status] = 'failure'

  # Validate URL
  if params['url'] and params['url'] =~ /\A#{URI::regexp}\z/
    # URL to Convert
    url = params['url']
    # Build filename using a GUID
    name = 'public/pdf/' + UUIDTools::UUID.random_create.to_s + '.pdf'
    # System Command to Execute
    cmd = 'wkhtmltopdf --print-media-type ' + url + ' ' + name
    # Execute WKHTMLTOPDF
    Open3.popen2e(cmd) do |stdin, stdout, wait_thr|
      puts stdout.read
      #return_message[:wkhtmltopdf] = stdout.read
    end
    # Did WKHTMLTOPDF process the file?
    if File.file?(name)
      return_message[:status] = 'success'
      return_message[:pdf] = name.gsub('public','')
    end
  end

  if params['show_me']
    redirect return_message[:pdf]
  else
    return_message.to_json 
  end
end