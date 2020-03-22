(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-b42dd4b0"],{1010:function(t,e,r){"use strict";r.r(e);var s=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("b-row",{staticClass:"justify-content-md-center mt-4"},[r("b-col",{staticClass:"tabs",attrs:{md:"7"}},[r("b-card",{attrs:{"no-body":"","bg-variant":"dark","text-variant":"white"}},[r("b-tabs",{attrs:{"content-class":"mt-3",pills:"",card:""}},[r("b-tab",{attrs:{title:"看过的电影",active:""}},[r("b-card-group",{attrs:{columns:""}},t._l(t.movies,(function(e,s){return r("b-card",{key:s,attrs:{title:e.title,"bg-variant":"dark",id:"movie-card-"+s,"text-variant":"white"}},[r("b-card-text",[r("ul",[r("li",[t._v("评分："+t._s(new Array(e.star+1).join("⭐")))]),r("li",[t._v("标记时间："+t._s(t.formatDate(new Date(e.date),"yyyy-MM-dd")))]),r("li",[t._v("短评："+t._s(e.comment))])])]),r("b-popover",{attrs:{target:"movie-card-"+s,triggers:"click"},on:{show:function(r){return t.getDetail(e)},hide:t.resetPopOver},scopedSlots:t._u([{key:"title",fn:function(){return[t._v(t._s(t.popoverItem.alt_title))]},proxy:!0}],null,!0)},[r("b-img",{attrs:{thumbnail:"",src:t.popImageUrl,center:""}}),r("br"),r("ul",[r("li",[t._v("评分: "+t._s(t.popoverItem.rating.average))]),t._l(t.popoverItem.attrs,(function(e,s){return r("li",{key:s},[t._v(" "+t._s(s)+": "+t._s("string"!=typeof e?e.join(","):e)+" ")])})),r("li",[t._v("简介: "+t._s(t.popoverItem.summary))])],2)],1)],1)})),1)],1),r("b-tab",{attrs:{title:"看过的书"}},[r("b-card-group",{attrs:{columns:""}},t._l(t.books,(function(e,s){return r("b-card",{key:s,attrs:{title:e.title,"bg-variant":"dark","text-variant":"white",id:"book-card-"+s}},[r("b-card-text",[r("ul",[r("li",[t._v("评分："+t._s(new Array(e.star+1).join("⭐")))]),r("li",[t._v("标记时间："+t._s(t.formatDate(new Date(e.date),"yyyy-MM-dd")))]),r("li",[t._v("短评："+t._s(e.comment))])])]),r("b-popover",{attrs:{target:"book-card-"+s,triggers:"click"},on:{show:function(r){return t.getDetail(e)},hide:function(e){t.popImageUrl=""}},scopedSlots:t._u([{key:"title",fn:function(){return[t._v(t._s(t.popoverItem.title))]},proxy:!0}],null,!0)},[r("b-img",{attrs:{thumbnail:"",src:t.popImageUrl,center:""}}),r("br"),r("ul",[r("li",[t._v("评分: "+t._s(t.popoverItem.rating.average))]),r("li",[t._v("作者: "+t._s(t.popoverItem.author))]),r("li",[t._v("isbn: "+t._s(t.popoverItem.isbn10+" | "+t.popoverItem.isbn13))]),r("li",[t._v("出版社: "+t._s(t.popoverItem.publisher))])])],1)],1)})),1)],1),r("b-tab",{attrs:{title:"听过的音乐"}},[r("b-card-group",{attrs:{columns:""}},t._l(t.musics,(function(e,s){return r("b-card",{key:s,attrs:{title:e.title,"bg-variant":"dark","text-variant":"white",id:"music-card-"+s}},[r("b-card-text",[r("ul",[r("li",[t._v("评分："+t._s(new Array(e.star+1).join("⭐")))]),r("li",[t._v("标记时间："+t._s(t.formatDate(new Date(e.date),"yyyy-MM-dd")))]),r("li",[t._v("短评："+t._s(e.comment))])])]),r("b-popover",{attrs:{target:"music-card-"+s,triggers:"click"},on:{show:function(r){return t.getDetail(e)},hidden:function(e){t.popImageUrl=""}},scopedSlots:t._u([{key:"title",fn:function(){return[t._v(t._s(e.title))]},proxy:!0}],null,!0)},[r("b-img",{attrs:{thumbnail:"",src:t.popImageUrl,center:""}}),r("br"),r("ul",[t._l(t.popoverItem.attrs,(function(e,s){return r("li",{key:s},[t._v(" "+t._s(s)+": "+t._s("string"!=typeof e?e.join(","):e)+" ")])})),r("li",[t._v("简介: "+t._s(t.popoverItem.summary))])],2)],1)],1)})),1)],1)],1)],1)],1),r("b-col",{staticClass:"profile",attrs:{md:"auto"}},[r("b-card",{staticStyle:{"max-width":"20rem"},attrs:{"no-body":"","bg-variant":"dark","text-variant":"white"},scopedSlots:t._u([{key:"header",fn:function(){return[r("h4",{staticClass:"mb-0",attrs:{align:"center"}},[t._v("个人资料")])]},proxy:!0}])},[r("b-card-body",[r("b-card-img",{staticClass:"userHead",attrs:{alt:"Head",src:t.user.userface,top:"true"}}),r("b-card-title",{attrs:{title:t.user.name,align:"center"}}),r("b-card-sub-title",{staticClass:"mb-2"},[t._v("💖")]),r("b-card-text",[t._v(" "+t._s(t.user.desc)+" ")])],1),r("b-list-group",{attrs:{flush:""}},[r("b-list-group-item",{attrs:{variant:"dark"}},[t._v("has watched "+t._s(t.count.f)+" movies.")]),r("b-list-group-item",{attrs:{variant:"dark"}},[t._v("has read "+t._s(t.count.b)+" books.")]),r("b-list-group-item",{attrs:{variant:"dark"}},[t._v("has heard "+t._s(t.count.m)+" albums.")])],1),r("b-card-body",[r("b-button",{staticClass:"ml-2",attrs:{variant:"info"}},[t._v("follow")]),r("b-button",{staticClass:"ml-2",attrs:{variant:"success"}},[t._v("message")]),r("b-button",{staticClass:"ml-2",attrs:{variant:"danger"}},[t._v("block")])],1),r("b-card-footer",[r("p",[t._v("权限：")]),r("ul",t._l(t.user.roles,(function(e,s){return r("li",{key:s},[t._v(t._s(e.name))])})),0)])],1)],1)],1)},a=[],i=(r("ac1f"),r("5319"),{name:"UserHome",data:function(){return{user:{roles:[]},Finished:[],movies:[],books:[],musics:[],count:{},popoverItem:{alt_title:"",image:"",summary:"",rating:{average:""},author:"",isbn10:"",isbn13:"",publisher:"",attrs:{singer:[],pubdate:[],tracks:[]}},popImageUrl:""}},mounted:function(){this.user=this.$store.state.currentUser,this.getFinished(),this.userItemsCount()},methods:{getFinished:function(){var t=this,e="/finished/basic/"+this.user.id;this.getRequest(e).then((function(e){e&&(t.Finished=e,t.classify(),t.show=!1,t.$nextTick((function(){t.show=!0})))}))},classify:function(){for(var t=0;t<this.Finished.length;t++)switch(this.Finished[t].eventType){case"f":this.movies.push(this.Finished[t]);break;case"b":this.books.push(this.Finished[t]);break;case"m":this.musics.push(this.Finished[t]);break}},userItemsCount:function(){var t=this,e="/finished/basic/count/"+this.user.id;this.getRequest(e).then((function(e){e&&(t.count=e)}))},getDetail:function(t){var e=this,r=t.eventId,s="/dapi/v2";switch(t.eventType){case"f":s=s+"/movie/"+r;break;case"b":s=s+"/book/"+r;break;case"m":s=s+"/music/"+r;break}this.getRequest(s).then((function(t){t&&(e.popoverItem=t,console.log(e.popoverItem),e.popImageUrl=e.imageUrlCut(t.image))}))},imageUrlCut:function(t){return t.replace(/https:\/\/img\d.doubanio.com/i,"/dpic")},resetPopOver:function(){this.popImageUrl="",this.popoverItem={alt_title:"",image:"",author:"",summary:"",rating:{average:""},isbn10:"",isbn13:"",publisher:"",attrs:{singer:[],pubdate:[],tracks:[]}}}}}),n=i,o=r("2877"),c=Object(o["a"])(n,s,a,!1,null,"37ca9ee4",null);e["default"]=c.exports},"1ce4":function(t,e,r){"use strict";r.r(e);var s=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("h1",[t._v("User Profile")])},a=[],i={name:"UserProfile"},n=i,o=r("2877"),c=Object(o["a"])(n,s,a,!1,null,"9598318c",null);e["default"]=c.exports},"381a":function(t,e,r){var s={"./UserHome.vue":"1010","./UserProfile.vue":"1ce4"};function a(t){var e=i(t);return r(e)}function i(t){if(!r.o(s,t)){var e=new Error("Cannot find module '"+t+"'");throw e.code="MODULE_NOT_FOUND",e}return s[t]}a.keys=function(){return Object.keys(s)},a.resolve=i,t.exports=a,a.id="381a"}}]);
//# sourceMappingURL=chunk-b42dd4b0.f0328561.js.map