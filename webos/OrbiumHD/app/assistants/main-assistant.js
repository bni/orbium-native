function MainAssistant() {
};

MainAssistant.prototype.setup = function() {
	Mojo.Event.listen(this.controller.stageController.document, Mojo.Event.stageActivate, this.activateWindow);
	Mojo.Event.listen(this.controller.stageController.document, Mojo.Event.stageDeactivate, this.deactivateWindow);
};

MainAssistant.prototype.activate = function(event) {
	this.controller.document.body.style.backgroundColor = "#000000";
	this.controller.enableFullScreenMode(true);
	this.controller.stageController.setWindowOrientation("left");
};

MainAssistant.prototype.deactivate = function(event) {
};

MainAssistant.prototype.cleanup = function(event) {
};

MainAssistant.prototype.activateWindow = function(event) {
};

MainAssistant.prototype.deactivateWindow = function(event) {
	window.orbium.menu.pause();
};
