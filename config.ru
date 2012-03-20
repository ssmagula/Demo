use Rack::Static, 
  :urls => ["/assets/css", "/assets/img", "/assets/js", "/assets/ico", "/docs", "./"],
  :root => "public/bootstrap/docs"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/bootstrap/docs/index.html', File::RDONLY)
  ]
}