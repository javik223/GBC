/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./src/js/app.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./src/js/app.js":
/*!***********************!*\
  !*** ./src/js/app.js ***!
  \***********************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("$(document).ready(function () {\n  // Global document namespace\n  var GBC = window.GBC || {};\n\n  var Menu = function (option) {\n    this.isAnimating = false;\n    this.hidden = true;\n\n    function reset() {\n      self.isAnimating = false;\n      self.hidden = !self.hidden;\n    }\n\n    var self = this,\n        menuElem = option.menuElem,\n        menuItems = option.menuItems,\n        playHead = new TimelineMax({\n      paused: true,\n      yoyo: true,\n      onComplete: reset,\n      onReverseComplete: reset\n    }); // Animation parameters setup\n\n    var init = function () {\n      playHead.set(menuElem, {\n        display: \"block\",\n        autoAlpha: 0,\n        height: 0\n      }).set(menuItems, {\n        autoAlpha: 0,\n        yPercent: \"-50%\",\n        scale: 1.2\n      }).to(menuElem, 2, {\n        bezier: {\n          values: [{\n            height: \"0\"\n          }, {\n            height: \"40vh\"\n          }, {\n            height: \"100vh\"\n          }]\n        },\n        autoAlpha: 1,\n        force3D: true,\n        ease: Back.easeInOut\n      }).staggerTo(menuItems, 0.6, {\n        bezier: {\n          type: \"soft\",\n          values: [{\n            yPercent: \"-50%\"\n          }, {\n            yPercent: \"3%\"\n          }, {\n            yPercent: \"0%\"\n          }]\n        },\n        autoAlpha: 1,\n        scale: 1,\n        force3D: true\n      }, 0.1, \"-=1\");\n    };\n\n    var show = function () {\n      if (!self.isAnimating && self.hidden) {\n        playHead.timeScale(1);\n        playHead.play();\n        console.log(\"I'm showing\");\n      }\n    };\n\n    var hide = function () {\n      if (!self.Animating && !self.hidden) {\n        playHead.timeScale(2);\n        playHead.reverse();\n        console.log(\"I'm hiding\");\n      }\n    };\n\n    var toggle = function () {\n      if (!self.Animating && self.hidden) {\n        show();\n      } else if (!self.Animating && !self.hidden) {\n        hide();\n      }\n    }; // Initialize Menu\n\n\n    init();\n    return {\n      show: show,\n      hide: hide,\n      toggle: toggle\n    };\n  }({\n    menuElem: $(\".jsMenuElem\"),\n    menuItems: $(\".jsMenuElem\").find(\"li\")\n  }); // Menu Button\n  // Animate menu button icon and toggle menu item when main navigation menu button is clicked\n\n\n  GBC.menuBtn = $(\".menu\");\n  GBC.menuBtn.on(\"click\", function () {\n    var _this = $(this);\n\n    _this.toggleClass(\"open\"); // Toggle menu display\n\n\n    Menu.toggle();\n  }); // Accordion\n  // Implementation of accordion functionality\n  // Principle: Active accordion element will be visible on page while other elements remain hidden\n\n  GBC.Accordion = function () {\n    //Accordion option\n    var option = this.option = {\n      elem: $(\".accordion\"),\n      clickTarget: $(\".accordion_header\"),\n      content: $(\".accordion_content\")\n    }; // Initialize function; hide all accordion content\n\n    this.init = function () {\n      calHeightAccordionContent();\n      option.clickTarget.each(function () {\n        var elemContent = $(this).next();\n        var elemContentHeight = elemContent.data(\"height\");\n        $(this).on(\"click\", function () {\n          var $this = $(this);\n          var currentHeight = elemContent.height();\n\n          if (currentHeight !== 0 && currentHeight !== elemContentHeight) {\n            return;\n          }\n\n          if (currentHeight !== 0) {\n            hideAccordionContent(elemContent);\n            $this.removeClass(\"active\");\n            return;\n          } else {\n            showAccordionContent(elemContent);\n            $this.addClass(\"active\");\n          }\n        });\n      });\n    }; // Don't initialize slide if the accordion is set to inactive\n\n\n    if (this.option.elem.parent().hasClass(\"accordion-inactive\")) {\n      this.init = false;\n    }\n\n    function calHeightAccordionContent() {\n      option.content.each(function () {\n        $(this).data(\"height\", $(this).outerHeight());\n        $(this).css(\"height\", 0);\n      });\n    } // Click event for each individual accordion clickTarget element\n    // An active class will be attached to clicked element\n    // The clicked view's content states becomes visible while other elements changes their content states to hidden\n\n\n    function showAccordionContent($elem) {\n      var elemHeight = $elem.data(\"height\");\n      TweenMax.to($elem, 0.5, {\n        height: elemHeight,\n        ease: Expo.easeOut,\n        force3D: true\n      });\n    }\n\n    function hideAccordionContent($elem) {\n      TweenMax.to($elem, 0.5, {\n        height: 0,\n        ease: Expo.easeOut,\n        force3D: true\n      });\n    }\n\n    return {\n      init: this.init\n    };\n  }; // Truncated Box\n\n\n  GBC.TruncatedBox = function (options) {\n    var self = this;\n    this.options = {\n      elem: $(\".truncated-box\"),\n      closeBtn: $(\".truncated-box\").find(\".icon-expand\")\n    };\n\n    var init = function () {\n      if (options) {\n        $.extend(self.options, options);\n      }\n\n      if (self.options.elem.length < 0) {\n        return;\n      }\n\n      self.options.closeBtn.on(\"click\", function () {\n        var elem = $(this).parent(),\n            standardHeight = elem.height(),\n            // Predefined maximum height\n        realHeight = elem.css({\n          height: \"auto\"\n        }).height(); // get complete height of element\n\n        elem.css({\n          height: standardHeight\n        }); // reset height to predefined height\n\n        TweenMax.to(elem, 1, {\n          height: realHeight,\n          ease: Expo.easeInOut\n        });\n        TweenMax.to($(this), 0.5, {\n          autoAlpha: 0,\n          yPercent: \"200%\"\n        });\n        TweenMax.to(elem.find(\".transparent-overlay\"), 1, {\n          delay: 0.5,\n          autoAlpha: 0,\n          yPercent: \"200%\"\n        });\n      });\n    };\n\n    return {\n      init: init\n    };\n  };\n\n  GBC.Team = function () {\n    var self = this;\n    var isNotTouch = WURFL.is_mobile === false && WURFL.form_factor === \"Desktop\";\n    this.options = {\n      container: $(\".team\"),\n      member: $(\".team\").find(\".team_member\")\n    };\n\n    var init = function () {\n      if (WURFL.form_factor === \"Dekstop\") {\n        self.options.member.height(calcImageHeight() - 1);\n      }\n\n      if (isNotTouch) {\n        self.options.container.addClass(\"team-desktop\"); // Hide other elements and only keep this visible\n\n        self.options.member.each(function () {\n          $(this).on(\"mouseenter\", fadeOtherMembers).on(\"mouseleave\", showOtherMembers);\n        });\n      }\n    };\n\n    var fadeOtherMembers = function () {\n      var $this = $(this);\n      self.options.container.addClass(\"team-fade\");\n      $this.addClass(\"active\");\n      showDetails($this);\n    };\n\n    var showOtherMembers = function () {\n      var $this = $(this);\n      self.options.container.removeClass(\"team-fade\");\n      $this.removeClass(\"active\");\n      hideDetails($this);\n    };\n\n    var calcImageHeight = function () {\n      return self.options.member.eq(2).height();\n    };\n\n    var hideDetails = function (elem) {\n      var $this = elem,\n          overlay = $this.find(\".overlay\"),\n          name = $this.find(\".team_member_name\"),\n          designation = $this.find(\".team_member_designation\"),\n          icon = $this.find(\".icon\");\n      TweenMax.to(icon, 0.7, {\n        autoAlpha: 0,\n        xPercent: \"200%\",\n        ease: Expo.easeOut,\n        force3D: true\n      });\n      TweenMax.to(designation, 0.7, {\n        autoAlpha: 0,\n        yPercent: \"200%\",\n        force3D: true\n      });\n      TweenMax.to(name, 1, {\n        autoAlpha: 0,\n        yPercent: \"200%\",\n        ease: Expo.easeOut,\n        force3D: true\n      });\n      TweenMax.to(overlay, 0.6, {\n        autoAlpha: 0\n      });\n    };\n\n    var showDetails = function (elem) {\n      var $this = elem,\n          overlay = $this.find(\".overlay\"),\n          name = $this.find(\".team_member_name\"),\n          designation = $this.find(\".team_member_designation\"),\n          icon = $this.find(\".icon\");\n      TweenMax.set(name, {\n        autoAlpha: 0,\n        yPercent: \"400%\"\n      });\n      TweenMax.set(designation, {\n        autoAlpha: 0,\n        yPercent: \"200%\"\n      });\n      TweenMax.set(icon, {\n        autoAlpha: 0,\n        xPercent: \"200%\"\n      });\n      TweenMax.to(overlay, 0.6, {\n        autoAlpha: 1\n      });\n      TweenMax.to(name, 1.5, {\n        autoAlpha: 1,\n        yPercent: \"0%\",\n        delay: 0.3,\n        ease: Expo.easeOut,\n        force3D: true\n      });\n      TweenMax.to(designation, 0.7, {\n        autoAlpha: 1,\n        delay: 0.9,\n        yPercent: \"0%\",\n        force3D: true\n      });\n      TweenMax.to(icon, 0.7, {\n        autoAlpha: 1,\n        delay: 0.9,\n        xPercent: \"0%\",\n        ease: Expo.easeOut,\n        force3D: true\n      });\n    };\n\n    if (self.options.container.length > 0) {\n      init();\n    }\n  }();\n\n  GBC.dropdown = function () {\n    var dropdownElem = $(\".jsDropDown\"),\n        dropdownBtn = dropdownElem.parent().find(\".button\");\n\n    if (!dropdownElem) {\n      return;\n    }\n\n    var init = function () {\n      dropdownElem.each(function () {\n        var $this = $(this); // Confirm if the height of the dropdown element is handcoded\n        // If it's not, hardcode it\n\n        if (!$this.data(\"height\")) {\n          $this.css(\"display\", \"block\");\n          $this.data(\"height\", $this.height());\n          $this.css(\"height\", 0);\n        } // Make width of dropdown equal to control button\n\n\n        var dropdownBtn = $this.parent().find(\".button\"),\n            dropdownBtnWidth = dropdownBtn.outerWidth();\n        $this.css(\"min-width\", dropdownBtnWidth);\n      });\n    };\n\n    var showDropdown = function (elem) {\n      var dropdownHeight = elem.data(\"height\");\n      TweenMax.to(elem, 0.5, {\n        height: dropdownHeight,\n        ease: Power2.easeOut\n      });\n      elem.data(\"visible\", true);\n    };\n\n    var hideDropdown = function (elem) {\n      TweenMax.to(elem, 0.5, {\n        height: 0,\n        ease: Power2.easeOut\n      });\n      elem.data(\"visible\", false);\n    };\n\n    var toggleDropdown = function (elem) {\n      var isVisible = elem.data(\"visible\");\n\n      if (isVisible === false || !isVisible) {\n        showDropdown(elem);\n      } else {\n        hideDropdown(elem);\n      }\n    };\n\n    init();\n    dropdownBtn.on(\"click\", function () {\n      var elem = $(this).parent().find(\".jsDropDown\");\n      toggleDropdown(elem);\n    });\n  }();\n\n  function initClientCarousel() {\n    var responsive = [{\n      breakpoint: 1024,\n      settings: {\n        slidesToShow: 5,\n        slidesToScroll: 2,\n        infinite: true,\n        dots: true\n      }\n    }, {\n      breakpoint: 768,\n      settings: {\n        slidesToShow: 4,\n        slidesToScroll: 2\n      }\n    }, {\n      breakpoint: 300,\n      settings: {\n        slidesToShow: 3,\n        slidesToScroll: 1\n      }\n    }];\n    $(\".js-clients-carousel\").slick({\n      autoplay: true,\n      autoplaySpeed: 2000,\n      infinite: true,\n      slidesToShow: 5,\n      slidesToScroll: 2,\n      responsive: responsive\n    });\n  }\n\n  initClientCarousel();\n  var Accordion = new GBC.Accordion();\n  Accordion.init();\n  var TruncatedBox = new GBC.TruncatedBox();\n  TruncatedBox.init(); // Go back to previous page\n\n  var previousPageBtn = $(\".prevPageBtn\");\n  previousPageBtn.on(\"click\", function () {\n    window.history.back();\n    return false;\n  }); // Activate cilent list carousel\n\n  var clients = $(\".client-list.jsCarousel\");\n\n  if (clients.length > 0) {\n    clients.owlCarousel({\n      loop: true,\n      margin: 0,\n      responsive: {\n        0: {\n          items: 2\n        },\n        600: {\n          items: 3\n        },\n        1000: {\n          items: 5\n        }\n      }\n    });\n  }\n});\n\n//# sourceURL=webpack:///./src/js/app.js?");

/***/ })

/******/ });