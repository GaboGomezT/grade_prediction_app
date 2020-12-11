say-hello:
	@echo "Hello World"

build-react-app:
	@cd front-end && npm run build

pack-static-files:
	@cd front-end/build && mv *.* static

move-static-files:
	