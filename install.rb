require 'FileUtils'

dir = Dir.getwd

jrails_present = true
begin
  require 'jrails'
rescue Exception
  jrails_present = false
end

# Copy required javascripts to public/javascripts
begin
  FileUtils.copy(Dir[File.dirname(__FILE__) + '/javascripts/excanvas.min.js'], File.dirname(__FILE__) + '/../../../public/javascripts/')
  FileUtils.copy(Dir[File.dirname(__FILE__) + '/javascripts/jquery.flot.js'], File.dirname(__FILE__) + '/../../../public/javascripts/')
  FileUtils.copy(Dir[File.dirname(__FILE__) + '/javascripts/jquery.js'], File.dirname(__FILE__) + '/../../../public/javascripts/') unless jrails_present
rescue
  puts "Could not copy excanvas.js and jquery.flot.js.  Please manually copy them to your public/javascripts directory."
end