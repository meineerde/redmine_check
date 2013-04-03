ActionController::Routing::Routes.draw do |map|
  map.connect 'check', :controller => 'check', :action => 'index',
              :conditions => {:method => [:get]}
end
