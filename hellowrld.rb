#hellowrld.rb

require 'sinatra'

get '/' do
  output = 'Hello world!'
  output << '<br />'
  output << '<a href ="/goodbye">Leave</a>'
  output
end

get '/goodbye' do
  'Goodbye world!'
end

get '/form' do
  form = '<form action="/form" method="post">'
  form << '<input type="submit" value="Submit"/>'
  form << '</form>'
  form
end

post '/form' do
  'Thank u for submitting the form.'
end

get '/about' do
  redirect('/company/about')
end

get '/company/about' do
  output = '<h2> Sinatra</h2>'
  output << '<p> This is ma first Sinatra app. </p>'
  output
end

get /\^\/company\/[A-Za-z\-]+\$/ do
  'This route matches a Regex'
end

get '/company/*' do
  'This route catches everything else'
end

get '/products/:id' do
  "Product ID is: #{params[:id]}"
end