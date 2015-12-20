<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html manifest="cache.appcache">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>appName</title>

    
    <script type="text/javascript">
        var Ext = Ext || {}; // Ext namespace won't be defined yet...

        // This function is called by the Microloader after it has performed basic
        // device detection. The results are provided in the "tags" object. You can
        // use these tags here or even add custom tags. These can be used by platform
        // filters in your manifest or by platformConfig expressions in your app.
        //
        Ext.beforeLoad = function (tags) {
            var s = location.search,  // the query string (ex "?foo=1&bar")
                profile;

            // For testing look for "?classic" or "?modern" in the URL to override
            // device detection default.
            //
            if (s.match(/\bclassic\b/)) {
                profile = 'classic';
            }
            else if (s.match(/\bmodern\b/)) {
                profile = 'modern';
            }
            else {
                profile = tags.desktop ? 'classic' : 'modern';
                //profile = tags.phone ? 'modern' : 'classic';
            }

            Ext.manifest = profile; // this name must match a build profile name

            // This function is called once the manifest is available but before
            // any data is pulled from it.
            //
            //return function (manifest) {
                // peek at / modify the manifest object
            //};
        };
    </script>

    <spring:url value="/bootstrap.js" var="entry" />
    <!-- The line below must be kept intact for Sencha Cmd to build your application -->
    <script id="microloader" data-app="c2d4780b-53b5-4b86-8494-bf164ff40957" type="text/javascript">var Ext=Ext||{};Ext.manifest=Ext.manifest||"modern.json";Ext=Ext||{};
