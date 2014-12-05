var includeCSRF;

includeCSRF = function($httpProvider) {
	return $httpProvider.defaults.headers.common["X-CSRF-Token"] = $("meta[name=csrf-token]").attr("content");
};

window.VirtueViceApp = angular.module("VirtueViceApp", []);

VirtueViceApp.config(includeCSRF);

VirtueViceApp.config(function($routeProvider) {
	return $routeProvider
	.when("/taco", {
		templateUrl: window.rootUrl + "/views/dashboard.html",
		controller: "DashboardController"
	}).otherwise({
		redirectTo: "/"
	});
});
