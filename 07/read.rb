# Rack and Basic Web Server HTTP
# Go to console and:
# gem intall rack
# Resources:
# http://rack.github.io/ 

require 'rack'

## The most basic web app

basic_app = -> (env) { ['200', {'Content-Type' => 'text/html'}, ["Hello World"]] }

# Uncomment if you want to run
# Rack::Handler::WEBrick.run basic_app

require 'erb'
require 'github/markup'

class Page
  
  def render
    ERB.new(File.read('./layout.erb')).result(binding)
  end

  def content
    render do
      GitHub::Markup.render('site.markdown', File.read('./site.markdown'))
    end
  end

end

webapp = -> (env) {
  ['200', {'Content-Type' => 'text/html'}, [ Page.new.content ] ]
}

# Rack::Handler::WEBrick
# Webrick Server
Rack::Handler::WEBrick.run webapp