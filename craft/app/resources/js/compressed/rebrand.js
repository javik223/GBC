/*
 Copyright (c) 2014, Pixel & Tonic, Inc.
 @license   http://buildwithcraft.com/license Craft License Agreement
 @see       http://buildwithcraft.com
 @package   craft.app.resources
*/
(function(c){function f(a,d){"undefined"!=typeof d.html&&($html=c(d.html),"object"==typeof a.data("imageUpload")&&(a.data("imageUpload").destroy(),a.data("imageUpload",null)),a.replaceWith($html),g($html))}function g(a){var d=a.data("type"),b={modalClass:"cp-image-modal",uploadAction:"rebrand/uploadSiteImage",deleteMessage:Craft.t("Are you sure you want to delete the uploaded image?"),deleteAction:"rebrand/deleteSiteImage",cropAction:"rebrand/cropSiteImage",areaToolOptions:{aspectRatio:"",initialRectangle:{mode:"auto"}}};
b.onImageSave=c.proxy(function(a){f(c(this),a)},a);b.onImageDelete=c.proxy(function(a,b){f(c(this),a)},a);b.uploadButton=a.find(".upload");b.deleteButton=a.find(".delete");b.postParameters={type:d};a.data("imageUpload",new Craft.ImageUpload(b))}for(var h=c(".cp-image"),e=0;e<h.length;e++)g(h.eq(e))})(jQuery);

//# sourceMappingURL=rebrand.min.map