Ext.Boot=Ext.Boot||function(e){function l(a){if(a.$isRequest)return a;a=a.url?a:{url:a};var m=a.url;w(a,{urls:m.charAt?[m]:m,charset:a.charset||b.config.charset});w(this,a)}function t(a){if(a.$isEntry)return a;var m=a.charset||b.config.charset,d=Ext.manifest,d=d&&d.loader,h=void 0!==a.cache?a.cache:d&&d.cache,c;b.config.disableCaching&&(void 0===h&&(h=!b.config.disableCaching),!1===h?c=+new Date:!0!==h&&(c=h),c&&(d=d&&d.cacheParam||b.config.disableCachingParam,c=d+"\x3d"+c));w(a,{charset:m,buster:c,
requests:[]});w(this,a)}var n=document,r=[],u={disableCaching:/[?&](?:cache|disableCacheBuster)\b/i.test(location.search)||!/http[s]?\:/i.test(location.href)||/(^|[ ;])ext-cache=1/.test(n.cookie)?!1:!0,disableCachingParam:"_dc",loadDelay:!1,preserveScripts:!0,charset:"UTF-8"},z=/\.css(?:\?|$)/i,s=n.createElement("a"),v="undefined"!==typeof window,x={browser:v,node:!v&&"function"===typeof require,phantom:window&&(window._phantom||window.callPhantom)||/PhantomJS/.test(window.navigator.userAgent)},k=
Ext.platformTags={},w=function(a,b,d){d&&w(a,d);if(a&&b&&"object"===typeof b)for(var h in b)a[h]=b[h];return a},y=function(){var a=!1,b=Array.prototype.shift.call(arguments),d,h,c,f;"boolean"===typeof arguments[arguments.length-1]&&(a=Array.prototype.pop.call(arguments));c=arguments.length;for(d=0;d<c;d++)if(f=arguments[d],"object"===typeof f)for(h in f)b[a?h.toLowerCase():h]=f[h];return b},c="function"==typeof Object.keys?function(a){return!a?[]:Object.keys(a)}:function(a){var b=[],d;for(d in a)a.hasOwnProperty(d)&&
b.push(d);return b},b={loading:0,loaded:0,apply:w,env:x,config:u,assetConfig:{},scripts:{},currentFile:null,suspendedQueue:[],currentRequest:null,syncMode:!1,useElements:!0,listeners:[],Request:l,Entry:t,allowMultipleBrowsers:!1,browserNames:{ie:"IE",firefox:"Firefox",safari:"Safari",chrome:"Chrome",opera:"Opera",dolfin:"Dolfin",edge:"Edge",webosbrowser:"webOSBrowser",chromeMobile:"ChromeMobile",chromeiOS:"ChromeiOS",silk:"Silk",other:"Other"},osNames:{ios:"iOS",android:"Android",windowsPhone:"WindowsPhone",
webos:"webOS",blackberry:"BlackBerry",rimTablet:"RIMTablet",mac:"MacOS",win:"Windows",tizen:"Tizen",linux:"Linux",bada:"Bada",chromeOS:"ChromeOS",other:"Other"},browserPrefixes:{ie:"MSIE ",edge:"Edge/",firefox:"Firefox/",chrome:"Chrome/",safari:"Version/",opera:"OPR/",dolfin:"Dolfin/",webosbrowser:"wOSBrowser/",chromeMobile:"CrMo/",chromeiOS:"CriOS/",silk:"Silk/"},browserPriority:"edge opera dolfin webosbrowser silk chromeiOS chromeMobile ie firefox safari chrome".split(" "),osPrefixes:{tizen:"(Tizen )",
ios:"i(?:Pad|Phone|Pod)(?:.*)CPU(?: iPhone)? OS ",android:"(Android |HTC_|Silk/)",windowsPhone:"Windows Phone ",blackberry:"(?:BlackBerry|BB)(?:.*)Version/",rimTablet:"RIM Tablet OS ",webos:"(?:webOS|hpwOS)/",bada:"Bada/",chromeOS:"CrOS "},fallbackOSPrefixes:{windows:"win",mac:"mac",linux:"linux"},devicePrefixes:{iPhone:"iPhone",iPod:"iPod",iPad:"iPad"},maxIEVersion:12,detectPlatformTags:function(){var a=navigator.userAgent,m=/Mobile(\/|\s)/.test(a),d=document.createElement("div"),h={},g,f,j,q,e;
f=this.browserPriority.length;for(q=0;q<f;q++)g=this.browserPriority[q],e?j=0:(j=this.browserPrefixes[g],(j=(j=a.match(RegExp("("+j+")([\\w\\._]+)")))&&1<j.length?parseInt(j[2]):0)&&(e=!0)),h[g]=j;h.ie&&(q=document.documentMode,8<=q&&(h.ie=q));j=h.ie||!1;g=Math.max(j,this.maxIEVersion);for(q=8;q<=g;++q)f="ie"+q,h[f+"m"]=j?j<=q:0,h[f]=j?j===q:0,h[f+"p"]=j?j>=q:0;q={};var p,l,n;f=c(this.osPrefixes);e=f.length;for(n=j=0;j<e;j++)g=f[j],p=this.osPrefixes[g],(p=(l=(p=a.match(RegExp("("+p+")([^\\s;]+)")))?
p[1]:null)&&("HTC_"===l||"Silk/"===l)?2.3:p&&1<p.length?parseFloat(p[p.length-1]):0)&&n++,q[g]=p;f=c(this.fallbackOSPrefixes);e=f.length;for(j=0;j<e;j++)g=f[j],0===n?(p=this.fallbackOSPrefixes[g],p=a.toLowerCase().match(RegExp(p)),q[g]=p?!0:0):q[g]=0;g={};j=c(this.devicePrefixes);n=j.length;for(e=0;e<n;e++)f=j[e],p=this.devicePrefixes[f],p=a.match(RegExp(p)),g[f]=p?!0:0;f=b.loadPlatformsParam();y(k,h,q,g,f,!0);k.phone=!(!k.iphone&&!k.ipod&&!(!k.silk&&k.android&&(3>k.android||m)||k.blackberry&&m||
k.windowsphone));k.tablet=!(k.phone||!k.ipad&&!k.android&&!k.silk&&!(k.rimtablet||k.ie10&&/; Touch/.test(a)));m="ontouchend"in d;!m&&(d.setAttribute&&d.removeAttribute)&&(d.setAttribute("ontouchend",""),m="function"===typeof d.ontouchend,"undefined"!==typeof d.ontouchend&&(d.ontouchend=void 0),d.removeAttribute("ontouchend"));k.touch=m||navigator.maxTouchPoints||navigator.msMaxTouchPoints;k.desktop=!k.phone&&!k.tablet;k.cordova=k.phonegap=!(!window.PhoneGap&&!window.Cordova&&!window.cordova);k.webview=
/(iPhone|iPod|iPad).*AppleWebKit(?!.*Safari)(?!.*FBAN)/i.test(a);k.androidstock=4.3>=k.android&&(k.safari||k.silk);y(k,f,!0)},loadPlatformsParam:function(){var a=window.location.search.substr(1).split("\x26"),b={},d,h={},c,f,j;for(d=0;d<a.length;d++)c=a[d].split("\x3d"),b[c[0]]=c[1];if(b.platformTags){c=b.platformTags.split(",");a=c.length;for(d=0;d<a;d++){b=c[d].split(":");f=b[0];j=!0;if(1<b.length&&(j=b[1],"false"===j||"0"===j))j=!1;h[f]=j}}return h},filterPlatform:function(a,b){a=r.concat(a||r);
b=r.concat(b||r);var d=a.length,h=b.length,c=!d&&h,f;for(f=0;f<d&&!c;f++)c=a[f],c=!!k[c];for(f=0;f<h&&c;f++)c=b[f],c=!k[c];return c},init:function(){var a=n.getElementsByTagName("script"),m=a.length,d=/\/ext(\-[a-z\-]+)?\.js$/,c,g,f,j,e,k;for(k=0;k<m;k++)if(g=(c=a[k]).src)f=c.readyState||null,!j&&d.test(g)&&(b.hasReadyState="readyState"in c,b.hasAsync="async"in c||!b.hasReadyState,j=g),b.scripts[e=b.canonicalUrl(g)]||new t({key:e,url:g,done:null===f||"loaded"===f||"complete"===f,el:c,prop:"src"});
j||(c=a[a.length-1],j=c.src,b.hasReadyState="readyState"in c,b.hasAsync="async"in c||!b.hasReadyState);b.baseUrl=j.substring(0,j.lastIndexOf("/")+1);b.origin=window.location.origin||window.location.protocol+"//"+window.location.hostname+(window.location.port?":"+window.location.port:"");b.detectPlatformTags();Ext.filterPlatform=b.filterPlatform},canonicalUrl:function(a){s.href=a;a=s.href;var b=u.disableCachingParam,b=b?a.indexOf(b+"\x3d"):-1,d,c;if(0<b&&("?"===(d=a.charAt(b-1))||"\x26"===d)){c=a.indexOf("\x26",
b);if((c=0>c?"":a.substring(c))&&"?"===d)++b,c=c.substring(1);a=a.substring(0,b-1)+c}return a},getConfig:function(a){return a?b.config[a]:b.config},setConfig:function(a,m){if("string"===typeof a)b.config[a]=m;else for(var d in a)b.setConfig(d,a[d]);return b},getHead:function(){return b.docHead||(b.docHead=n.head||n.getElementsByTagName("head")[0])},create:function(a,m,d){d=d||{};d.url=a;d.key=m;return b.scripts[m]=new t(d)},getEntry:function(a,m){var d=b.canonicalUrl(a),c=b.scripts[d];c||(c=b.create(a,
d,m));return c},registerContent:function(a,m,d){return b.getEntry(a,{content:d,loaded:!0,css:"css"===m})},processRequest:function(a,b){a.loadEntries(b)},load:function(a){a=new l(a);if(a.sync||b.syncMode)return b.loadSync(a);b.currentRequest?(a.getEntries(),b.suspendedQueue.push(a)):(b.currentRequest=a,b.processRequest(a,!1));return b},loadSync:function(a){a=new l(a);b.syncMode++;b.processRequest(a,!0);b.syncMode--;return b},loadBasePrefix:function(a){a=new l(a);a.prependBaseUrl=!0;return b.load(a)},
loadSyncBasePrefix:function(a){a=new l(a);a.prependBaseUrl=!0;return b.loadSync(a)},requestComplete:function(a){if(b.currentRequest===a)for(b.currentRequest=null;0<b.suspendedQueue.length;)if(a=b.suspendedQueue.shift(),!a.done){b.load(a);break}!b.currentRequest&&0==b.suspendedQueue.length&&b.fireListeners()},isLoading:function(){return!b.currentRequest&&0==b.suspendedQueue.length},fireListeners:function(){for(var a;b.isLoading()&&(a=b.listeners.shift());)a()},onBootReady:function(a){b.isLoading()?
b.listeners.push(a):a()},getPathsFromIndexes:function(a,b){return l.prototype.getPathsFromIndexes(a,b)},createLoadOrderMap:function(a){return l.prototype.createLoadOrderMap(a)},fetch:function(a,b,d,c){c=void 0===c?!!b:c;var g=new XMLHttpRequest,f,j,e,k=!1,p=function(){g&&4==g.readyState&&(j=1223===g.status?204:0===g.status&&("file:"===(self.location||{}).protocol||"ionp:"===(self.location||{}).protocol)?200:g.status,e=g.responseText,f={content:e,status:j,exception:k},b&&b.call(d,f),g=null)};c&&(g.onreadystatechange=
p);try{g.open("GET",a,c),g.send(null)}catch(l){return k=l,p(),f}c||p();return f},notifyAll:function(a){a.notifyRequests()}};l.prototype={$isRequest:!0,createLoadOrderMap:function(a){var b=a.length,d={},c,g;for(c=0;c<b;c++)g=a[c],d[g.path]=g;return d},getLoadIndexes:function(a,m,d,c,g){var f=d[a],j,e,k,l,n;if(m[a])return m;m[a]=!0;for(a=!1;!a;){k=!1;for(l in m)if(m.hasOwnProperty(l)&&(f=d[l]))if(e=this.prepareUrl(f.path),e=b.getEntry(e),!g||!e||!e.done){e=f.requires;c&&f.uses&&(e=e.concat(f.uses));
f=e.length;for(j=0;j<f;j++)n=e[j],m[n]||(k=m[n]=!0)}k||(a=!0)}return m},getPathsFromIndexes:function(a,b){var d=[],c=[],g,f;for(g in a)a.hasOwnProperty(g)&&a[g]&&d.push(g);d.sort(function(a,b){return a-b});g=d.length;for(f=0;f<g;f++)c.push(b[d[f]].path);return c},expandUrl:function(a,b,d,c){"string"==typeof a&&(a=[a]);var g=this.loadOrder,f=this.loadOrderMap;if(g){this.loadOrderMap=f=f||this.createLoadOrderMap(g);b=b||{};var j=a.length,e=[],k,l;for(k=0;k<j;k++)(l=f[a[k]])?this.getLoadIndexes(l.idx,
b,g,d,c):e.push(a[k]);return this.getPathsFromIndexes(b,g).concat(e)}return a},expandUrls:function(a,b){"string"==typeof a&&(a=[a]);var d=[],c={},g,f=a.length,j,e,k,l;for(j=0;j<f;j++){g=this.expandUrl(a[j],{},b,!0);e=0;for(k=g.length;e<k;e++)l=g[e],c[l]||(c[l]=!0,d.push(l))}0==d.length&&(d=a);return d},expandLoadOrder:function(){var a=this.urls,b;this.expanded?b=a:(b=this.expandUrls(a,!0),this.expanded=!0);this.urls=b;a.length!=b.length&&(this.sequential=!0);return this},getUrls:function(){this.expandLoadOrder();
return this.urls},prepareUrl:function(a){return this.prependBaseUrl?b.baseUrl+a:a},getEntries:function(){var a=this.entries,c,d,h;if(!a){a=[];h=this.getUrls();for(c=0;c<h.length;c++)d=this.prepareUrl(h[c]),d=b.getEntry(d,{buster:this.buster,charset:this.charset}),d.requests.push(this),a.push(d);this.entries=a}return a},loadEntries:function(a){var b=this,c=b.getEntries(),h=c.length,g=b.loadStart||0,f,e;void 0!==a&&(b.sync=a);b.loaded=b.loaded||0;b.loading=b.loading||h;for(e=g;e<h;e++)if(f=c[e],g=f.loaded?
!0:c[e].load(b.sync),!g){b.loadStart=e;f.onDone(function(){b.loadEntries(a)});break}b.processLoadedEntries()},processLoadedEntries:function(){var a=this.getEntries(),b=a.length,c=this.startIndex||0,h;if(!this.done){for(;c<b;c++){h=a[c];if(!h.loaded){this.startIndex=c;return}h.evaluated||h.evaluate();h.error&&(this.error=!0)}this.notify()}},notify:function(){var a=this;if(!a.done){var c=a.error,d=a[c?"failure":"success"],c="delay"in a?a.delay:c?1:b.config.chainDelay,h=a.scope||a;a.done=!0;d&&(0===
c||0<c?setTimeout(function(){d.call(h,a)},c):d.call(h,a));a.fireListeners();b.requestComplete(a)}},onDone:function(a){var b=this.listeners||(this.listeners=[]);this.done?a(this):b.push(a)},fireListeners:function(){var a=this.listeners,b;if(a)for(;b=a.shift();)b(this)}};t.prototype={$isEntry:!0,done:!1,evaluated:!1,loaded:!1,isCrossDomain:function(){void 0===this.crossDomain&&(this.crossDomain=0!==this.getLoadUrl().indexOf(b.origin));return this.crossDomain},isCss:function(){if(void 0===this.css)if(this.url){var a=
b.assetConfig[this.url];this.css=a?"css"===a.type:z.test(this.url)}else this.css=!1;return this.css},getElement:function(a){var c=this.el;c||(this.isCss()?(a=a||"link",c=n.createElement(a),"link"==a?(c.rel="stylesheet",this.prop="href"):this.prop="textContent",c.type="text/css"):(c=n.createElement(a||"script"),c.type="text/javascript",this.prop="src",this.charset&&(c.charset=this.charset),b.hasAsync&&(c.async=!1)),this.el=c);return c},getLoadUrl:function(){var a=b.canonicalUrl(this.url);this.loadUrl||
(this.loadUrl=this.buster?a+(-1===a.indexOf("?")?"?":"\x26")+this.buster:a);return this.loadUrl},fetch:function(a){var c=this.getLoadUrl();b.fetch(c,a.complete,this,!!a.async)},onContentLoaded:function(a){var b=a.status,c=a.content;a=a.exception;this.getLoadUrl();this.loaded=!0;(a||0===b)&&!x.phantom?this.evaluated=this.error=!0:200<=b&&300>b||304===b||x.phantom||0===b&&0<c.length?this.content=c:this.evaluated=this.error=!0},createLoadElement:function(a){var c=this,d=c.getElement();c.preserve=!0;
d.onerror=function(){c.error=!0;a&&a()};b.hasReadyState?d.onreadystatechange=function(){("loaded"===this.readyState||"complete"===this.readyState)&&a&&a()}:d.onload=a;d[c.prop]=c.getLoadUrl()},onLoadElementReady:function(){b.getHead().appendChild(this.getElement());this.evaluated=!0},inject:function(a){var c=b.getHead(),d=this.url,h=this.key,e,f;this.isCss()?(this.preserve=!0,f=h.substring(0,h.lastIndexOf("/")+1),e=n.createElement("base"),e.href=f,c.firstChild?c.insertBefore(e,c.firstChild):c.appendChild(e),
e.href=e.href,d&&(a+="\n/*# sourceURL\x3d"+h+" */"),d=this.getElement("style"),h="styleSheet"in d,c.appendChild(e),h?(c.appendChild(d),d.styleSheet.cssText=a):(d.textContent=a,c.appendChild(d)),c.removeChild(e)):(d&&(a+="\n//# sourceURL\x3d"+h),Ext.globalEval(a));return this},loadCrossDomain:function(){var a=this;a.createLoadElement(function(){a.loaded=a.evaluated=a.done=!0;a.notifyRequests()});a.evaluateLoadElement();return!1},loadElement:function(){var a=this;a.createLoadElement(function(){a.loaded=
a.evaluated=a.done=!0;a.notifyRequests()});a.evaluateLoadElement();return!0},loadSync:function(){var a=this;a.fetch({async:!1,complete:function(b){a.onContentLoaded(b)}});a.evaluate();a.notifyRequests()},load:function(a){var c=this;if(!c.loaded){if(c.loading)return!1;c.loading=!0;if(a)c.loadSync();else{if(c.isCrossDomain())return c.loadCrossDomain();if(!c.isCss()&&b.hasReadyState)c.createLoadElement(function(){c.loaded=!0;c.notifyRequests()});else{if(b.useElements&&(!c.isCss()||!x.phantom))return c.loadElement();
c.fetch({async:!a,complete:function(a){c.onContentLoaded(a);c.notifyRequests()}})}}}return!0},evaluateContent:function(){this.inject(this.content);this.content=null},evaluateLoadElement:function(){b.getHead().appendChild(this.getElement())},evaluate:function(){!this.evaluated&&!this.evaluating&&(this.evaluating=!0,void 0!==this.content?this.evaluateContent():this.error||this.evaluateLoadElement(),this.evaluated=this.done=!0,this.cleanup())},cleanup:function(){var a=this.el,b;if(a){if(!this.preserve)for(b in this.el=
null,a.parentNode.removeChild(a),a)try{b!==this.prop&&(a[b]=null),delete a[b]}catch(c){}a.onload=a.onerror=a.onreadystatechange=e}},notifyRequests:function(){var a=this.requests,b=a.length,c,e;for(c=0;c<b;c++)e=a[c],e.processLoadedEntries();this.done&&this.fireListeners()},onDone:function(a){var b=this.listeners||(this.listeners=[]);this.done?a(this):b.push(a)},fireListeners:function(){var a=this.listeners,b;if(a&&0<a.length)for(;b=a.shift();)b(this)}};Ext.disableCacheBuster=function(a,b){var c=new Date;
c.setTime(c.getTime()+864E5*(a?3650:-1));c=c.toGMTString();n.cookie="ext-cache\x3d1; expires\x3d"+c+"; path\x3d"+(b||"/")};b.init();return b}(function(){});Ext.globalEval=Ext.globalEval||(this.execScript?function(e){execScript(e)}:function(e){eval.call(window,e)});
Function.prototype.bind||function(){var e=Array.prototype.slice,l=function(l){var n=e.call(arguments,1),r=this;if(n.length)return function(){var u=arguments;return r.apply(l,u.length?n.concat(e.call(u)):n)};n=null;return function(){return r.apply(l,arguments)}};Function.prototype.bind=l;l.$extjs=!0}();Ext.setResourcePath=function(e,l){var t=Ext.manifest||(Ext.manifest={}),n=t.resources||(t.resources={});t&&("string"!==typeof e?Ext.apply(n,e):n[e]=l,t.resources=n)};
Ext.getResourcePath=function(e,l,t){"string"!==typeof e&&(l=e.pool,t=e.packageName,e=e.path);var n=Ext.manifest,n=n&&n.resources;l=n[l];var r=[];null==l&&(l=n.path,null==l&&(l="resources"));l&&r.push(l);t&&r.push(t);r.push(e);return r.join("/")};Ext=Ext||window.Ext||{};
Ext.Microloader=Ext.Microloader||function(){var e=Ext.Boot,l=function(b){console.log("[WARN] "+b)},t="_ext:"+location.pathname,n=function(b,a){return t+b+"-"+(a?a+"-":"")+c.appId},r,u;try{u=window.localStorage}catch(z){}var s=window.applicationCache,v={clearAllPrivate:function(b){if(u){u.removeItem(b.key);var a,e=[],d=b.profile+"-"+c.appId,h=u.length;for(b=0;b<h;b++)a=u.key(b),0===a.indexOf(t)&&-1!==a.indexOf(d)&&e.push(a);for(b in e)u.removeItem(e[b])}},retrieveAsset:function(b){try{return u.getItem(b)}catch(a){return null}},
setAsset:function(b,a){try{null===a||""==a?u.removeItem(b):u.setItem(b,a)}catch(c){}}},x=function(b){this.assetConfig="string"===typeof b.assetConfig?{path:b.assetConfig}:b.assetConfig;this.type=b.type;this.key=n(this.assetConfig.path,b.manifest.profile);b.loadFromCache&&this.loadFromCache()};x.prototype={shouldCache:function(){return u&&this.assetConfig.update&&this.assetConfig.hash&&!this.assetConfig.remote},is:function(b){return!!b&&this.assetConfig&&b.assetConfig&&this.assetConfig.hash===b.assetConfig.hash},
cache:function(b){this.shouldCache()&&v.setAsset(this.key,b||this.content)},uncache:function(){v.setAsset(this.key,null)},updateContent:function(b){this.content=b},getSize:function(){return this.content?this.content.length:0},loadFromCache:function(){this.shouldCache()&&(this.content=v.retrieveAsset(this.key))}};var k=function(b){this.content="string"===typeof b.content?JSON.parse(b.content):b.content;this.assetMap={};this.url=b.url;this.fromCache=!!b.cached;this.assetCache=!1!==b.assetCache;this.key=
n(this.url);this.profile=this.content.profile;this.hash=this.content.hash;this.loadOrder=this.content.loadOrder;this.deltas=this.content.cache?this.content.cache.deltas:null;this.cacheEnabled=this.content.cache?this.content.cache.enable:!1;this.loadOrderMap=this.loadOrder?e.createLoadOrderMap(this.loadOrder):null;b=this.content.tags;var a=Ext.platformTags;if(b){if(b instanceof Array)for(var c=0;c<b.length;c++)a[b[c]]=!0;else e.apply(a,b);e.apply(a,e.loadPlatformsParam())}this.js=this.processAssets(this.content.js,
"js");this.css=this.processAssets(this.content.css,"css")};k.prototype={processAsset:function(b,a){var c=new x({manifest:this,assetConfig:b,type:a,loadFromCache:this.assetCache});return this.assetMap[b.path]=c},processAssets:function(b,a){var c=[],d=b.length,e,g;for(e=0;e<d;e++)g=b[e],c.push(this.processAsset(g,a));return c},useAppCache:function(){return!0},getAssets:function(){return this.css.concat(this.js)},getAsset:function(b){return this.assetMap[b]},shouldCache:function(){return this.hash&&
this.cacheEnabled},cache:function(b){this.shouldCache()&&v.setAsset(this.key,JSON.stringify(b||this.content))},is:function(b){return this.hash===b.hash},uncache:function(){v.setAsset(this.key,null)},exportContent:function(){return e.apply({loadOrderMap:this.loadOrderMap},this.content)}};var w=[],y=!1,c={init:function(){Ext.microloaded=!0;var b=document.getElementById("microloader");c.appId=b?b.getAttribute("data-app"):"";Ext.beforeLoad&&(r=Ext.beforeLoad(Ext.platformTags));var a=Ext._beforereadyhandler;
Ext._beforereadyhandler=function(){Ext.Boot!==e&&(Ext.apply(Ext.Boot,e),Ext.Boot=e);a&&a()}},applyCacheBuster:function(b){var a=(new Date).getTime(),c=-1===b.indexOf("?")?"?":"\x26";return b+c+"_dc\x3d"+a},run:function(){c.init();var b=Ext.manifest;if("string"===typeof b){var a=b.indexOf(".json")===b.length-5?b:b+".json",m=n(a);(m=v.retrieveAsset(m))?(b=new k({url:a,content:m,cached:!0}),r&&r(b),c.load(b)):e.fetch(c.applyCacheBuster(a),function(d){b=new k({url:a,content:d.content});b.cache();r&&r(b);
c.load(b)})}else b=new k({content:b}),c.load(b)},load:function(b){c.urls=[];c.manifest=b;Ext.manifest=c.manifest.exportContent();var a=b.getAssets(),m=[],d,h,g,f;g=a.length;for(h=0;h<g;h++)if(d=a[h],f=c.filterAsset(d))b.shouldCache()&&d.shouldCache()&&(d.content?(f=e.registerContent(d.assetConfig.path,d.type,d.content),f.evaluated&&l("Asset: "+d.assetConfig.path+" was evaluated prior to local storage being consulted.")):m.push(d)),c.urls.push(d.assetConfig.path),e.assetConfig[d.assetConfig.path]=
e.apply({type:d.type},d.assetConfig);if(0<m.length)for(c.remainingCachedAssets=m.length;0<m.length;)d=m.pop(),e.fetch(d.assetConfig.path,function(a){return function(b){c.onCachedAssetLoaded(a,b)}}(d));else c.onCachedAssetsReady()},onCachedAssetLoaded:function(b,a){var m;a=c.parseResult(a);c.remainingCachedAssets--;a.error?(l("There was an error pre-loading the asset '"+b.assetConfig.path+"'. This asset will be uncached for future loading"),b.uncache()):(m=c.checksum(a.content,b.assetConfig.hash),
m||(l("Cached Asset '"+b.assetConfig.path+"' has failed checksum. This asset will be uncached for future loading"),b.uncache()),e.registerContent(b.assetConfig.path,b.type,a.content),b.updateContent(a.content),b.cache());if(0===c.remainingCachedAssets)c.onCachedAssetsReady()},onCachedAssetsReady:function(){e.load({url:c.urls,loadOrder:c.manifest.loadOrder,loadOrderMap:c.manifest.loadOrderMap,sequential:!0,success:c.onAllAssetsReady,failure:c.onAllAssetsReady})},onAllAssetsReady:function(){y=!0;c.notify();
!1!==navigator.onLine?c.checkAllUpdates():window.addEventListener&&window.addEventListener("online",c.checkAllUpdates,!1)},onMicroloaderReady:function(b){y?b():w.push(b)},notify:function(){for(var b;b=w.shift();)b()},patch:function(b,a){var c=[],d,e,g;if(0===a.length)return b;e=0;for(g=a.length;e<g;e++)d=a[e],"number"===typeof d?c.push(b.substring(d,d+a[++e])):c.push(d);return c.join("")},checkAllUpdates:function(){window.removeEventListener&&window.removeEventListener("online",c.checkAllUpdates,
!1);s&&c.checkForAppCacheUpdate();c.manifest.fromCache&&c.checkForUpdates()},checkForAppCacheUpdate:function(){s.status===s.UPDATEREADY||s.status===s.OBSOLETE?c.appCacheState="updated":s.status!==s.IDLE&&s.status!==s.UNCACHED?(c.appCacheState="checking",s.addEventListener("error",c.onAppCacheError),s.addEventListener("noupdate",c.onAppCacheNotUpdated),s.addEventListener("cached",c.onAppCacheNotUpdated),s.addEventListener("updateready",c.onAppCacheReady),s.addEventListener("obsolete",c.onAppCacheObsolete)):
c.appCacheState="current"},checkForUpdates:function(){e.fetch(c.applyCacheBuster(c.manifest.url),c.onUpdatedManifestLoaded)},onAppCacheError:function(b){l(b.message);c.appCacheState="error";c.notifyUpdateReady()},onAppCacheReady:function(){s.swapCache();c.appCacheUpdated()},onAppCacheObsolete:function(){c.appCacheUpdated()},appCacheUpdated:function(){c.appCacheState="updated";c.notifyUpdateReady()},onAppCacheNotUpdated:function(){c.appCacheState="current";c.notifyUpdateReady()},filterAsset:function(b){b=
b&&b.assetConfig||{};return b.platform||b.exclude?e.filterPlatform(b.platform,b.exclude):!0},onUpdatedManifestLoaded:function(b){b=c.parseResult(b);if(b.error)l("Error loading manifest file to check for updates"),c.onAllUpdatedAssetsReady();else{var a,m,d,h,g,f=[],j=new k({url:c.manifest.url,content:b.content,assetCache:!1});c.remainingUpdatingAssets=0;c.updatedAssets=[];c.removedAssets=[];c.updatedManifest=null;c.updatedAssetsReady=!1;if(j.shouldCache())if(c.manifest.is(j))c.onAllUpdatedAssetsReady();
else{c.updatedManifest=j;a=c.manifest.getAssets();m=j.getAssets();for(h in m)b=m[h],d=c.manifest.getAsset(b.assetConfig.path),(g=c.filterAsset(b))&&(!d||b.shouldCache()&&!d.is(b))&&f.push({_new:b,_current:d});for(h in a)d=a[h],b=j.getAsset(d.assetConfig.path),g=!c.filterAsset(b),(!g||!b||d.shouldCache()&&!b.shouldCache())&&c.removedAssets.push(d);if(0<f.length)for(c.remainingUpdatingAssets=f.length;0<f.length;)d=f.pop(),b=d._new,d=d._current,"full"===b.assetConfig.update||!d?e.fetch(b.assetConfig.path,
function(a){return function(b){c.onFullAssetUpdateLoaded(a,b)}}(b)):"delta"===b.assetConfig.update&&(h=j.deltas,h=h+"/"+b.assetConfig.path+"/"+d.assetConfig.hash+".json",e.fetch(h,function(a,b){return function(d){c.onDeltaAssetUpdateLoaded(a,b,d)}}(b,d)));else c.onAllUpdatedAssetsReady()}else c.updatedManifest=j,v.clearAllPrivate(j),c.onAllUpdatedAssetsReady()}},onFullAssetUpdateLoaded:function(b,a){var e;a=c.parseResult(a);c.remainingUpdatingAssets--;a.error?b.uncache():(e=c.checksum(a.content,b.assetConfig.hash))?
(b.updateContent(a.content),c.updatedAssets.push(b)):b.uncache();if(0===c.remainingUpdatingAssets)c.onAllUpdatedAssetsReady()},onDeltaAssetUpdateLoaded:function(b,a,e){var d,h,g;e=c.parseResult(e);c.remainingUpdatingAssets--;if(e.error)l("Error loading delta patch for "+b.assetConfig.path+" with hash "+a.assetConfig.hash+" . This asset will be uncached for future loading"),b.uncache();else try{d=JSON.parse(e.content),g=c.patch(a.content,d),(h=c.checksum(g,b.assetConfig.hash))?(b.updateContent(g),
c.updatedAssets.push(b)):b.uncache()}catch(f){l("Error parsing delta patch for "+b.assetConfig.path+" with hash "+a.assetConfig.hash+" . This asset will be uncached for future loading"),b.uncache()}if(0===c.remainingUpdatingAssets)c.onAllUpdatedAssetsReady()},onAllUpdatedAssetsReady:function(){var b;c.updatedAssetsReady=!0;if(c.updatedManifest){for(;0<c.removedAssets.length;)b=c.removedAssets.pop(),b.uncache();for(c.updatedManifest&&c.updatedManifest.cache();0<c.updatedAssets.length;)b=c.updatedAssets.pop(),
b.cache()}c.notifyUpdateReady()},notifyUpdateReady:function(){if("checking"!==c.appCacheState&&c.updatedAssetsReady&&("updated"===c.appCacheState||c.updatedManifest))c.appUpdate={updated:!0,app:"updated"===c.appCacheState,manifest:c.updatedManifest&&c.updatedManifest.exportContent()},c.fireAppUpdate()},fireAppUpdate:function(){Ext.GlobalEvents&&Ext.defer(function(){Ext.GlobalEvents.fireEvent("appupdate",c.appUpdate)},100)},checksum:function(b,a){if(!b||!a)return!1;var c=!0,d=a.length,e=b.substring(0,
1);"/"==e?b.substring(2,d+2)!==a&&(c=!1):"f"==e?b.substring(10,d+10)!==a&&(c=!1):"."==e&&b.substring(1,d+1)!==a&&(c=!1);return c},parseResult:function(b){var a={};(b.exception||0===b.status)&&!e.env.phantom?a.error=!0:200<=b.status&&300>b.status||304===b.status||e.env.phantom||0===b.status&&0<b.content.length?a.content=b.content:a.error=!0;return a}};return c}();Ext.manifest=Ext.manifest||"bootstrap";Ext.Microloader.run();</script>

</head>
<body></body>
</html>
