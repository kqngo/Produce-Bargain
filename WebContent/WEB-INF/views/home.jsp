<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="Content-Language" content="en_US">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://js-agent.newrelic.com/nr-spa-1123.min.js"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.gstatic.com/recaptcha/api2/v1563777128698/recaptcha__en.js"></script>
<script type="text/javascript">
window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(t){try{s.console&&console.log(t)}catch(e){}}var o,i=t("ee"),a=t(23),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,e,n){r(n.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,s){try{p?p-=1:o(s||new UncaughtException(t,e,n),!0)}catch(f){try{i("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function o(t,e){var n=e?null:c.now();i("err",[t,n])}var i=t("handle"),a=t(24),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(13),t(12),"addEventListener"in window&&t(6),c.xhrWrappable&&t(14),d=!0)}s.on("fn-start",function(t,e,n){d&&(p+=1)}),s.on("fn-err",function(t,e,n){d&&!n[l]&&(f(n,l,function(){return!0}),this.thrown=!0,o(n))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(){M++,j=y.hash,this[u]=x.now()}function o(){M--,y.hash!==j&&i(0,!0);var t=x.now();this[h]=~~this[h]+t-this[u],this[d]=t}function i(t,e){E.emit("newURL",[""+y,e])}function a(t,e){t.on(e,function(){this[e]=x.now()})}var s="-start",c="-end",f="-body",u="fn"+s,d="fn"+c,l="cb"+s,p="cb"+c,h="jsTime",m="fetch",v="addEventListener",w=window,y=w.location,x=t("loader");if(w[v]&&x.xhrWrappable){var g=t(10),b=t(11),E=t(8),R=t(6),O=t(13),C=t(7),P=t(14),T=t(9),L=t("ee"),S=L.get("tracer");t(16),x.features.spa=!0;var j,M=0;L.on(u,r),L.on(l,r),L.on(d,o),L.on(p,o),L.buffer([u,d,"xhr-done","xhr-resolved"]),R.buffer([u]),O.buffer(["setTimeout"+c,"clearTimeout"+s,u]),P.buffer([u,"new-xhr","send-xhr"+s]),C.buffer([m+s,m+"-done",m+f+s,m+f+c]),E.buffer(["newURL"]),g.buffer([u]),b.buffer(["propagate",l,p,"executor-err","resolve"+s]),S.buffer([u,"no-"+u]),T.buffer(["new-jsonp","cb-start","jsonp-error","jsonp-end"]),a(P,"send-xhr"+s),a(L,"xhr-resolved"),a(L,"xhr-done"),a(C,m+s),a(C,m+"-done"),a(T,"new-jsonp"),a(T,"jsonp-end"),a(T,"cb-start"),E.on("pushState-end",i),E.on("replaceState-end",i),w[v]("hashchange",i,!0),w[v]("load",i,!0),w[v]("popstate",function(){i(0,M>1)},!0)}},{}],5:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(13),s=t(12),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,v="fn"+h,w="bstTimer",y="pushState",x=t("loader");x.features.stn=!0,t(8);var g=NREUM.o.EV;o.on(m,function(t,e){var n=t[0];n instanceof g&&(this.bstStart=x.now())}),o.on(v,function(t,e){var n=t[0];n instanceof g&&i("bst",[n,e,this.bstStart,x.now()])}),a.on(m,function(t,e,n){this.bstStart=x.now(),this.bstType=n}),a.on(v,function(t,e){i(w,[e,this.bstStart,x.now(),this.bstType])}),s.on(m,function(){this.bstStart=x.now()}),s.on(v,function(t,e){i(w,[e,this.bstStart,x.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=x.now(),this.startPath=location.pathname+location.hash}),o.on(y+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],6:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&o(e)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,e){return t[1]}var a=t("ee").get("events"),s=t(26)(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=c(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?s(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],7:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=r.apply(this,arguments);return o.emit(n+"start",arguments,t),t.then(function(e){return o.emit(n+"end",[null,e],t),e},function(e){throw o.emit(n+"end",[e],t),e})})}var o=t("ee").get("fetch"),i=t(23);e.exports=o;var a=window,s="fetch-",c=s+"body-",f=["arrayBuffer","blob","json","text","formData"],u=a.Request,d=a.Response,l=a.fetch,p="prototype";u&&d&&l&&(i(f,function(t,e){r(u[p],e,c),r(d[p],e,c)}),r(a,"fetch",s),o.on(s+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),o.emit(s+"done",[null,e],n)}else o.emit(s+"done",[t],n)}))},{}],8:[function(t,e,n){var r=t("ee").get("history"),o=t(26)(r);e.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],9:[function(t,e,n){function r(t){function e(){c.emit("jsonp-end",[],l),t.removeEventListener("load",e,!1),t.removeEventListener("error",n,!1)}function n(){c.emit("jsonp-error",[],l),c.emit("jsonp-end",[],l),t.removeEventListener("load",e,!1),t.removeEventListener("error",n,!1)}var r=t&&"string"==typeof t.nodeName&&"script"===t.nodeName.toLowerCase();if(r){var o="function"==typeof t.addEventListener;if(o){var a=i(t.src);if(a){var u=s(a),d="function"==typeof u.parent[u.key];if(d){var l={};f.inPlace(u.parent,[u.key],"cb-",l),t.addEventListener("load",e,!1),t.addEventListener("error",n,!1),c.emit("new-jsonp",[t.src],l)}}}}}function o(){return"addEventListener"in window}function i(t){var e=t.match(u);return e?e[1]:null}function a(t,e){var n=t.match(l),r=n[1],o=n[3];return o?a(o,e[r]):e[r]}function s(t){var e=t.match(d);return e&&e.length>=3?{key:e[2],parent:a(e[1],window)}:{key:t,parent:window}}var c=t("ee").get("jsonp"),f=t(26)(c);if(e.exports=c,o()){var u=/[?&](?:callback|cb)=([^&#]+)/,d=/(.*)\.([^.]+)/,l=/^(\w+)(\.|$)(.*)$/,p=["appendChild","insertBefore","replaceChild"];f.inPlace(HTMLElement.prototype,p,"dom-"),f.inPlace(HTMLHeadElement.prototype,p,"dom-"),f.inPlace(HTMLBodyElement.prototype,p,"dom-"),c.on("dom-start",function(t){r(t[0])})}},{}],10:[function(t,e,n){var r=t("ee").get("mutation"),o=t(26)(r),i=NREUM.o.MO;e.exports=r,i&&(window.MutationObserver=function(t){return this instanceof i?new i(o(t,"fn-")):i.apply(this,arguments)},MutationObserver.prototype=i.prototype)},{}],11:[function(t,e,n){function r(t){var e=a.context(),n=s(t,"executor-",e),r=new f(n);return a.context(r).getCtx=function(){return e},a.emit("new-promise",[r,e],e),r}function o(t,e){return e}var i=t(26),a=t("ee").get("promise"),s=i(a),c=t(23),f=NREUM.o.PR;e.exports=a,f&&(window.Promise=r,["all","race"].forEach(function(t){var e=f[t];f[t]=function(n){function r(t){return function(){a.emit("propagate",[null,!o],i),o=o||!t}}var o=!1;c(n,function(e,n){Promise.resolve(n).then(r("all"===t),r(!1))});var i=e.apply(f,arguments),s=f.resolve(i);return s}}),["resolve","reject"].forEach(function(t){var e=f[t];f[t]=function(t){var n=e.apply(f,arguments);return t!==n&&a.emit("propagate",[t,!0],n),n}}),f.prototype["catch"]=function(t){return this.then(null,t)},f.prototype=Object.create(f.prototype,{constructor:{value:r}}),c(Object.getOwnPropertyNames(f),function(t,e){try{r[e]=f[e]}catch(n){}}),a.on("executor-start",function(t){t[0]=s(t[0],"resolve-",this),t[1]=s(t[1],"resolve-",this)}),a.on("executor-err",function(t,e,n){t[1](n)}),s.inPlace(f.prototype,["then"],"then-",o),a.on("then-start",function(t,e){this.promise=e,t[0]=s(t[0],"cb-",this),t[1]=s(t[1],"cb-",this)}),a.on("then-end",function(t,e,n){this.nextPromise=n;var r=this.promise;a.emit("propagate",[r,!0],n)}),a.on("cb-end",function(t,e,n){a.emit("propagate",[n,!0],this.nextPromise)}),a.on("propagate",function(t,e,n){this.getCtx&&!e||(this.getCtx=function(){if(t instanceof Promise)var e=a.context(t);return e&&e.getCtx?e.getCtx():this})}),r.toString=function(){return""+f})},{}],12:[function(t,e,n){var r=t("ee").get("raf"),o=t(26)(r),i="equestAnimationFrame";e.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],13:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function o(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var i=t("ee").get("timer"),a=t(26)(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";e.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],14:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",s)}function o(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,y,"fn-",s)}function i(t){x.push(t),h&&(b?b.then(a):v?v(a):(E=-E,R.data=E))}function a(){for(var t=0;t<x.length;t++)r([],x[t]);x.length&&(x=[])}function s(t,e){return e}function c(t,e){for(var n in t)e[n]=t[n];return e}t(6);var f=t("ee"),u=f.get("xhr"),d=t(26)(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,v=l.SI,w="readystatechange",y=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],x=[];e.exports=u;var g=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(w,o,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(c(p,g),g.prototype=p.prototype,d.inPlace(g.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,e){r(t,e),i(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!v&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===w||a()})},{}],15:[function(t,e,n){function r(){var t=window.NREUM,e=t.info.accountID||null,n=t.info.agentID||null,r=t.info.trustKey||null,i="btoa"in window&&"function"==typeof window.btoa;if(!e||!n||!i)return null;var a={v:[0,1],d:{ty:"Browser",ac:e,ap:n,id:o.generateCatId(),tr:o.generateCatId(),ti:Date.now()}};return r&&e!==r&&(a.d.tk=r),btoa(JSON.stringify(a))}var o=t(21);e.exports={generateTraceHeader:r}},{}],16:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<p;r++)t.removeEventListener(l[r],this.listener,!1);e.aborted||(n.duration=s.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):a(this,t),n.cbTime=this.cbTime,d.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime]))}}function o(t,e){var n=t.responseType;if("json"===n&&null!==e)return e;var r="arraybuffer"===n||"blob"===n||"json"===n?t.response:t.responseText;return v(r)}function i(t,e){var n=f(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}function a(t,e){t.params.status=e.status;var n=o(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var s=t("loader");if(s.xhrWrappable){var c=t("handle"),f=t(17),u=t(15).generateTraceHeader,d=t("ee"),l=["load","error","abort","timeout"],p=l.length,h=t("id"),m=t(20),v=t(19),w=window.XMLHttpRequest;s.features.xhr=!0,t(14),d.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,t.addEventListener("load",function(n){a(e,t)},!1),m&&(m>34||m<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),d.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),d.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=!1;if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=!!NREUM.init.distributed_tracing.enabled),n&&this.sameOrigin){var r=u();r&&e.setRequestHeader("newrelic",r)}}),d.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],o=this;if(n&&r){var i=v(r);i&&(n.txSize=i)}this.startTime=s.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof e.onload))&&o.end(e)}catch(n){try{d.emit("internal-error",[n])}catch(r){}}};for(var a=0;a<p;a++)e.addEventListener(l[a],this.listener,!1)}),d.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),d.on("xhr-load-added",function(t,e){var n=""+h(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),d.on("xhr-load-removed",function(t,e){var n=""+h(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),d.on("addEventListener-end",function(t,e){e instanceof w&&"load"===t[0]&&d.emit("xhr-load-added",[t[1],t[2]],e)}),d.on("removeEventListener-end",function(t,e){e instanceof w&&"load"===t[0]&&d.emit("xhr-load-removed",[t[1],t[2]],e)}),d.on("fn-start",function(t,e,n){e instanceof w&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=s.now()))}),d.on("fn-end",function(t,e){this.xhrCbStart&&d.emit("xhr-cb-time",[s.now()-this.xhrCbStart,this.onload,e],e)})}},{}],17:[function(t,e,n){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!e.protocol||":"===e.protocol||e.protocol===n.protocol,a=e.hostname===document.domain&&e.port===n.port;return r.sameOrigin=i&&(!e.hostname||a),r}},{}],18:[function(t,e,n){function r(){}function o(t,e,n){return function(){return i(t,[f.now()].concat(s(arguments)),e?null:this,n),e?void 0:this}}var i=t("handle"),a=t(23),s=t(24),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,e){u[e]=o(l+e,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(p+"tracer",[f.now(),t,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return e.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],n),t}finally{c.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=o(p+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now(),!1,e])}},{}],19:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],20:[function(t,e,n){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),e.exports=r},{}],21:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<i.length;s++)o=i[s],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&Uint8Array&&(e=r.getRandomValues(new Uint8Array(31)));for(var o=[],i=0;i<16;i++)o.push(t().toString(16));return o.join("")}e.exports={generateUuid:r,generateCatId:o}},{}],22:[function(t,e,n){function r(t,e){if(!o)return!1;if(t!==o)return!1;if(!e)return!0;if(!i)return!1;for(var n=i.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(o="Safari",i=c[1])}e.exports={agent:o,version:i,match:r}},{}],23:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],24:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],25:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],26:[function(t,e,n){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(24),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;e.exports=function(t,e){function n(t,e,n,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof n?n(r,a):n||{}}catch(f){l([f,"",[r,a,o],s])}u(e+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(e+"err",[r,a,d],s),d}finally{u(e+"end",[r,a,c],s)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,e,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<e.length;c++)s=e[c],a=t[s],r(a)||(t[s]=n(a,f?s+o:o,i,s))}function u(n,r,o){if(!c||e){var i=c;c=!0;try{t.emit(n,r,o,e)}catch(a){l([a,n,r,o])}c=i}}function d(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){l([r])}for(var o in t)s.call(t,o)&&(e[o]=t[o]);return e}function l(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=o),n.inPlace=f,n.flag=a,n}},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function n(n,r,o,i){if(!l.aborted||i){t&&t(n,r,o);for(var a=e(o),s=m(n),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[x[n]];return d&&d.push([g,n,r,a]),a}}function p(t,e){y[t]=m(t).concat(e)}function h(t,e){var n=y[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return y[t]||[]}function v(t){return d[t]=d[t]||o(n)}function w(t,e){f(t,function(t,n){e=e||"feature",x[n]=e,e in u||(u[e]=[])})}var y={},x={},g={on:p,addEventListener:p,removeEventListener:h,emit:n,get:v,listeners:m,context:e,buffer:w,abort:a,aborted:!1};return g}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(23),u={},d={},l=e.exports=o();l.backlog=u},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!E++){var t=b.info=NREUM.info,e=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return u.abort();f(x,function(e,n){t[e]||(t[e]=n)}),c("mark",["onload",a()+b.offset],null,"api");var n=p.createElement("script");n.src="https://"+t.agent,e.parentNode.insertBefore(n,e)}}function o(){"complete"===p.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return R.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(23),u=t("ee"),d=t(22),l=window,p=l.document,h="addEventListener",m="attachEvent",v=l.XMLHttpRequest,w=v&&v.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:v,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var y=""+location,x={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-spa-1123.min.js"},g=v&&w&&w[h]&&!/CriOS/.test(navigator.userAgent),b=e.exports={offset:s,now:a,origin:y,features:{},xhrWrappable:g,userAgent:d};t(18),p[h]?(p[h]("DOMContentLoaded",i,!1),l[h]("load",r,!1)):(p[m]("onreadystatechange",o),l[m]("onload",r)),c("mark",["firstbyte",s],null,"api");var E=0,R=t(25)},{}]},{},["loader",2,16,5,3,4]);
;NREUM.info={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",licenseKey:"6bf78401cf",applicationID:"172737967",sa:1}
</script>
<title>Food Waste : ReFED | Rethink Food Waste</title>


<!-- <link rel="stylesheet" type="text/css" href="https://d1qmdf3vop2l07.cloudfront.net/vital-water.cloudvent.net/compressed/_min_/dc92ad7d57e711d8b123b5e1c9d73567.css" data-cms-original-href="/css/style.css">
 -->




<%@ include file="links.jsp"%>
<style>
.parallax {
	/* The image used */
	background-image: url("img_parallax.jpg");
	/* Set a specific height */
	height: 500px;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.jumbotron {
	position: relative;
	overflow: hidden;
	height: 250px;
}

.container {
	position: relative;
	color: #ffffff;
	z-index: 2; /* Show content above video */
}

#video-background {
	position: absolute;
	height: auto;
	width: auto;
	min-height: 100%;
	min-width: 100%;
	left: 50%;
	top: 50%;
	-webkit-transform: translate3d(-50%, -50%, 0);
	transform: translate3d(-50%, -50%, 0);
	z-index: 1;
}


</style>
</head>

<body>

	<div class="jumbotron">
		<video id="video-background" preload muted autoplay loop>
			<source src="<spring:url value="/resources//images/backyard.MOV"/> "
				type="video/mp4">
		</video>
		<div class="container">
			<div class="col-md-10 col-md-offset-1" data-form-type="formoid">
				<h2 class="styled">Reduce Waste | Promote Healthy Living</h2>
				<p>Join us to reduce food waste and improve access to healthy
					food to our local communities.</p>
			</div>
		</div>
	</div>



	<%@ include file="navBar.jsp"%>



	<!-- Citations -->
	<div class="card bg-transparent">
		<div class="card-columns">
			<div class="card">
				<img class="card-img-top"
					src="https://i.guim.co.uk/img/media/8b1da3526e526e14393ab3863aa8152d020737a1/0_172_5696_3419/master/5696.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=5eddc29938814fb0ba0dbc535a678ee2"
					alt="Disgarded veggies">

				<div class="blockquote card-body">
					<p class="card-text">Growing food that goes to waste currently
						uses 21% of our freshwater, 19% of our fertilizer, and 18% of our
						cropland.</p>

					<footer class="blockquote-footer">
						<small class="text-muted"> <a
							href="https://www.refed.com/?sort=economic-value-per-ton">ReFED</a>
						</small>
					</footer>

				</div>
			</div>
			<div class="card">
				<blockquote class="blockquote card-body">
					<p>Sixty (60) million tons of produce worth about $160 billion
						is wasted by retailers and consumers every year</p>

					<footer class="blockquote-footer">
						<small class="text-muted"> <a
							href="https://www.theguardian.com/environment/2016/jul/13/us-food-waste-ugly-fruit-vegetables-perfect">The
								Guardian</a>
						</small>
					</footer>
				</blockquote>
			</div>

			<div class="card text-center">
				<blockquote class="blockquote">
					<p>According to the U.S. Department of Agriculture’s Food Loss
						Project, we throw away more than 25 percent—some 25.9 million
						tons—of all the food we produce for domestic sale and consumption.</p>
					<footer class="blockquote-footer">
						<small> <a
							href="https://www.scientificamerican.com/article/earth-talk-waste-land">
								Scientific American </a>
						</small>
					</footer>
				</blockquote>
			</div>


			<div class="card  text-right">
				<blockquote class="blockquote">
					<p>Once this food gets to the landfill, it then generates
						methane, a greenhouse gas 23 times as potent as carbon dioxide in
						trapping heat within our atmosphere.</p>
					<footer class="blockquote-footer">
						<small class="text-muted"><a
							href="https://www.scientificamerican.com/article/earth-talk-waste-lan">
								Scientific American </a> </small>
					</footer>
				</blockquote>
			</div>

			<div class="card  text-right">
				<blockquote class="blockquote ">
					<p>According to the U.S. Environmental Protection Agency,
						landfills account for 34 percent of all methane emissions in the
						U.S.</p>
					<footer class="blockquote-footer">
						<small class="text-muted"> <a
							href="https://www.scientificamerican.com/article/earth-talk-waste-land">
								Scientific American </a>
						</small>
					</footer>
				</blockquote>
			</div>

			<div class="card">
				<img class="card-img-top"
					src="https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fcleanmalaysia.com%2Fwp-content%2Fuploads%2F2017%2F07%2FPilot-scheme-shows-promise-in-repurposing-commercial-food-wastes-790x422.jpg&f=1"
					alt="Card image cap">
				<div class="card-body">
					<p class="card-text">When food ends up in the landfill, it
						produces methane, a greenhouse gas 23 times as potent as CO2.</p>
					<p class="card-text">
					<footer class="blockquote-footer">

						<small class="text-muted"> <a
							href="https://www.scientificamerican.com/article/earth-talk-waste-land">Scientific
								American</a>

						</small>
					</footer>

					</p>
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<p class="card-text">Reducing food waste is one of the top
						three ways to reverse global warming.</p>
					<p class="card-text">
					<footer class="blockquote-footer">
						<small class="text-muted"> <a
							href="https://www.drawdown.org/solutions-summary-by-rank">Project
								Drawdown</a>
						</small>
					</footer>
					</p>
				</div>
			</div>
		</div>
	</div>


	<!-- Testimony -->
	<div class="card bg-info">
		<section
			class="mbr-slider mbr-section mbr-section__container carousel slide testimonials mbr-section-nopadding mbr-parallax-background"
			data-ride="carousel" data-keyboard="false" data-wrap="true"
			data-interval="4000" id="testimonials2-2a" data-rv-view="110"
			style="background-image: none; position: relative; background-attachment: scroll; background-size: auto;">

			<div id="jarallax-container-2"
				style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; pointer-events: none; transition: transform 0s linear -1ms, -webkit-transform 0s linear -1ms; visibility: hidden; z-index: -100;">
				<div
					style="background-position: 50% 120%; background-repeat: no-repeat; background-image: url(&amp;quot;https://www.webnots.com/bootstrap/assets-demo/images/testimonials2.jpg&amp;quot;); position: fixed; top: 0px; left: 0px; width: 5468px; height: 1836px; overflow: hidden; pointer-events: none; transition: transform 0s linear -1ms, -webkit-transform 0s linear -1ms; background-size: 5468px 3645.33px; visibility: visible; transform: translate3d(0px, 144.46px, 0px);">
				</div>
			</div>

			<div class=" container boxed-slider"
				style="padding-top: 50px; padding-bottom: 50px;">
				<div>
					<div>
						<ol class="carousel-indicators">
							<li data-app-prevent-settings="" data-target="#testimonials2-2a"
								data-slide-to="0" class=""></li>
							<li data-app-prevent-settings="" data-target="#testimonials2-2a"
								data-slide-to="1" class=""></li>
							<li data-app-prevent-settings="" data-target="#testimonials2-2a"
								class="active" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div
								class="mbr-section mbr-section-hero carousel-item dark center">
								<div class="mbr-table-cell">
									<div class="container-slide">
										<div class="row">
											<div class="col-md-offset-1 col-md-10 col-xs-12 page_head">
												<blockquote>
													<p>Our family struggles to fit fruits and veggies into
														our budget. This service will help us to provide healthy
														options to our growing teenagers.</p>
												</blockquote>
												<h5 class="author">Quynh Pham</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="mbr-section mbr-section-hero carousel-item dark center">
								<div class="mbr-table-cell">

									<div class="container-slide">
										<div class="row">
											<div class="col-md-offset-1 col-md-10 col-xs-12 page_head">
												<blockquote>
													<p>I can get my grocery at a discount while helping to
														reduce food waste ? Sign me up!</p>
												</blockquote>
												<h5 class="author">Kasidit Bualoeng</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="mbr-section mbr-section-hero carousel-item dark center active"">
								<div class="mbr-table-cell">

									<div class="container-slide">
										<div class="row">
											<div class="col-md-offset-1 col-md-10 col-xs-12 page_head">
												<blockquote>
													<p>This is a great concept. I can't wait to be able to
														place my first Order.</p>
												</blockquote>
												<h5 class="author">Karma Tsering</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End carousel container -->

		</section>
	</div>

	<%@ include file="footer.jsp"%>
</body>

</html>
