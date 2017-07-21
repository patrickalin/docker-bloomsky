dcStop:
	@docker-compose stop

dcRm: dcStop
	@docker-compose rm -s -f -v

dcRestart: dcRm dcStart

dcStart:
	@docker-compose up -d

dcUp: dcStart

dBuild:
	@docker build .
