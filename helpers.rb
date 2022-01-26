helpers do

  def render_view(path, options = {})
    erb(path.to_sym, options)
  end

  def render_partial(path, options = {})
    parts = path.to_s.split('/')
    filename = parts.pop
    newpath = [parts, "_#{filename}"].join('/')
    erb(newpath.to_sym, options.merge(:layout => false))
  end

  def h(text)
    Rack::Utils.escape_html(text)
  end

end