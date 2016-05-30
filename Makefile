.PHONY: img
img:
	docker build --pull=true -t quay.io/freshbooks/zendesk-application-tools .

.PHONY: push
push: img
	docker push quay.io/freshbooks/zendesk-application-tools

