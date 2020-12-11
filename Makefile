install-react-app:
	@cd front-end && npm install
build-react-app:
	@cd front-end && npm run build

move-static-files:
	@rm -rf ml_api/build
	@cp -r front-end/build ml_api/build

start-endpoint:
	@cd ml_api && uvicorn main:app --reload