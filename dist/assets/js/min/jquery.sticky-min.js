!function(t){"function"==typeof define&&define.amd?define(["jquery"],t):"object"==typeof module&&module.exports?module.exports=t(require("jquery")):t(jQuery)}((function(t){var e=Array.prototype.slice,i=Array.prototype.splice,r={topSpacing:0,bottomSpacing:0,className:"is-sticky",wrapperClassName:"sticky-wrapper",center:!1,getWidthFrom:"",widthFromWrapper:!0,responsiveWidth:!1},n=t(window),o=t(document),s=[],c=n.height(),a=function(){for(var e=n.scrollTop(),i=o.height(),r=i-c,a=e>r?r-e:0,p=0,l=s.length;p<l;p++){var d=s[p],u,h=d.stickyWrapper.offset().top-d.topSpacing-a;if(d.stickyWrapper.css("height",d.stickyElement.outerHeight()),e<=h)null!==d.currentTop&&(d.stickyElement.css({width:"",position:"",top:""}),d.stickyElement.parent().removeClass(d.className),d.stickyElement.trigger("sticky-end",[d]),d.currentTop=null);else{var y=i-d.stickyElement.outerHeight()-d.topSpacing-d.bottomSpacing-e-a,m;if(y<0?y+=d.topSpacing:y=d.topSpacing,d.currentTop!==y)d.getWidthFrom?m=t(d.getWidthFrom).width()||null:d.widthFromWrapper&&(m=d.stickyWrapper.width()),null==m&&(m=d.stickyElement.width()),d.stickyElement.css("width",m).css("position","fixed").css("top",y),d.stickyElement.parent().addClass(d.className),null===d.currentTop?d.stickyElement.trigger("sticky-start",[d]):d.stickyElement.trigger("sticky-update",[d]),d.currentTop===d.topSpacing&&d.currentTop>y||null===d.currentTop&&y<d.topSpacing?d.stickyElement.trigger("sticky-bottom-reached",[d]):null!==d.currentTop&&y===d.topSpacing&&d.currentTop<y&&d.stickyElement.trigger("sticky-bottom-unreached",[d]),d.currentTop=y}}},p=function(){c=n.height();for(var e=0,i=s.length;e<i;e++){var r=s[e],o=null;r.getWidthFrom?r.responsiveWidth&&(o=t(r.getWidthFrom).width()):r.widthFromWrapper&&(o=r.stickyWrapper.width()),null!=o&&r.stickyElement.css("width",o)}},l={init:function(e){var i=t.extend({},r,e);return this.each((function(){var e=t(this),n=e.attr("id"),o=e.outerHeight(),c=n?n+"-"+r.wrapperClassName:r.wrapperClassName,a=t("<div></div>").attr("id",c).addClass(i.wrapperClassName);e.wrapAll(a);var p=e.parent();i.center&&p.css({width:e.outerWidth(),marginLeft:"auto",marginRight:"auto"}),"right"===e.css("float")&&e.css({float:"none"}).parent().css({float:"right"}),p.css("height",o),i.stickyElement=e,i.stickyWrapper=p,i.currentTop=null,s.push(i)}))},update:a,unstick:function(e){return this.each((function(){for(var e=this,r=t(this),n=-1,o=s.length;o-- >0;)s[o].stickyElement.get(0)===this&&(i.call(s,o,1),n=o);-1!==n&&(r.unwrap(),r.css({width:"",position:"",top:"",float:""}))}))}};window.addEventListener?(window.addEventListener("scroll",a,!1),window.addEventListener("resize",p,!1)):window.attachEvent&&(window.attachEvent("onscroll",a),window.attachEvent("onresize",p)),t.fn.sticky=function(i){return l[i]?l[i].apply(this,e.call(arguments,1)):"object"!=typeof i&&i?void t.error("Method "+i+" does not exist on jQuery.sticky"):l.init.apply(this,arguments)},t.fn.unstick=function(i){return l[i]?l[i].apply(this,e.call(arguments,1)):"object"!=typeof i&&i?void t.error("Method "+i+" does not exist on jQuery.sticky"):l.unstick.apply(this,arguments)},t((function(){setTimeout(a,0)}))}));