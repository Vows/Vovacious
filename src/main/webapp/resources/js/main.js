/*
 * NOTE: DO NOT DELETE
 * This file is required by both requireJs and r.js to properly manage
 * packaging and loading dependencies. If you would like to add a convenience
 * alias, include it in the 'paths' object below.
 *
 * Your application's main entry point must follow the convention of being named
 * 'app.js' to take advantage of this behavior.
 *
 * {@see http://requirejs.org/docs/api.html#config}
 */
(function(module) {
	"use strict";

	var config = module.exports = {
		// baseUrl: "",
		paths: {
			'jquery'			: 'lib/jquery-1.10.2'
		},
		
		// Script-load timeout removed for Modem-Speed
		waitSeconds: 0,
		useStrict: true
	};

	if (typeof window !== "undefined" && navigator && document) {
		// Configure requires and bootstap app, conditionally loading JSON support
		require.config(config);
		require(["app"]);
	}

/*global module:true*/
}(typeof module === "undefined" ? {} : module));
/*global module:false*/
