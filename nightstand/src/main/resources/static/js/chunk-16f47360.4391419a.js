(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-16f47360"],{"1c6e":function(t,e,a){"use strict";var s=a("7ede"),i=a.n(s);i.a},3812:function(t,e,a){"use strict";a.r(e);var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("b-container",{staticStyle:{"max-width":"80%"},attrs:{fluid:""}},[a("b-card",{staticClass:"mt-4",attrs:{"bg-variant":"dark","text-variant":"white"},scopedSlots:t._u([{key:"header",fn:function(){return[a("h3",{staticClass:"mb-1",attrs:{align:"center"}},[t._v("待办管理")])]},proxy:!0}])},[a("b-row",[a("b-col",[a("b-form-group",{staticClass:"ml-2",attrs:{label:"每页大小","label-cols-sm":"6","label-cols-md":"4","label-cols-lg":"3","label-align-sm":"right","label-size":"sm","label-for":"perPageSelect"}},[a("b-form-select",{attrs:{id:"perPageSelect",size:"sm",options:t.pageOptions},on:{change:t.getItems},model:{value:t.perPage,callback:function(e){t.perPage=e},expression:"perPage"}})],1)],1),a("b-col",[a("b-form-group",{staticClass:"ml-2",attrs:{label:"选择类型","label-cols-sm":"6","label-cols-md":"4","label-cols-lg":"3","label-align-sm":"right","label-size":"sm","label-for":"typeSelect"}},[a("b-form-select",{attrs:{id:"typeSelect",size:"sm",options:t.typeOptions},on:{change:t.getItems},model:{value:t.type,callback:function(e){t.type=e},expression:"type"}})],1)],1),a("b-col",[a("b-form-file",{attrs:{state:Boolean(t.file),placeholder:"选择导入csv文件","drop-placeholder":"Drop file here..."},model:{value:t.file,callback:function(e){t.file=e},expression:"file"}})],1),a("b-button",{attrs:{variant:"warning"},on:{click:t.uploadFile}},[t._v("上传文件")])],1),a("b-table",{ref:"waitingTable",attrs:{"show-empty":"",small:"",stacked:"md",items:t.items,fields:t.fields,"per-page":t.perPage,"sort-by":t.sortBy,"sort-desc":t.sortDesc,"sort-direction":t.sortDirection,dark:"dark"},on:{"update:sortBy":function(e){t.sortBy=e},"update:sort-by":function(e){t.sortBy=e},"update:sortDesc":function(e){t.sortDesc=e},"update:sort-desc":function(e){t.sortDesc=e}},scopedSlots:t._u([{key:"cell(actions)",fn:function(e){return[a("b-button",{staticClass:"ml-2",attrs:{size:"sm",variant:"success"},on:{click:function(a){return t.info(e.item,e.index,a.target)}}},[t._v(" 详细信息 ")]),a("b-button",{staticClass:"ml-2",attrs:{size:"sm",variant:"info"},on:{click:function(a){return t.startAddModal(e.item)}}},[t._v(" 加入计划 ")]),a("b-button",{staticClass:"ml-2",attrs:{size:"sm",variant:"danger"},on:{click:function(a){return t.deleteItem(e.item)}}},[t._v(" 删除 ")])]}}])}),a("b-pagination",{staticClass:"my-0",attrs:{"total-rows":t.total,"per-page":t.perPage,align:"center",size:"sm"},model:{value:t.currentPage,callback:function(e){t.currentPage=e},expression:"currentPage"}})],1),a("b-modal",{attrs:{scrollable:"",id:t.infoModal.id,title:t.infoModal.title,"ok-only":""},on:{hide:t.resetInfoModal}},[a("pre",[t._v(t._s(t.infoModal.content))])]),a("b-modal",{attrs:{id:"addModal",title:"添加到规划",centered:"","header-bg-variant":"dark","header-text-variant":"light","body-bg-variant":"secondary","body-text-variant":"light","footer-bg-variant":"dark","footer-text-variant":"light"},scopedSlots:t._u([{key:"modal-footer",fn:function(){return[a("div",{staticClass:"w-100"},[a("b-button",{staticClass:"float-right",attrs:{variant:"secondary",size:"sm"},on:{click:t.resetAddModal}},[t._v(" 取消 ")]),a("b-button",{staticClass:"mr-2 float-right",attrs:{variant:"success",size:"sm"},on:{click:t.add2Schedule}},[t._v(" 提交 ")])],1)]},proxy:!0}]),model:{value:t.addModal.show,callback:function(e){t.$set(t.addModal,"show",e)},expression:"addModal.show"}},[a("label",{attrs:{for:"datepicker-buttons"}},[t._v("请选择你计划完成的时间")]),a("b-form-datepicker",{attrs:{dark:"true",id:"datepicker-buttons","today-button":"","reset-button":"","close-button":""},model:{value:t.addModal.due,callback:function(e){t.$set(t.addModal,"due",e)},expression:"addModal.due"}})],1)],1)},i=[],o={name:"EventWaitingTable",data:function(){return{file:null,total:9,items:[{eventId:"axxx",title:"aaa"}],fields:[{key:"eventId",label:"ID"},{key:"eventType",label:"类型",class:"text-center"},{key:"title",label:"标题"},{key:"actions",label:"Actions"}],currentPage:1,perPage:5,pageOptions:[5,10,15],type:"f",typeOptions:[{value:"f",text:"电影"},{value:"m",text:"音乐"},{value:"b",text:"书籍"},{value:"all",text:"全部"}],sortBy:"",sortDesc:!1,sortDirection:"asc",sortOptions:[{value:"asc",text:"从最早开始"},{value:"desc",text:"从最新开始"}],infoModal:{id:"info-modal",title:"",content:""},addModal:{show:!1,item:null,due:null},scheduleForm:{}}},watch:{currentPage:"getItems"},mounted:function(){this.getItems()},methods:{info:function(t,e,a){var s=this;this.infoModal.title="Row index: ".concat(e);var i="https://douban.uieee.com/v2";switch(t.eventType){case"f":i+="/movie/";break;case"b":i+="/book/";break;case"m":i+="/music/"}this.getRequest(i+t.eventId).then((function(t){t&&(s.infoModal.content=JSON.stringify(t,null,2),s.$root.$emit("bv::show::modal",s.infoModal.id,a))}))},resetInfoModal:function(){this.infoModal.title="",this.infoModal.content=""},startAddModal:function(t){this.addModal.item=t,this.addModal.show=!0},resetAddModal:function(){this.scheduleForm={},this.addModal.item=null,this.addModal.due=null,this.addModal.show=!1},add2Schedule:function(){var t=this;if(null==this.addModal.due)return this.$bvModal.msgBoxOk("没有输入计划日期。"),void this.resetAddModal();var e=this.addModal.item,a=e.id;this.scheduleForm={uid:e.uid,eventId:e.eventId,eventType:e.eventType,due:this.addModal.due,title:e.title};var s="/wait/basic/"+a;this.putRequest(s,this.scheduleForm).then((function(e){e&&t.resetAddModal()}))},deleteItem:function(t){var e=this;this.$bvModal.msgBoxConfirm("确定要删除 "+t.title+" 吗？",{title:"删除确认",size:"sm",buttonSize:"sm",okVariant:"danger",okTitle:"YES",cancelTitle:"NO",footerClass:"p-2",hideHeaderClose:!1,centered:!0}).then((function(a){a&&e.deleteRequest("/"+t.id).then((function(t){t&&e.getItems()}))}))},getItems:function(){var t=this,e="/wait/basic/"+this.$store.state.currentUser.id+"/"+this.currentPage+"/"+this.perPage;null!=this.type&&(e=e+"/"+this.type),this.getRequest(e).then((function(e){e&&(t.items=e.items,t.total=e.total,t.show=!1,t.$nextTick((function(){t.show=!0})))}))},uploadFile:function(){if(this.file){var t=new FormData;t.append("file",this.file);var e="/io/waiting/"+this.$store.state.currentUser.id;this.uploadRequest(e,t),this.currentPage=1,this.getItems()}}}},n=o,l=(a("667d"),a("2877")),r=Object(l["a"])(n,s,i,!1,null,null,null);e["default"]=r.exports},"667d":function(t,e,a){"use strict";var s=a("eeea"),i=a.n(s);i.a},"715e":function(t,e,a){"use strict";a.r(e);var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("b-container",{staticStyle:{"max-width":"80%"},attrs:{fluid:""}},[a("b-row",{staticClass:"mt-4"},[a("b-col",{attrs:{md:"auto"}},[a("b-calendar",{staticClass:"border rounded p-3 calender",attrs:{"selected-variant":"success","today-variant":"info"},model:{value:t.selectDate,callback:function(e){t.selectDate=e},expression:"selectDate"}},[a("div",{staticClass:"d-flex",attrs:{dir:"ltr"}},[t.selectDate?a("b-button",{attrs:{size:"sm",variant:"outline-danger"},on:{click:t.clearDate}},[t._v(" 取消选择 ")]):t._e(),a("b-button",{staticClass:"ml-auto",attrs:{size:"sm",variant:"outline-primary"},on:{click:t.setToday}},[t._v(" 返回今日 ")])],1),a("div",[t._v("选择的日期: "+t._s(t.selectDate))])])],1),a("b-col",[a("b-card-group",{attrs:{columns:""}},t._l(t.items,(function(e,s){return a("b-card",{key:s,staticClass:"mb-3",attrs:{header:e.title,"bg-variant":"dark","text-variant":"white","border-variant":"light","header-bg-variant":e.achieved?"success":"info"}},[a("ul",[a("li",[t._v("eventId: "+t._s(e.eventId))]),a("li",[t._v(t._s(e.informed?"已通知":"未通知"))]),a("li",[t._v("状态: "+t._s(e.achieved?"已完成✔":"未完成✖"))])]),e.achieved?t._e():a("b-button",{attrs:{pill:"",variant:"success",size:"sm"},on:{click:function(a){return t.startCommitModal(e)}}},[t._v(" 标记完成 ")]),e.achieved?t._e():a("b-button",{staticClass:"ml-2",attrs:{pill:"",variant:"warning",size:"sm"},on:{click:function(a){return t.startRescheduleModal(e.id)}}},[t._v(" 重新计划 ")])],1)})),1)],1)],1),a("b-modal",{attrs:{title:"提交标记","header-bg-variant":"dark","header-text-variant":"light","body-bg-variant":"secondary","body-text-variant":"light","footer-bg-variant":"dark","footer-text-variant":"light"},scopedSlots:t._u([{key:"modal-footer",fn:function(){return[a("div",{staticClass:"w-100"},[a("b-form-checkbox",{staticClass:"float-left",attrs:{value:"true","uncheckd-value":"false"},model:{value:t.submit2Douban,callback:function(e){t.submit2Douban=e},expression:"submit2Douban"}},[t._v(" 同时在豆瓣标记 ")]),a("b-button",{staticClass:"float-right",attrs:{variant:"secondary",size:"sm"},on:{click:t.reset_modal}},[t._v(" 取消 ")]),a("b-button",{staticClass:"mr-2 float-right",attrs:{variant:"success",size:"sm"},on:{click:t.setFinished}},[t._v(" 提交 ")])],1)]},proxy:!0}]),model:{value:t.commitModalShow,callback:function(e){t.commitModalShow=e},expression:"commitModalShow"}},[a("b-form-group",{attrs:{label:"评分"}},[a("b-form-radio-group",{attrs:{id:"star-choose",options:t.starOptions,name:"radio-options"},model:{value:t.finishForm.star,callback:function(e){t.$set(t.finishForm,"star",e)},expression:"finishForm.star"}})],1),a("label",{attrs:{for:"textarea-comment"}},[t._v("短评")]),a("b-form-textarea",{attrs:{id:"textarea-comment",state:t.finishForm.comment.length<=350,size:"sm",placeholder:"请输入短评,字数小于350"},model:{value:t.finishForm.comment,callback:function(e){t.$set(t.finishForm,"comment",e)},expression:"finishForm.comment"}}),a("p",[t._v("fin: "+t._s(t.finishForm))])],1),a("b-modal",{attrs:{title:"重新规划","header-bg-variant":"dark","header-text-variant":"light","body-bg-variant":"secondary","body-text-variant":"light","footer-bg-variant":"dark","footer-text-variant":"light"},scopedSlots:t._u([{key:"modal-footer",fn:function(){return[a("div",{staticClass:"w-100"},[a("b-button",{staticClass:"float-right",attrs:{variant:"secondary",size:"sm"},on:{click:function(e){t.rescheduleModalShow=!1}}},[t._v(" 取消 ")]),a("b-button",{staticClass:"mr-2 float-right",attrs:{variant:"success",size:"sm"},on:{click:t.Reschedule}},[t._v(" 提交 ")])],1)]},proxy:!0}]),model:{value:t.rescheduleModalShow,callback:function(e){t.rescheduleModalShow=e},expression:"rescheduleModalShow"}},[a("label",{attrs:{for:"datepicker-buttons"}},[t._v("请选择你重新规划的时间")]),a("b-form-datepicker",{attrs:{dark:"true",id:"datepicker-buttons","today-button":"","reset-button":"","close-button":""},model:{value:t.rescheduleDate,callback:function(e){t.rescheduleDate=e},expression:"rescheduleDate"}})],1)],1)},i=[],o={name:"EventSchedule",data:function(){return{commitModalShow:!1,rescheduleModalShow:!1,rescheduleDate:"",submit2Douban:"false",starOptions:[1,2,3,4,5],selectDate:null,items:[{id:3,uid:1,due:1584288e6,eventId:"tte5231425",eventType:"f",informed:!1,achieved:!1,title:"dyq111"},{id:4,uid:1,due:1584288e6,eventId:"tte5231425",eventType:"f",informed:!0,achieved:!1,title:"dyq222"}],finishForm:{uid:0,eventId:"",eventType:"",comment:"",star:null,title:"",date:this.selectDate},sid:null}},watch:{selectDate:"getScheduleItems"},mounted:function(){this.setToday(),this.getScheduleItems()},methods:{setToday:function(){var t=new Date;this.selectDate=this.formatDate(t,"yyyy-MM-dd")},clearDate:function(){this.selectDate=""},startCommitModal:function(t){this.finishForm.eventId=t.eventId,this.finishForm.eventType=t.eventType,this.finishForm.uid=t.uid,this.finishForm.title=t.title,this.finishForm.date=this.selectDate,this.sid=t.id,console.log(this.finishForm),this.commitModalShow=!0},startRescheduleModal:function(t){this.sid=t,this.rescheduleModalShow=!0},resetCommitModal:function(){this.finishForm.eventId="",this.finishForm.eventType="",this.finishForm.uid="",this.finishForm.star="",this.finishForm.comment="",this.commitModalShow=!1},setFinished:function(){var t=this;if(null==this.sid||""==this.finishForm.uid)return this.$bvModal.msgBoxOk("提交信息有误，请重试。"),void this.resetCommitModal();var e="/schedule/basic/fin/"+this.sid;this.putRequest(e,this.finishForm).then((function(e){e&&(t.getScheduleItems(),t.resetCommitModal())}))},Reschedule:function(){var t=this;if(""!==this.rescheduleDate){var e="/schedule/basic/re/"+this.rescheduleDate+"/"+this.sid;this.putRequest(e).then((function(e){e&&(t.sid=0,t.rescheduleDate="",t.rescheduleModalShow=!1)}))}},getScheduleItems:function(){var t=this,e="/schedule/basic/list/"+this.selectDate+"/"+this.$store.state.currentUser.id;this.getRequest(e).then((function(e){e&&(t.items=e)}))}}},n=o,l=(a("1c6e"),a("2877")),r=Object(l["a"])(n,s,i,!1,null,null,null);e["default"]=r.exports},"7ede":function(t,e,a){},ead7:function(t,e,a){"use strict";a.r(e);var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("b-container",{staticStyle:{"max-width":"80%"},attrs:{fluid:""}},[a("b-card",{staticClass:"mt-4",attrs:{"bg-variant":"dark","text-variant":"white"},scopedSlots:t._u([{key:"header",fn:function(){return[a("h3",{staticClass:"mb-1",attrs:{align:"center"}},[t._v("已完成管理")])]},proxy:!0}])},[a("b-row",[a("b-col",[a("b-form-group",{staticClass:"ml-2",attrs:{label:"每页大小","label-cols-sm":"6","label-cols-md":"4","label-cols-lg":"3","label-align-sm":"right","label-size":"sm","label-for":"perPageSelect"}},[a("b-form-select",{attrs:{id:"perPageSelect",size:"sm",options:t.pageOptions},on:{change:t.getItems},model:{value:t.perPage,callback:function(e){t.perPage=e},expression:"perPage"}})],1)],1),a("b-col",[a("b-form-group",{staticClass:"ml-2",attrs:{label:"选择类型","label-cols-sm":"6","label-cols-md":"4","label-cols-lg":"3","label-align-sm":"right","label-size":"sm","label-for":"typeSelect"}},[a("b-form-select",{attrs:{id:"typeSelect",size:"sm",options:t.typeOptions},on:{change:t.getItems},model:{value:t.type,callback:function(e){t.type=e},expression:"type"}})],1)],1),a("b-col",[a("b-form-file",{attrs:{state:Boolean(t.file),placeholder:"选择导入csv文件","drop-placeholder":"Drop file here..."},model:{value:t.file,callback:function(e){t.file=e},expression:"file"}})],1),a("b-button",{attrs:{variant:"warning"},on:{click:t.uploadFile}},[t._v("上传文件")])],1),a("b-row",[a("b-col",{attrs:{md:"5"}},[a("b-form-group",{staticClass:"ml-2",attrs:{label:"日期排序方向","label-cols-sm":"6","label-cols-md":"4","label-cols-lg":"3","label-align-sm":"right","label-size":"sm","label-for":"perPageSelect"}},[a("b-form-select",{attrs:{id:"perPageSelect",size:"sm",options:t.sortOptions},model:{value:t.sortDirection,callback:function(e){t.sortDirection=e},expression:"sortDirection"}})],1)],1)],1),a("b-table",{ref:"waitingTable",attrs:{"show-empty":"",small:"",stacked:"md",items:t.items,fields:t.fields,"per-page":t.perPage,"sort-by":t.sortBy,"sort-desc":t.sortDesc,"sort-direction":t.sortDirection,dark:"dark"},on:{"update:sortBy":function(e){t.sortBy=e},"update:sort-by":function(e){t.sortBy=e},"update:sortDesc":function(e){t.sortDesc=e},"update:sort-desc":function(e){t.sortDesc=e}},scopedSlots:t._u([{key:"cell(actions)",fn:function(e){return[a("b-button",{staticClass:"mr-1",attrs:{size:"sm",variant:"success"},on:{click:function(a){return t.info(e.item,e.index,a.target)}}},[t._v(" 详细信息 ")]),a("b-button",{attrs:{size:"sm",variant:"info"},on:{click:e.toggleDetails}},[t._v(" "+t._s(e.detailsShowing?"隐藏":"显示")+" 短评 ")])]}},{key:"row-details",fn:function(e){return[a("b-card",{attrs:{"bg-variant":"dark","text-variant":"white"}},[a("div",[t._v("短评："+t._s(e.comment))])])]}}])}),a("b-pagination",{staticClass:"my-0",attrs:{"total-rows":t.total,"per-page":t.perPage,align:"center",size:"sm"},model:{value:t.currentPage,callback:function(e){t.currentPage=e},expression:"currentPage"}})],1),a("b-modal",{attrs:{scrollable:"",id:t.infoModal.id,title:t.infoModal.title,"ok-only":""},on:{hide:t.resetInfoModal}},[a("pre",[t._v(t._s(t.infoModal.content))])])],1)},i=[],o={name:"EventFinishedTable",data:function(){var t=this;return{file:null,total:0,items:[{eventId:"axxx",title:"aaa"}],fields:[{key:"eventId",label:"ID"},{key:"eventType",label:"类型",class:"text-center",formatter:function(t){switch(t){case"f":return"电影";case"b":return"书籍";case"m":return"专辑/单曲"}}},{key:"title",label:"标题"},{key:"date",label:"标记日期",sortable:!0,formatter:function(e){var a=new Date(e);return t.formatDate(a,"yyyy-MM-dd")}},{key:"star",label:"评分",formatter:function(t){switch(t){case 1:return"⭐";case 2:return"⭐⭐";case 3:return"⭐⭐⭐";case 4:return"⭐⭐⭐⭐";case 5:return"⭐⭐⭐⭐⭐";default:return"无评分"}}},{key:"actions",label:"Actions"}],currentPage:1,perPage:5,pageOptions:[5,10,15],type:"f",typeOptions:[{value:"f",text:"电影"},{value:"m",text:"音乐"},{value:"b",text:"书籍"},{value:"all",text:"全部"}],sortBy:"",sortDesc:!1,sortDirection:"desc",sortOptions:[{value:"asc",text:"从最早开始"},{value:"desc",text:"从最新开始"}],infoModal:{id:"info-modal",title:"",content:""}}},watch:{currentPage:"getItems",sortDirection:"getItems"},mounted:function(){this.getItems()},methods:{info:function(t,e,a){var s=this;this.infoModal.title="Row index: ".concat(e);var i="https://douban.uieee.com/v2";switch(t.eventType){case"f":i+="/movie/";break;case"b":i+="/book/";break;case"m":i+="/music/"}this.getRequest(i+t.eventId).then((function(t){t&&(s.infoModal.content=JSON.stringify(t,null,2),s.$root.$emit("bv::show::modal",s.infoModal.id,a))}))},resetInfoModal:function(){this.infoModal.title="",this.infoModal.content=""},getItems:function(){var t=this,e="/finished/basic/"+this.$store.state.currentUser.id+"/"+this.currentPage+"/"+this.perPage+"/"+this.type+"/"+this.sortDirection;this.getRequest(e).then((function(e){e&&(t.items=e.items,t.total=e.total,t.show=!1,t.$nextTick((function(){t.show=!0})))}))},uploadFile:function(){if(this.file){var t=new FormData;t.append("file",this.file);var e="/io/finished/"+this.$store.state.currentUser.id;this.uploadRequest(e,t),this.currentPage=1,this.getItems()}}}},n=o,l=a("2877"),r=Object(l["a"])(n,s,i,!1,null,null,null);e["default"]=r.exports},eeea:function(t,e,a){}}]);
//# sourceMappingURL=chunk-16f47360.4391419a.js.map