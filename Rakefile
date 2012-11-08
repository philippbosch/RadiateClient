# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'

Bundler.require

Motion::Project::App.setup do |app|
  app.name = 'RadiateClient'
  app.pods do
    pod 'SocketRocket', :head
    pod 'Bully'
  end
  app.frameworks << 'MediaPlayer'
  app.frameworks << 'AudioToolbox'
  app.vendor_project('vendor/RBVolumeButtons', :static)
end
