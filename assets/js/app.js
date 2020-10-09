$(document).ready(function () {
    // Global document namespace
    var GBC = window.GBC || {};

    var Menu = (function (option) {
        this.isAnimating = false;
        this.hidden = true;

        function reset() {
            self.isAnimating = false;
            self.hidden = !self.hidden;
        }

        var self = this,
            menuElem = option.menuElem,
            menuItems = option.menuItems,
            playHead = new TimelineMax({
                paused: true,
                yoyo: true,
                onComplete: reset,
                onReverseComplete: reset,
            });
        // Animation parameters setup
        var init = function () {
            playHead
                .set(menuElem, { display: "block", autoAlpha: 0, height: 0 })
                .set(menuItems, { autoAlpha: 0, yPercent: "-50%", scale: 1.2 })
                .to(menuElem, 2, {
                    bezier: {
                        values: [
                            { height: "0" },
                            { height: "40vh" },
                            { height: "100vh" },
                        ],
                    },
                    autoAlpha: 1,
                    force3D: true,
                    ease: Back.easeInOut,
                })
                .staggerTo(
                    menuItems,
                    0.6,
                    {
                        bezier: {
                            type: "soft",
                            values: [
                                { yPercent: "-50%" },
                                { yPercent: "3%" },
                                { yPercent: "0%" },
                            ],
                        },
                        autoAlpha: 1,
                        scale: 1,
                        force3D: true,
                    },
                    0.1,
                    "-=1"
                );
        };

        var show = function () {
            if (!self.isAnimating && self.hidden) {
                playHead.timeScale(1);
                playHead.play();
                console.log("I'm showing");
            }
        };

        var hide = function () {
            if (!self.Animating && !self.hidden) {
                playHead.timeScale(2);
                playHead.reverse();
                console.log("I'm hiding");
            }
        };

        var toggle = function () {
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
            toggle: toggle,
        };
    })({ menuElem: $(".jsMenuElem"), menuItems: $(".jsMenuElem").find("li") });

    // Menu Button
    // Animate menu button icon and toggle menu item when main navigation menu button is clicked
    GBC.menuBtn = $(".menu");
    GBC.menuBtn.on("click", function () {
        var _this = $(this);
        _this.toggleClass("open");

        // Toggle menu display
        Menu.toggle();
    });

    // Accordion
    // Implementation of accordion functionality
    // Principle: Active accordion element will be visible on page while other elements remain hidden
    GBC.Accordion = function () {
        //Accordion option
        var option = (this.option = {
            elem: $(".accordion"),
            clickTarget: $(".accordion_header"),
            content: $(".accordion_content"),
        });

        // Initialize function; hide all accordion content
        this.init = function () {
            calHeightAccordionContent();

            option.clickTarget.each(function () {
                var elemContent = $(this).next();
                var elemContentHeight = elemContent.data("height");

                $(this).on("click", function () {
                    var $this = $(this);
                    var currentHeight = elemContent.height();

                    if (
                        currentHeight !== 0 &&
                        currentHeight !== elemContentHeight
                    ) {
                        return;
                    }
                    if (currentHeight !== 0) {
                        hideAccordionContent(elemContent);
                        $this.removeClass("active");
                        return;
                    } else {
                        showAccordionContent(elemContent);
                        $this.addClass("active");
                    }
                });
            });
        };

        // Don't initialize slide if the accordion is set to inactive
        if (this.option.elem.parent().hasClass("accordion-inactive")) {
            this.init = false;
        }

        function calHeightAccordionContent() {
            option.content.each(function () {
                $(this).data("height", $(this).outerHeight());
                $(this).css("height", 0);
            });
        }

        // Click event for each individual accordion clickTarget element
        // An active class will be attached to clicked element
        // The clicked view's content states becomes visible while other elements changes their content states to hidden

        function showAccordionContent($elem) {
            var elemHeight = $elem.data("height");

            TweenMax.to($elem, 0.5, {
                height: elemHeight,
                ease: Expo.easeOut,
                force3D: true,
            });
        }

        function hideAccordionContent($elem) {
            TweenMax.to($elem, 0.5, {
                height: 0,
                ease: Expo.easeOut,
                force3D: true,
            });
        }

        return {
            init: this.init,
        };
    };

    // Truncated Box
    GBC.TruncatedBox = function (options) {
        var self = this;

        this.options = {
            elem: $(".truncated-box"),
            closeBtn: $(".truncated-box").find(".icon-expand"),
        };

        var init = function () {
            if (options) {
                $.extend(self.options, options);
            }

            if (self.options.elem.length < 0) {
                return;
            }

            self.options.closeBtn.on("click", function () {
                var elem = $(this).parent(),
                    standardHeight = elem.height(), // Predefined maximum height
                    realHeight = elem.css({ height: "auto" }).height(); // get complete height of element

                elem.css({ height: standardHeight }); // reset height to predefined height

                TweenMax.to(elem, 1, {
                    height: realHeight,
                    ease: Expo.easeInOut,
                });
                TweenMax.to($(this), 0.5, { autoAlpha: 0, yPercent: "200%" });
                TweenMax.to(elem.find(".transparent-overlay"), 1, {
                    delay: 0.5,
                    autoAlpha: 0,
                    yPercent: "200%",
                });
            });
        };

        return {
            init: init,
        };
    };

    GBC.Team = (function () {
        var self = this;
        var isNotTouch =
            WURFL.is_mobile === false && WURFL.form_factor === "Desktop";

        this.options = {
            container: $(".team"),
            member: $(".team").find(".team_member"),
        };

        var init = function () {
            if (WURFL.form_factor === "Dekstop") {
                self.options.member.height(calcImageHeight() - 1);
            }

            if (isNotTouch) {
                self.options.container.addClass("team-desktop");
                // Hide other elements and only keep this visible
                self.options.member.each(function () {
                    $(this)
                        .on("mouseenter", fadeOtherMembers)
                        .on("mouseleave", showOtherMembers);
                });
            }
        };

        var fadeOtherMembers = function () {
            var $this = $(this);

            self.options.container.addClass("team-fade");
            $this.addClass("active");
            showDetails($this);
        };

        var showOtherMembers = function () {
            var $this = $(this);

            self.options.container.removeClass("team-fade");
            $this.removeClass("active");
            hideDetails($this);
        };

        var calcImageHeight = function () {
            return self.options.member.eq(2).height();
        };

        var hideDetails = function (elem) {
            var $this = elem,
                overlay = $this.find(".overlay"),
                name = $this.find(".team_member_name"),
                designation = $this.find(".team_member_designation"),
                icon = $this.find(".icon");

            TweenMax.to(icon, 0.7, {
                autoAlpha: 0,
                xPercent: "200%",
                ease: Expo.easeOut,
                force3D: true,
            });
            TweenMax.to(designation, 0.7, {
                autoAlpha: 0,
                yPercent: "200%",
                force3D: true,
            });
            TweenMax.to(name, 1, {
                autoAlpha: 0,
                yPercent: "200%",
                ease: Expo.easeOut,
                force3D: true,
            });
            TweenMax.to(overlay, 0.6, { autoAlpha: 0 });
        };

        var showDetails = function (elem) {
            var $this = elem,
                overlay = $this.find(".overlay"),
                name = $this.find(".team_member_name"),
                designation = $this.find(".team_member_designation"),
                icon = $this.find(".icon");

            TweenMax.set(name, { autoAlpha: 0, yPercent: "400%" });
            TweenMax.set(designation, { autoAlpha: 0, yPercent: "200%" });
            TweenMax.set(icon, { autoAlpha: 0, xPercent: "200%" });

            TweenMax.to(overlay, 0.6, { autoAlpha: 1 });
            TweenMax.to(name, 1.5, {
                autoAlpha: 1,
                yPercent: "0%",
                delay: 0.3,
                ease: Expo.easeOut,
                force3D: true,
            });
            TweenMax.to(designation, 0.7, {
                autoAlpha: 1,
                delay: 0.9,
                yPercent: "0%",
                force3D: true,
            });
            TweenMax.to(icon, 0.7, {
                autoAlpha: 1,
                delay: 0.9,
                xPercent: "0%",
                ease: Expo.easeOut,
                force3D: true,
            });
        };

        if (self.options.container.length > 0) {
            init();
        }
    })();

    GBC.dropdown = (function () {
        var dropdownElem = $(".jsDropDown"),
            dropdownBtn = dropdownElem.parent().find(".button");

        if (!dropdownElem) {
            return;
        }

        var init = function () {
            dropdownElem.each(function () {
                var $this = $(this);

                // Confirm if the height of the dropdown element is handcoded
                // If it's not, hardcode it

                if (!$this.data("height")) {
                    $this.css("display", "block");
                    $this.data("height", $this.height());
                    $this.css("height", 0);
                }

                // Make width of dropdown equal to control button
                var dropdownBtn = $this.parent().find(".button"),
                    dropdownBtnWidth = dropdownBtn.outerWidth();

                $this.css("min-width", dropdownBtnWidth);
            });
        };

        var showDropdown = function (elem) {
            var dropdownHeight = elem.data("height");
            TweenMax.to(elem, 0.5, {
                height: dropdownHeight,
                ease: Power2.easeOut,
            });
            elem.data("visible", true);
        };

        var hideDropdown = function (elem) {
            TweenMax.to(elem, 0.5, { height: 0, ease: Power2.easeOut });
            elem.data("visible", false);
        };

        var toggleDropdown = function (elem) {
            var isVisible = elem.data("visible");

            if (isVisible === false || !isVisible) {
                showDropdown(elem);
            } else {
                hideDropdown(elem);
            }
        };

        init();

        dropdownBtn.on("click", function () {
            var elem = $(this).parent().find(".jsDropDown");
            toggleDropdown(elem);
        });
    })();

    GBC.clientCarousel = function () {
        $(".js-clients-carousel").owlCarousel();
    };

    var Accordion = new GBC.Accordion();
    Accordion.init();

    var TruncatedBox = new GBC.TruncatedBox();
    TruncatedBox.init();

    // Go back to previous page
    var previousPageBtn = $(".prevPageBtn");
    previousPageBtn.on("click", function () {
        window.history.back();
        return false;
    });

    // Activate cilent list carousel
    var clients = $(".client-list.jsCarousel");

    if (clients.length > 0) {
        clients.owlCarousel({
            loop: true,
            margin: 0,
            responsive: {
                0: {
                    items: 2,
                },
                600: {
                    items: 3,
                },
                1000: {
                    items: 5,
                },
            },
        });
    }
});
