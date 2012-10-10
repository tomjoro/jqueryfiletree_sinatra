require 'rubygems'
require 'sinatra'
require 'open-uri'

require 'dir_list'

enable :sessions

# Set utf-8 for outgoing
before do
  headers "Content-Type" => "text/html; charset=utf-8"
end

# Helpers
helpers do
  def site_title
    'JQuery File Tree with Sinatra'
  end
end

get '/*' do
  erb :index
end

post '/jqueryfiletree/content' do
  path = URI::decode( params[:dir] ).strip
  puts "  Post request: #{path}"
  #path = dir.to_s.strip
  path << '/' unless path[-1, 1] == '/'
  @results = []
  begin
    @results = DirList.list_dir(settings.file_root,  path)
  rescue  Errno::ENOENT => e
    puts "Error: couldn't open folder: #{e}"
  end
  erb :jquerytree, :layout => false
end


