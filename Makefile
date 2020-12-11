install-react-app:
	@cd front-end && npm install

build-react-app:
	@cd front-end && npm run build

move-static-files:
	@rm -rf ml_api/build
	@cp -r front-end/build ml_api/build

install-python-requirements:
	@cd ml_api && pip3 install -r requirements.txt

start-endpoint:
	@cd ml_api && uvicorn main:app --reload

make run-app: install-react-app build-react-app move-static-files install-python-requirements start-endpoint
	@echo "This might take a second"