# docker-zendesk-application-tools
Docker'd [zendesk-application-tools]"https://developer.zendesk.com/apps/docs/agent/tools"

Useful for validating and packaging applications as part of CI.

Tip: If you're running docker-machine (Eg. Docker for Mac) and want to run 'zat
server', try asking docker-machine to port forward 4567 for you.  (Zendesk
looks for the development server running on localhost:4567)

	docker-machine ssh default -tt -L 4567:localhost:4567 \
		docker run \
			-ti \
			-p 4567:4567 \
			-v ${PWD}:${PWD} \
			-w ${PWD} \
			quay.io/freshbooks/zendesk-application-tools \
			zat server

Then, hit https://<your subdomain>.zendesk.com/agent/tickets/1?zat=true

