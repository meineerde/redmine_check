begin
  require 'redmine'

  Redmine::Plugin.register :redmine_check do
    name 'Redmine Check plugin'
    url 'http://dev.holgerjust.de/projects/redmine-check'
    author 'Holger Just'
    author_url 'http://meine-er.de'
    description 'Add a simple and very cheap action to check whether the application stack is still alive.'
    version '0.1'
  end
rescue LoadError
  # Don't register the plugin, if we don't run in a Redmine(-like) environment
end
