require 'rack'

  app = Proc.new do |env|
    ['200',
      {'Content-Type' => 'text/html'},
      ['hello world!!!']
    ]
  end


  app = Proc.new do |env|
    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text/html'
    # define the content type is html
    # compare 'text/text' is just a plain text
    # res.write("Hello World!!!!")
    res.write(req.path)
    # using req.path can show the requested path
    # res.write("<h1>This is a html header!</h1>")
    res.finish
  end

  # link css the later one will overwrite the previous one!



Rack::Server.start(
  app: app,
  Port: 3000
)
# Using Port not port
