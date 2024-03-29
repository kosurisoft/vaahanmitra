/*
 *	jQuery Touch Optimized Sliders "R"Us 2.5.0
 *	
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 *
 *	Plugin website:
 *	tosrus.frebsite.nl
 *
 *	Licensed under the MIT license.
 *	http://en.wikipedia.org/wiki/MIT_License
 */
!function(t){function i(){o=function(t){return s+"-"+t},a=function(t){return s+"-"+t},r=function(t){return t+"."+s},t.each([o,a,r],function(t,i){i.add=function(t){t=t.split(" ");for(var e in t)i[t[e]]=i(t[e])}}),o.add("touch desktop scale-1 scale-2 scale-3 wrapper opened opening fixed inline hover slider slide loading noanimation fastanimation"),a.add("slide anchor"),r.add("open opening close closing prev next slideTo sliding click pinch scroll resize orientationchange load loading loaded transitionend webkitTransitionEnd"),d={complObject:function(i,e){return t.isPlainObject(i)||(i=e),i},complBoolean:function(t,i){return"boolean"!=typeof t&&(t=i),t},complNumber:function(i,e){return t.isNumeric(i)||(i=e),i},complString:function(t,i){return"string"!=typeof t&&(t=i),t},isPercentage:function(t){return"string"==typeof t&&"%"==t.slice(-1)},getPercentage:function(t){return parseInt(t.slice(0,-1))},resizeRatio:function(t,i,e,s,n){if(i.is(":visible")){var o=i.width(),a=i.height();e&&o>e&&(o=e),s&&a>s&&(a=s),n>o/a?a=o/n:o=a*n,t.width(o).height(a)}},transitionend:function(t,i,e){var s=!1,n=function(){s||i.call(t[0]),s=!0};t.one(r.transitionend,n),t.one(r.webkitTransitionEnd,n),setTimeout(n,1.1*e)},setViewportScale:function(){if(l.viewportScale){var t=l.viewportScale.getScale();"undefined"!=typeof t&&(t=1/t,l.$body.removeClass(o["scale-1"]).removeClass(o["scale-2"]).removeClass(o["scale-3"]).addClass(o["scale-"+Math.max(Math.min(Math.round(t),3),1)]))}}},l={$wndw:t(window),$html:t("html"),$body:t("body"),scrollPosition:0,viewportScale:null,viewportScaleInterval:null},l.$body.addClass(t[e].support.touch?o.touch:o.desktop),l.$wndw.on(r.scroll,function(t){l.$body.hasClass(o.opened)&&(window.scrollTo(0,l.scrollPosition),t.preventDefault(),t.stopPropagation(),t.stopImmediatePropagation())}),!l.viewportScale&&t[e].support.touch&&"undefined"!=typeof FlameViewportScale&&(l.viewportScale=new FlameViewportScale,d.setViewportScale(),l.$wndw.on(r.orientationchange+" "+r.resize,function(t){l.viewportScaleInterval&&(clearTimeout(l.viewportScaleInterval),l.viewportScaleInterval=null),l.viewportScaleInterval=setTimeout(function(){d.setViewportScale()},500)})),t[e]._c=o,t[e]._d=a,t[e]._e=r,t[e]._f=d,t[e]._g=l}var e="tosrus",s="tos",n="2.5.0";if(!t[e]){var o={},a={},r={},d={},l={};t[e]=function(t,i,e){return this.$node=t,this.opts=i,this.conf=e,this.vars={},this.nodes={},this.slides={},this._init(),this},t[e].prototype={_init:function(){var i=this;this._complementOptions(),this.vars.fixed="window"==this.opts.wrapper.target,this.nodes.$wrpr=t('<div class="'+o.wrapper+'" />'),this.nodes.$sldr=t('<div class="'+o.slider+'" />').appendTo(this.nodes.$wrpr),this.nodes.$wrpr.addClass(this.vars.fixed?o.fixed:o.inline).addClass(o("fx-"+this.opts.effect)).addClass(o(this.opts.slides.scale)).addClass(this.opts.wrapper.classes),this.nodes.$wrpr.on(r.open+" "+r.close+" "+r.prev+" "+r.next+" "+r.slideTo,function(t){arguments=Array.prototype.slice.call(arguments);var t=arguments.shift(),e=t.type;t.stopPropagation(),"function"==typeof i[e]&&i[e].apply(i,arguments)}).on(r.opening+" "+r.closing+" "+r.sliding+" "+r.loading+" "+r.loaded,function(t){t.stopPropagation()}).on(r.click,function(e){switch(e.stopPropagation(),i.opts.wrapper.onClick){case"toggleUI":i.nodes.$wrpr.toggleClass(o.hover);break;case"close":t(e.target).is("img")||i.close()}}),this.nodes.$anchors=this._initAnchors(),this.nodes.$slides=this._initSlides(),this.slides.total=this.nodes.$slides.length,this.slides.visible=this.opts.slides.visible,this.slides.index=0,this.vars.opened=!0;for(var s=0;s<t[e].addons.length;s++)t.isFunction(this["_addon_"+t[e].addons[s]])&&this["_addon_"+t[e].addons[s]]();for(var n=0;n<t[e].ui.length;n++)this.nodes.$wrpr.find("."+o[t[e].ui[n]]).length&&this.nodes.$wrpr.addClass(o("has-"+t[e].ui[n]));"close"==this.opts.wrapper.onClick&&(this.nodes.$uibg||t().add(this.nodes.$capt||t()).add(this.nodes.$pagr||t()).on(r.click,function(t){t.stopPropagation()})),this.vars.fixed?(this.nodes.$wrpr.appendTo(l.$body),this.close(!0)):(this.nodes.$wrpr.appendTo(this.opts.wrapper.target),this.opts.show?(this.vars.opened=!1,this.open(0,!0)):this.close(!0))},open:function(i,e){var s=this;this.vars.opened||(this.vars.fixed&&(l.scrollPosition=l.$wndw.scrollTop(),l.$body.addClass(o.opened),d.setViewportScale()),e?this.nodes.$wrpr.addClass(o.opening).trigger(r.opening,[i,e]):setTimeout(function(){s.nodes.$wrpr.addClass(o.opening).trigger(r.opening,[i,e])},5),this.nodes.$wrpr.addClass(o.hover).addClass(o.opened)),this.vars.opened=!0,this._loadContents(),t.isNumeric(i)&&(e=e||!this.vars.opened,this.slideTo(i,e))},close:function(i){this.vars.opened&&(this.vars.fixed&&l.$body.removeClass(o.opened),i?this.nodes.$wrpr.removeClass(o.opened):d.transitionend(this.nodes.$wrpr,function(){t(this).removeClass(o.opened)},this.conf.transitionDuration),this.nodes.$wrpr.removeClass(o.hover).removeClass(o.opening).trigger(r.closing,[this.slides.index,i])),this.vars.opened=!1},prev:function(i,e){t.isNumeric(i)||(i=this.opts.slides.slide),this.slideTo(this.slides.index-i,e)},next:function(i,e){t.isNumeric(i)||(i=this.opts.slides.slide),this.slideTo(this.slides.index+i,e)},slideTo:function(i,s){if(!this.vars.opened)return!1;if(!t.isNumeric(i))return!1;var n=!0;if(0>i){var a=0==this.slides.index;this.opts.infinite?i=a?this.slides.total-this.slides.visible:0:(i=0,a&&(n=!1))}if(i+this.slides.visible>this.slides.total){var l=this.slides.index+this.slides.visible>=this.slides.total;this.opts.infinite?i=l?0:this.slides.total-this.slides.visible:(i=this.slides.total-this.slides.visible,l&&(n=!1))}if(this.slides.index=i,this._loadContents(),n){var p=0-this.slides.index*this.opts.slides.width+this.opts.slides.offset;this.slides.widthPercentage&&(p+="%"),s&&(this.nodes.$sldr.addClass(o.noanimation),d.transitionend(this.nodes.$sldr,function(){t(this).removeClass(o.noanimation)},5));for(var c in t[e].effects)if(c==this.opts.effect){t[e].effects[c].call(this,p,s);break}this.nodes.$wrpr.trigger(r.sliding,[i,s])}},_initAnchors:function(){var i=this,s=t();if(this.$node.is("a"))for(var n in t[e].media)s=s.add(this.$node.filter(function(){if(i.opts.media[n]&&i.opts.media[n].filterAnchors){var s=i.opts.media[n].filterAnchors.call(i,t(this));if("boolean"==typeof s)return s}return t[e].media[n].filterAnchors.call(i,t(this))}));return s},_initSlides:function(){return this[this.$node.is("a")?"_initSlidesFromAnchors":"_initSlidesFromContent"](),this.nodes.$sldr.children().css("width",this.opts.slides.width+(this.slides.widthPercentage?"%":"px"))},_initSlidesFromAnchors:function(){var i=this;this.nodes.$anchors.each(function(e){var s=t(this),n=t('<div class="'+o.slide+" "+o.loading+'" />').data(a.anchor,s).appendTo(i.nodes.$sldr);s.data(a.slide,n).on(r.click,function(t){t.preventDefault(),i.open(e)})})},_initSlidesFromContent:function(){var i=this;this.$node.children().each(function(){var s=t(this);t('<div class="'+o.slide+'" />').append(s).appendTo(i.nodes.$sldr);for(var n in t[e].media){var a=null;if(i.opts.media[n]&&i.opts.media[n].filterSlides&&(a=i.opts.media[n].filterSlides.call(i,s)),"boolean"!=typeof a&&(a=t[e].media[n].filterSlides.call(i,s)),a){t[e].media[n].initSlides.call(i,s),s.parent().addClass(o(n));break}}})},_loadContents:function(){var t=this;switch(this.opts.slides.load){case"all":this._loadContent(0,this.slides.total);break;case"visible":this._loadContent(this.slides.index,this.slides.index+this.slides.visible);break;case"near-visible":default:this._loadContent(this.slides.index,this.slides.index+this.slides.visible),setTimeout(function(){t._loadContent(t.slides.index-t.slides.visible,t.slides.index),t._loadContent(t.slides.index+t.slides.visible,t.slides.index+2*t.slides.visible)},this.conf.transitionDuration)}},_loadContent:function(i,s){var n=this;this.nodes.$slides.slice(i,s).each(function(){var i=t(this);if(0==i.children().length){var s=i.data(a.anchor),d=s.attr("href");for(var l in t[e].media){var p=null;if(n.opts.media[l]&&n.opts.media[l].filterAnchors&&(p=n.opts.media[l].filterAnchors.call(n,s)),"boolean"!=typeof p&&(p=t[e].media[l].filterAnchors.call(n,s)),p){t[e].media[l].initAnchors.call(n,i,d),i.addClass(o(l));break}}i.trigger(r.loading,[i.data(a.anchor)])}})},_complementOptions:function(){if("undefined"==typeof this.opts.wrapper.target&&(this.opts.wrapper.target=this.$node.is("a")?"window":this.$node),"window"!=this.opts.wrapper.target&&"string"==typeof this.opts.wrapper.target&&(this.opts.wrapper.target=t(this.opts.wrapper.target)),this.opts.show=d.complBoolean(this.opts.show,"window"!=this.opts.wrapper.target),t.isNumeric(this.opts.slides.width))this.slides.widthPercentage=!1,this.opts.slides.visible=d.complNumber(this.opts.slides.visible,1);else{var i=d.isPercentage(this.opts.slides.width)?d.getPercentage(this.opts.slides.width):!1;this.slides.widthPercentage=!0,this.opts.slides.visible=d.complNumber(this.opts.slides.visible,i?Math.floor(100/i):1),this.opts.slides.width=i?i:Math.ceil(1e4/this.opts.slides.visible)/100}this.opts.slides.slide=d.complNumber(this.opts.slides.slide,this.opts.slides.visible),this.opts.slides.offset=d.isPercentage(this.opts.slides.offset)?d.getPercentage(this.opts.slides.offset):d.complNumber(this.opts.slides.offset,0)},_uniqueID:function(){return this.__uniqueID||(this.__uniqueID=0),this.__uniqueID++,o("uid-"+this.__uniqueID)}},t.fn[e]=function(s,n,o,a){l.$wndw||i(),s=t.extend(!0,{},t[e].defaults,s),s=t.extend(!0,{},s,t[e].support.touch?o:n),a=t.extend(!0,{},t[e].configuration,a);var r=new t[e](this,s,a);return this.data(e,r),r.nodes.$wrpr},t[e].support={touch:"ontouchstart"in window.document||navigator.msMaxTouchPoints},t[e].defaults={infinite:!1,effect:"slide",wrapper:{classes:"",onClick:"toggleUI"},slides:{offset:0,scale:"fit",load:"near-visible",visible:1},media:{}},t[e].configuration={transitionDuration:400},t[e].constants={},t[e].debug=function(t){},t[e].deprecated=function(t,i){"undefined"!=typeof console&&"undefined"!=typeof console.warn&&console.warn(e+": "+t+" is deprecated, use "+i+" instead.")},t[e].effects={slide:function(t){this.nodes.$sldr.css("left",t)},fade:function(i){d.transitionend(this.nodes.$sldr,function(){t(this).css("left",i).css("opacity",1)},this.conf.transitionDuration),this.nodes.$sldr.css("opacity",0)}},t[e].version=n,t[e].media={},t[e].addons=[],t[e].ui=[]}}(jQuery),/*	
 *	jQuery Touch Optimized Sliders "R"Us
 *	Autoplay addon
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){var i,e,s,n,o,a="tosrus",r="autoplay",d=!1;t[a].prototype["_addon_"+r]=function(){d||(i=t[a]._c,e=t[a]._d,s=t[a]._e,n=t[a]._f,o=t[a]._g,s.add("mouseover mouseout"),d=!0);var l=this,p=this.opts[r];p.play&&(this.opts.infinite=!0,this.nodes.$wrpr.on(s.sliding,function(t){l.autoplay()}),p.pauseOnHover&&this.nodes.$wrpr.on(s.mouseover,function(t){l.autostop()}).on(s.mouseout,function(t){l.autoplay()}),this.autoplay())},t[a].prototype.autoplay=function(){var t=this;this.autostop(),this.vars.autoplay=setTimeout(function(){t.next()},this.opts[r].timeout)},t[a].prototype.autostop=function(){this.vars.autoplay&&clearTimeout(this.vars.autoplay)},t[a].defaults[r]={play:!1,timeout:4e3,pauseOnHover:!1},t[a].addons.push(r)}(jQuery),/*	
 *	jQuery Touch Optimized Sliders "R"Us
 *	Buttons addon
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){function i(i,e){return t('<a class="'+s[i]+e+'" href="#"><span></span></a>')}function e(t,i,e,s){i.on(o.click,function(i){i.preventDefault(),i.stopPropagation(),t.trigger(o[e],[s])})}var s,n,o,a,r,d="tosrus",l="buttons",p=!1;t[d].prototype["_addon_"+l]=function(){p||(s=t[d]._c,n=t[d]._d,o=t[d]._e,a=t[d]._f,r=t[d]._g,s.add("prev next close disabled"),p=!0);var c=this,h=this.opts[l];this.nodes.$prev=null,this.nodes.$next=null,this.nodes.$clse=null,("boolean"==typeof h||"string"==typeof h&&"inline"==h)&&(h={prev:h,next:h}),"undefined"==typeof h.close&&(h.close=this.vars.fixed),this.nodes.$slides.length<2&&(h.prev=!1,h.next=!1),t.each({prev:"prev",next:"next",close:"clse"},function(n,a){h[n]&&("string"==typeof h[n]&&"inline"==h[n]?c.vars.fixed&&"close"!=n&&c.nodes.$slides.on(o.loading,function(o,a){var r=i(n," "+s.inline)["prev"==n?"prependTo":"appendTo"](this);e(c.nodes.$wrpr,r,n,1),c.opts.infinite||("prev"==n&&t(this).is(":first-child")||"next"==n&&t(this).is(":last-child"))&&r.addClass(s.disabled)}):("string"==typeof h[n]&&(h[n]=t(h[n])),c.nodes["$"+a]=h[n]instanceof t?h[n]:i(n,"").appendTo(c.nodes.$wrpr),e(c.nodes.$wrpr,c.nodes["$"+a],n,null)))}),this.opts.infinite||(this.updateButtons(),this.nodes.$wrpr.on(o.sliding,function(t,i,e){c.updateButtons()}))},t[d].prototype.updateButtons=function(){this.nodes.$prev&&this.nodes.$prev[(this.slides.index<1?"add":"remove")+"Class"](s.disabled),this.nodes.$next&&this.nodes.$next[(this.slides.index>=this.slides.total-this.slides.visible?"add":"remove")+"Class"](s.disabled)},t[d].defaults[l]={prev:!t[d].support.touch,next:!t[d].support.touch},t[d].addons.push(l),t[d].ui.push("prev"),t[d].ui.push("next"),t[d].ui.push("close")}(jQuery),/*	
 *	jQuery Touch Optimized Sliders "R"Us
 *	Caption addon
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){var i,e,s,n,o,a="tosrus",r="caption",d=!1;t[a].prototype["_addon_"+r]=function(){d||(i=t[a]._c,e=t[a]._d,s=t[a]._e,n=t[a]._f,o=t[a]._g,i.add("caption uibg"),e.add("caption"),d=!0);var l=this,p=this.opts[r];if(p.add){p.attributes=p.attributes||[],"string"==typeof p.target&&(p.target=t(p.target)),p.target instanceof t?this.nodes.$capt=p.target:(this.nodes.$capt=t('<div class="'+i.caption+'" />').appendTo(this.nodes.$wrpr),this.nodes.$uibg||(this.nodes.$uibg=t('<div class="'+i.uibg+'" />').prependTo(this.nodes.$wrpr)));for(var c=0,h=this.slides.visible;h>c;c++)t('<div class="'+i.caption+"-"+c+'" />').css("width",this.opts.slides.width+(this.slides.widthPercentage?"%":"px")).appendTo(this.nodes.$capt);this.nodes.$slides.each(function(i){var s=t(this),n=l.vars.fixed?s.data(e.anchor):s.children();s.data(e.caption,"");for(var o=0,a=p.attributes.length;a>o;o++){var r=n.attr(p.attributes[o]);if(r&&r.length){s.data(e.caption,r);break}}}),this.nodes.$wrpr.on(s.sliding,function(t,i,s){for(var n=0,o=l.slides.visible;o>n;n++)l.nodes.$capt.children().eq(n).html(l.nodes.$sldr.children().eq(l.slides.index+n).data(e.caption)||"")})}},t[a].defaults[r]={add:!1,target:null,attributes:["title","alt","rel"]},t[a].addons.push(r),t[a].ui.push("caption")}(jQuery),/*	
 *	jQuery Touch Optimized Sliders "R"Us
 *	Drag addon
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){if("function"==typeof Hammer){var i,e,s,n,o,a="tosrus",r="drag",d=!1;t[a].prototype["_addon_"+r]=function(){d||(i=t[a]._c,e=t[a]._d,s=t[a]._e,n=t[a]._f,o=t[a]._g,d=!0);var l=this;if(this.opts[r]&&"slide"==this.opts.effect){if(Hammer.VERSION<2)return void t[a].deprecated("Older version of the Hammer library","version 2 or newer");if(this.nodes.$slides.length>1){var p=0,c=!1,h=!1,u=new Hammer(this.nodes.$wrpr[0]);u.on("panstart panleft panright panend swipeleft swiperight",function(t){t.preventDefault()}).on("panstart",function(t){l.nodes.$sldr.addClass(i.noanimation)}).on("panleft panright",function(t){switch(p=t.deltaX,h=!1,t.direction){case 2:c="left";break;case 4:c="right";break;default:c=!1}("left"==c&&l.slides.index+l.slides.visible>=l.slides.total||"right"==c&&0==l.slides.index)&&(p/=2.5),l.nodes.$sldr.css("margin-left",Math.round(p))}).on("swipeleft swiperight",function(t){h=!0}).on("panend",function(t){if(l.nodes.$sldr.removeClass(i.noanimation).addClass(i.fastanimation),n.transitionend(l.nodes.$sldr,function(){l.nodes.$sldr.removeClass(i.fastanimation)},l.conf.transitionDuration/2),l.nodes.$sldr.css("margin-left",0),"left"==c||"right"==c){if(h)var e=l.slides.visible;else var o=l.nodes.$slides.first().width(),e=Math.floor((Math.abs(p)+o/2)/o);e>0&&l.nodes.$wrpr.trigger(s["left"==c?"next":"prev"],[e])}c=!1})}}},t[a].defaults[r]=t[a].support.touch,t[a].addons.push(r)}}(jQuery),/*	
 *	jQuery Touch Optimized Sliders "R"Us
 *	Keys addon
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){var i,e,s,n,o,a="tosrus",r="keys",d=!1;t[a].prototype["_addon_"+r]=function(){d||(i=t[a]._c,e=t[a]._d,s=t[a]._e,n=t[a]._f,o=t[a]._g,s.add("keyup"),d=!0);var l=this,p=this.opts[r];if("boolean"==typeof p&&p&&(p={prev:!0,next:!0,close:!0}),t.isPlainObject(p)){for(var c in t[a].constants[r])"boolean"==typeof p[c]&&p[c]&&(p[c]=t[a].constants[r][c]);this.nodes.$slides.length<2&&(p.prev=!1,p.next=!1),t(document).on(s.keyup,function(t){if(l.vars.opened){var i=!1;switch(t.keyCode){case p.prev:i=s.prev;break;case p.next:i=s.next;break;case p.close:i=s.close}i&&(t.preventDefault(),t.stopPropagation(),l.nodes.$wrpr.trigger(i))}})}},t[a].defaults[r]=!1,t[a].constants[r]={prev:37,next:39,close:27},t[a].addons.push(r)}(jQuery),/*	
 *	jQuery Touch Optimized Sliders "R"Us
 *	Pagination addon
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){var i,e,s,n,o,a="tosrus",r="pagination",d=!1;t[a].prototype["_addon_"+r]=function(){d||(i=t[a]._c,e=t[a]._d,s=t[a]._e,n=t[a]._f,o=t[a]._g,i.add("pagination selected uibg bullets thumbnails"),d=!0);var l=this,p=this.opts[r];if(this.nodes.$slides.length<2&&(p.add=!1),p.add){if("string"==typeof p.target&&(p.target=t(p.target)),p.target instanceof t?this.nodes.$pagr=p.target:(this.nodes.$pagr=t('<div class="'+i.pagination+" "+i[p.type]+'" />').appendTo(this.nodes.$wrpr),this.nodes.$uibg||(this.nodes.$uibg=t('<div class="'+i.uibg+'" />').prependTo(this.nodes.$wrpr))),"function"!=typeof p.anchorBuilder)switch(p.type){case"thumbnails":var c='<a href="#" style="background-image: url(\'',h="');\"></a>";this.vars.fixed?p.anchorBuilder=function(i){return c+t(this).data(e.anchor).attr("href")+h}:p.anchorBuilder=function(i){return c+t(this).find("img").attr("src")+h};break;case"bullets":default:p.anchorBuilder=function(t){return'<a href="#"></a>'}}this.nodes.$slides.each(function(i){t(p.anchorBuilder.call(this,i+1)).appendTo(l.nodes.$pagr).on(s.click,function(t){t.preventDefault(),t.stopPropagation(),l.nodes.$wrpr.trigger(s.slideTo,[i])})}),this.updatePagination(),this.nodes.$wrpr.on(s.sliding,function(t,i,e){l.updatePagination()})}},t[a].prototype.updatePagination=function(){this.nodes.$pagr&&this.nodes.$pagr.children().removeClass(i.selected).eq(this.slides.index).addClass(i.selected)},t[a].defaults[r]={add:!1,type:"bullets",target:null,anchorBuilder:null},t[a].addons.push(r),t[a].ui.push("pagination"),t[a].ui.push("bullets"),t[a].ui.push("thumbnails")}(jQuery),/*	
 * jQuery Touch Optimized Sliders "R"Us
 * HTML media
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){var i="tosrus",e="html";t[i].media[e]={filterAnchors:function(i){var e=i.attr("href");return"#"==e.slice(0,1)&&t(e).is("div")},initAnchors:function(e,s){t('<div class="'+t[i]._c("html")+'" />').append(t(s)).appendTo(e),e.removeClass(t[i]._c.loading).trigger(t[i]._e.loaded)},filterSlides:function(t){return t.is("div")},initSlides:function(t){}},t[i].defaults.media[e]={}}(jQuery),/*	
 * jQuery Touch Optimized Sliders "R"Us
 * Images media
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){var i="tosrus",e="image";t[i].media[e]={filterAnchors:function(i){return t.inArray(i.attr("href").toLowerCase().split(".").pop().split("?")[0],["jpg","jpe","jpeg","gif","png"])>-1},initAnchors:function(e,s){t('<img border="0" />').on(t[i]._e.load,function(s){s.stopPropagation(),e.removeClass(t[i]._c.loading).trigger(t[i]._e.loaded)}).appendTo(e).attr("src",s)},filterSlides:function(t){return t.is("img")},initSlides:function(t){}},t[i].defaults.media[e]={}}(jQuery),/*	
 * jQuery Touch Optimized Sliders "R"Us
 * Vimeo media
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){function i(i){function p(){c.length&&(c.attr("src",""),c.attr("src",u))}l||(e=t[r]._c,s=t[r]._d,n=t[r]._e,o=t[r]._f,a=t[r]._g,s.add("ratio maxWidth maxHeight"),l=!0);var c=i.children(),h=i.data(t[r]._d.anchor)||t(),u=c.attr("src"),f=h.data(s.ratio)||this.opts[d].ratio,g=h.data(s.maxWidth)||this.opts[d].maxWidth,v=h.data(s.maxHeight)||this.opts[d].maxHeight;i.removeClass(e.loading).trigger(n.loaded).on(n.loading,function(t){o.resizeRatio(c,i,g,v,f)}),this.nodes.$wrpr.on(n.sliding,function(t){p()}).on(n.opening,function(t){o.resizeRatio(c,i,g,v,f)}).on(n.closing,function(t){p()}),a.$wndw.on(n.resize,function(t){o.resizeRatio(c,i,g,v,f)})}var e,s,n,o,a,r="tosrus",d="vimeo",l=!1;t[r].media[d]={filterAnchors:function(t){return t.attr("href").toLowerCase().indexOf("vimeo.com/")>-1},initAnchors:function(e,s){var n=this._uniqueID();s=s.split("vimeo.com/")[1].split("?")[0]+"?api=1&player_id="+n,t('<iframe id="'+n+'" src="http://player.vimeo.com/video/'+s+'" frameborder="0" allowfullscreen />').appendTo(e),i.call(this,e)},filterSlides:function(t){return t.is("iframe")&&t.attr("src")?t.attr("src").toLowerCase().indexOf("vimeo.com/video/")>-1:!1},initSlides:function(t){i.call(this,t)}},t[r].defaults.media[d]={},t[r].defaults[d]={ratio:16/9,maxWidth:!1,maxHeight:!1}}(jQuery),/*	
 * jQuery Touch Optimized Sliders "R"Us
 * Youtube media
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 */
function(t){function i(i){function p(t){c.length&&c[0].contentWindow.postMessage('{ "event": "command", "func": "'+t+'Video" }',"*")}l||(e=t[r]._c,s=t[r]._d,n=t[r]._e,o=t[r]._f,a=t[r]._g,s.add("ratio maxWidth maxHeight"),l=!0);var c=i.children(),h=i.data(t[r]._d.anchor)||t(),u=h.data(s.ratio)||this.opts[d].ratio,f=h.data(s.maxWidth)||this.opts[d].maxWidth,g=h.data(s.maxHeight)||this.opts[d].maxHeight;i.removeClass(e.loading).trigger(n.loaded).on(n.loading,function(t){o.resizeRatio(c,i,f,g,u)}),this.nodes.$wrpr.on(n.sliding,function(t){p("pause")}).on(n.opening,function(t){o.resizeRatio(c,i,f,g,u)}).on(n.closing,function(t){p("stop")}),a.$wndw.on(n.resize,function(t){o.resizeRatio(c,i,f,g,u)})}var e,s,n,o,a,r="tosrus",d="youtube",l=!1;t[r].media[d]={filterAnchors:function(t){return t.attr("href").toLowerCase().indexOf("youtube.com/watch?v=")>-1},initAnchors:function(e,s){var n=s;s=s.split("?v=")[1].split("&")[0],this.opts[d].imageLink?(s="http://img.youtube.com/vi/"+s+"/0.jpg",t('<a href="'+n+'" class="'+t[r]._c("play")+'" target="_blank" />').appendTo(e),t('<img border="0" />').on(t[r]._e.load,function(i){i.stopPropagation(),e.removeClass(t[r]._c.loading).trigger(t[r]._e.loaded)}).appendTo(e).attr("src",s)):(t('<iframe src="http://www.youtube.com/embed/'+s+'?enablejsapi=1" frameborder="0" allowfullscreen />').appendTo(e),i.call(this,e))},filterSlides:function(t){return t.is("iframe")&&t.attr("src")?t.attr("src").toLowerCase().indexOf("youtube.com/embed/")>-1:!1},initSlides:function(t){i.call(this,t)}},t[r].defaults.media[d]={},t[r].defaults[d]={ratio:16/9,maxWidth:!1,maxHeight:!1,imageLink:t[r].support.touch}}(jQuery);




/*slider*/
/*
$(window).load(function() {
    $("#flexiselDemo1").flexisel();

    $("#flexiselDemo2").flexisel({
        visibleItems: 4,
        itemsToScroll: 3,
        animationSpeed: 200,
        infinite: true,
        navigationTargetSelector: null,
        autoPlay: {
            enable: false,
            interval: 5000,
            pauseOnHover: true
        },
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1,
                itemsToScroll: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2,
                itemsToScroll: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3,
                itemsToScroll: 3
            }
        },
        loaded: function(object) {
            console.log('Slider loaded...');
        },
        before: function(object){
            console.log('Before transition...');
        },
        after: function(object) {
            console.log('After transition...');
        }
    });
    
    $("#flexiselDemo3").flexisel({
        visibleItems: 3,
        itemsToScroll: 1,         
        autoPlay: {
            enable: true,
            interval: 5000,
            pauseOnHover: true
        }        
    });
    
    $("#flexiselDemo4").flexisel({
        infinite: false     
    });    
    
});
*/



/*end slider*/