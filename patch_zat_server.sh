#!/bin/sh


cd /usr/local/bundle/gems/zendesk_apps_tools-*/lib/zendesk_apps_tools/ && cat  << EOF | patch server.rb
--- server.rb.original
+++ server.rb.modified
@@ -5,6 +5,7 @@
   class Server < Sinatra::Base
     set :protection, :except => :frame_options
     last_mtime = Time.new(0)
+    set :bind, "0.0.0.0"
     ZENDESK_DOMAINS_REGEX = /^http(?:s)?:\/\/[a-z0-9-]+\.(?:zendesk|zopim|zd-(?:dev|master|staging))\.com$/

     get '/app.js' do
EOF

