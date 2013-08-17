window.Modernizr=function(t,e,n){function i(t){h.cssText=t}function s(t,e){return typeof t===e}var o,r,a,l="2.6.2",c={},u=!0,d=e.documentElement,f="modernizr",p=e.createElement(f),h=p.style,g={}.toString,m=" -webkit- -moz- -o- -ms- ".split(" "),v={svg:"http://www.w3.org/2000/svg"},y={},b=[],x=b.slice,_=function(t,n,i,s){var o,r,a,l,c=e.createElement("div"),u=e.body,p=u||e.createElement("body");if(parseInt(i,10))for(;i--;)a=e.createElement("div"),a.id=s?s[i]:f+(i+1),c.appendChild(a);return o=["&#173;",'<style id="s',f,'">',t,"</style>"].join(""),c.id=f,(u?c:p).innerHTML+=o,p.appendChild(c),u||(p.style.background="",p.style.overflow="hidden",l=d.style.overflow,d.style.overflow="hidden",d.appendChild(p)),r=n(c,t),u?c.parentNode.removeChild(c):(p.parentNode.removeChild(p),d.style.overflow=l),!!r},w=function(e){var n=t.matchMedia||t.msMatchMedia;if(n)return n(e).matches;var i;return _("@media "+e+" { #"+f+" { position: absolute; } }",function(e){i="absolute"==(t.getComputedStyle?getComputedStyle(e,null):e.currentStyle).position}),i},C={}.hasOwnProperty;a=s(C,"undefined")||s(C.call,"undefined")?function(t,e){return e in t&&s(t.constructor.prototype[e],"undefined")}:function(t,e){return C.call(t,e)},Function.prototype.bind||(Function.prototype.bind=function(t){var e=this;if("function"!=typeof e)throw new TypeError;var n=x.call(arguments,1),i=function(){if(this instanceof i){var s=function(){};s.prototype=e.prototype;var o=new s,r=e.apply(o,n.concat(x.call(arguments)));return Object(r)===r?r:o}return e.apply(t,n.concat(x.call(arguments)))};return i}),y.touch=function(){var n;return"ontouchstart"in t||t.DocumentTouch&&e instanceof DocumentTouch?n=!0:_(["@media (",m.join("touch-enabled),("),f,")","{#modernizr{top:9px;position:absolute}}"].join(""),function(t){n=9===t.offsetTop}),n},y.svg=function(){return!!e.createElementNS&&!!e.createElementNS(v.svg,"svg").createSVGRect},y.inlinesvg=function(){var t=e.createElement("div");return t.innerHTML="<svg/>",(t.firstChild&&t.firstChild.namespaceURI)==v.svg},y.svgclippaths=function(){return!!e.createElementNS&&/SVGClipPath/.test(g.call(e.createElementNS(v.svg,"clipPath")))};for(var k in y)a(y,k)&&(r=k.toLowerCase(),c[r]=y[k](),b.push((c[r]?"":"no-")+r));return c.addTest=function(t,e){if("object"==typeof t)for(var i in t)a(t,i)&&c.addTest(i,t[i]);else{if(t=t.toLowerCase(),c[t]!==n)return c;e="function"==typeof e?e():e,"undefined"!=typeof u&&u&&(d.className+=" "+(e?"":"no-")+t),c[t]=e}return c},i(""),p=o=null,function(t,e){function n(t,e){var n=t.createElement("p"),i=t.getElementsByTagName("head")[0]||t.documentElement;return n.innerHTML="x<style>"+e+"</style>",i.insertBefore(n.lastChild,i.firstChild)}function i(){var t=v.elements;return"string"==typeof t?t.split(" "):t}function s(t){var e=m[t[h]];return e||(e={},g++,t[h]=g,m[g]=e),e}function o(t,n,i){if(n||(n=e),u)return n.createElement(t);i||(i=s(n));var o;return o=i.cache[t]?i.cache[t].cloneNode():p.test(t)?(i.cache[t]=i.createElem(t)).cloneNode():i.createElem(t),o.canHaveChildren&&!f.test(t)?i.frag.appendChild(o):o}function r(t,n){if(t||(t=e),u)return t.createDocumentFragment();n=n||s(t);for(var o=n.frag.cloneNode(),r=0,a=i(),l=a.length;l>r;r++)o.createElement(a[r]);return o}function a(t,e){e.cache||(e.cache={},e.createElem=t.createElement,e.createFrag=t.createDocumentFragment,e.frag=e.createFrag()),t.createElement=function(n){return v.shivMethods?o(n,t,e):e.createElem(n)},t.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+i().join().replace(/\w+/g,function(t){return e.createElem(t),e.frag.createElement(t),'c("'+t+'")'})+");return n}")(v,e.frag)}function l(t){t||(t=e);var i=s(t);return v.shivCSS&&!c&&!i.hasCSS&&(i.hasCSS=!!n(t,"article,aside,figcaption,figure,footer,header,hgroup,nav,section{display:block}mark{background:#FF0;color:#000}")),u||a(t,i),t}var c,u,d=t.html5||{},f=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,p=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,h="_html5shiv",g=0,m={};!function(){try{var t=e.createElement("a");t.innerHTML="<xyz></xyz>",c="hidden"in t,u=1==t.childNodes.length||function(){e.createElement("a");var t=e.createDocumentFragment();return"undefined"==typeof t.cloneNode||"undefined"==typeof t.createDocumentFragment||"undefined"==typeof t.createElement}()}catch(n){c=!0,u=!0}}();var v={elements:d.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video",shivCSS:d.shivCSS!==!1,supportsUnknownElements:u,shivMethods:d.shivMethods!==!1,type:"default",shivDocument:l,createElement:o,createDocumentFragment:r};t.html5=v,l(e)}(this,e),c._version=l,c._prefixes=m,c.mq=w,c.testStyles=_,d.className=d.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(u?" js "+b.join(" "):""),c}(this,this.document),function(t,e,n){function i(t){return"[object Function]"==m.call(t)}function s(t){return"string"==typeof t}function o(){}function r(t){return!t||"loaded"==t||"complete"==t||"uninitialized"==t}function a(){var t=v.shift();y=1,t?t.t?h(function(){("c"==t.t?f.injectCss:f.injectJs)(t.s,0,t.a,t.x,t.e,1)},0):(t(),a()):y=0}function l(t,n,i,s,o,l,c){function u(e){if(!p&&r(d.readyState)&&(b.r=p=1,!y&&a(),d.onload=d.onreadystatechange=null,e)){"img"!=t&&h(function(){_.removeChild(d)},50);for(var i in S[n])S[n].hasOwnProperty(i)&&S[n][i].onload()}}var c=c||f.errorTimeout,d=e.createElement(t),p=0,m=0,b={t:i,s:n,e:o,a:l,x:c};1===S[n]&&(m=1,S[n]=[]),"object"==t?d.data=n:(d.src=n,d.type=t),d.width=d.height="0",d.onerror=d.onload=d.onreadystatechange=function(){u.call(this,m)},v.splice(s,0,b),"img"!=t&&(m||2===S[n]?(_.insertBefore(d,x?null:g),h(u,c)):S[n].push(d))}function c(t,e,n,i,o){return y=0,e=e||"j",s(t)?l("c"==e?C:w,t,e,this.i++,n,i,o):(v.splice(this.i++,0,t),1==v.length&&a()),this}function u(){var t=f;return t.loader={load:c,i:0},t}var d,f,p=e.documentElement,h=t.setTimeout,g=e.getElementsByTagName("script")[0],m={}.toString,v=[],y=0,b="MozAppearance"in p.style,x=b&&!!e.createRange().compareNode,_=x?p:g.parentNode,p=t.opera&&"[object Opera]"==m.call(t.opera),p=!!e.attachEvent&&!p,w=b?"object":p?"script":"img",C=p?"script":w,k=Array.isArray||function(t){return"[object Array]"==m.call(t)},T=[],S={},j={timeout:function(t,e){return e.length&&(t.timeout=e[0]),t}};f=function(t){function e(t){var e,n,i,t=t.split("!"),s=T.length,o=t.pop(),r=t.length,o={url:o,origUrl:o,prefixes:t};for(n=0;r>n;n++)i=t[n].split("="),(e=j[i.shift()])&&(o=e(o,i));for(n=0;s>n;n++)o=T[n](o);return o}function r(t,s,o,r,a){var l=e(t),c=l.autoCallback;l.url.split(".").pop().split("?").shift(),l.bypass||(s&&(s=i(s)?s:s[t]||s[r]||s[t.split("/").pop().split("?")[0]]),l.instead?l.instead(t,s,o,r,a):(S[l.url]?l.noexec=!0:S[l.url]=1,o.load(l.url,l.forceCSS||!l.forceJS&&"css"==l.url.split(".").pop().split("?").shift()?"c":n,l.noexec,l.attrs,l.timeout),(i(s)||i(c))&&o.load(function(){u(),s&&s(l.origUrl,a,r),c&&c(l.origUrl,a,r),S[l.url]=2})))}function a(t,e){function n(t,n){if(t){if(s(t))n||(d=function(){var t=[].slice.call(arguments);f.apply(this,t),p()}),r(t,d,e,0,c);else if(Object(t)===t)for(l in a=function(){var e,n=0;for(e in t)t.hasOwnProperty(e)&&n++;return n}(),t)t.hasOwnProperty(l)&&(!n&&!--a&&(i(d)?d=function(){var t=[].slice.call(arguments);f.apply(this,t),p()}:d[l]=function(t){return function(){var e=[].slice.call(arguments);t&&t.apply(this,e),p()}}(f[l])),r(t[l],d,e,l,c))}else!n&&p()}var a,l,c=!!t.test,u=t.load||t.both,d=t.callback||o,f=d,p=t.complete||o;n(c?t.yep:t.nope,!!u),u&&n(u)}var l,c,d=this.yepnope.loader;if(s(t))r(t,0,d,0);else if(k(t))for(l=0;l<t.length;l++)c=t[l],s(c)?r(c,0,d,0):k(c)?f(c):Object(c)===c&&a(c,d);else Object(t)===t&&a(t,d)},f.addPrefix=function(t,e){j[t]=e},f.addFilter=function(t){T.push(t)},f.errorTimeout=1e4,null==e.readyState&&e.addEventListener&&(e.readyState="loading",e.addEventListener("DOMContentLoaded",d=function(){e.removeEventListener("DOMContentLoaded",d,0),e.readyState="complete"},0)),t.yepnope=u(),t.yepnope.executeStack=a,t.yepnope.injectJs=function(t,n,i,s,l,c){var u,d,p=e.createElement("script"),s=s||f.errorTimeout;p.src=t;for(d in i)p.setAttribute(d,i[d]);n=c?a:n||o,p.onreadystatechange=p.onload=function(){!u&&r(p.readyState)&&(u=1,n(),p.onload=p.onreadystatechange=null)},h(function(){u||(u=1,n(1))},s),l?p.onload():g.parentNode.insertBefore(p,g)},t.yepnope.injectCss=function(t,n,i,s,r,l){var c,s=e.createElement("link"),n=l?a:n||o;s.href=t,s.rel="stylesheet",s.type="text/css";for(c in i)s.setAttribute(c,i[c]);r||(g.parentNode.insertBefore(s,g),h(n,0))}}(this,document),Modernizr.load=function(){yepnope.apply(window,[].slice.call(arguments,0))},Modernizr.addTest("ie8compat",function(){return!window.addEventListener&&document.documentMode&&7===document.documentMode});