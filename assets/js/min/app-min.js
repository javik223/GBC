$(document).ready(function(){var e=window.GBC||{},n=function(e){function n(){i.isAnimating=!1,i.hidden=!i.hidden}this.isAnimating=!1,this.hidden=!0;var i=this,t=e.menuElem,o=e.menuItems,a=new TimelineMax({paused:!0,yoyo:!0,onComplete:n,onReverseComplete:n}),s=function(){a.set(t,{display:"block",autoAlpha:0,height:0}).set(o,{autoAlpha:0,yPercent:"-50%",scale:1.2}).to(t,2,{bezier:{values:[{height:"0"},{height:"40vh"},{height:"100vh"}]},autoAlpha:1,force3D:!0,ease:Back.easeInOut}).staggerTo(o,.6,{bezier:{type:"soft",values:[{yPercent:"-50%"},{yPercent:"3%"},{yPercent:"0%"}]},autoAlpha:1,scale:1,force3D:!0},.1,"-=1")},l=function(){!i.isAnimating&&i.hidden&&(a.timeScale(1),a.play(),console.log("I'm showing"))},h=function(){i.Animating||i.hidden||(a.timeScale(2),a.reverse(),console.log("I'm hiding"))},m=function(){!i.Animating&&i.hidden?l():i.Animating||i.hidden||h()};return s(),{show:l,hide:h,toggle:m}}({menuElem:$(".jsMenuElem"),menuItems:$(".jsMenuElem").find("li")});e.menuBtn=$(".menu"),e.menuBtn.on("click",function(){var e=$(this);e.toggleClass("open"),n.toggle()})});