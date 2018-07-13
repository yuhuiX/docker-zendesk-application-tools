#!/bin/sh

# valid for 2.9.5
cd /usr/local/bundle/gems/zendesk_apps_tools-*/lib/zendesk_apps_tools/ && cat  << EOF | patch server.rb
--- server.rb.original
+++ server.rb.modified
@@ -8,6 +8,7 @@
     set :server, :thin
     set :logging, true
     set :protection, except: :frame_options
+    set :bind, "0.0.0.0"
     ZENDESK_DOMAINS_REGEX = %r{^http(?:s)?://[a-z0-9-]+\.(?:zendesk|zopim|zd-(?:dev|master|staging))\.com$}

     get '/app.js' do
EOF

