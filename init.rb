require 'flotilla'
# Check for presence of jrails plugin
begin
  Flotilla.jrails_present = true
  require 'jrails'
rescue Exception
  Flotilla.jrails_present = false
end
ActionView::Helpers::JavaScriptHelper.send :include, Flotilla
ActionView::Base.send :include, Flotilla

