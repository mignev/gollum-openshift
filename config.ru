require "rubygems"
Bundler.require(:default)

require 'gollum/app'

use Rack::Auth::Basic, "Welcome wiki  - authenticate!" do |name, password|
  _name = ENV['GOLLUM_USERNAME'] || 'wiki'
  _password = ENV['GOLLUM_PASSWORD'] || 'wiki'
  [name, password] == [_name, _password]
end

Precious::App.set(:gollum_path, File.join(ENV['OPENSHIFT_HOMEDIR'], 'git', "#{ENV['OPENSHIFT_APP_NAME']}.git"))
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, {:universal_toc => false})
run Precious::App
