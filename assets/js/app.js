	$(document).ready(function(){
		// Global document namespace
		var GBC = window.GBC || {};

		var Menu = (function(option) {
			this.isAnimating = false;
			this.hidden = true;

			function reset() {
				self.isAnimating = false;
				self.hidden = !self.hidden;
			}

			var 
				self = this,
				menuElem = option.menuElem,
				menuItems = option.menuItems,
				playHead = new TimelineMax({paused: true, yoyo: true, onComplete:reset, onReverseComplete: reset})
				;

			// Animation parameters setup	
			var init = function() {
				playHead
					.set(menuElem, {display:"block", autoAlpha: 0, height: 0})
					.set(menuItems, {autoAlpha: 0, yPercent: "-50%", scale: 1.2} )
					.to(menuElem, 2, {bezier: {values: [{height: "0"}, {height: "40vh"}, {height: "100vh"}]}, autoAlpha: 1, force3D: true, ease:Back.easeInOut})
					.staggerTo(menuItems, 0.6, {bezier: {type: "soft", values:[{yPercent: "-50%"}, {yPercent: "3%"}, {yPercent: "0%"}]},  autoAlpha: 1, scale: 1, force3D: true}, 0.1, "-=1")
					;
			};

			var show = function() {
				if (!self.isAnimating && self.hidden) {
					playHead.timeScale(1);
					playHead.play();
					console.log("I'm showing");
				}
			};

			var hide = function() {
				if (!self.Animating && !self.hidden) {
					playHead.timeScale(2);
					playHead.reverse();
					console.log("I'm hiding");
				}
			};

			var toggle = function() {
				if (!self.Animating && self.hidden) {
					show();
				} else if (!self.Animating && !self.hidden) {
					hide();
				}
			};

			// Initialize Menu
			init();

			return {
				show: show,
				hide: hide,
				toggle: toggle
			};
		})({menuElem: $('.jsMenuElem'), menuItems: $(".jsMenuElem").find('li')});

		// Menu Button
		// Animate menu button icon and toggle menu item when main navigation menu button is clicked
		GBC.menuBtn = $(".menu");
		GBC.menuBtn.on('click', function(){
			var _this = $(this);
			_this.toggleClass('open');

			// Toggle menu display
			Menu.toggle();
		});
	});