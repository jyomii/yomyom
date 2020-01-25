function ajax(postkey, groupkey, n) {
   output = "";
   var data="postkey=" + postkey +  "&groupkey=" + groupkey;
   var empty = "people-list"+n;
   $.ajax({
      type : "post",
      url : "group_main_ajax.net",
      data : data,
      dataType : "json",
      cache : false,
      success : function(data) {
            $("#"+empty).empty();
            output="";
            $(data.groupcalendarmemberlist).each(
                  function(index, item) {
                     output +="<li><figure>";
                     output +="<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                     output +="</figure><div class='friendz-meta'>";
                     output +="<a href='time-line.html'></a>"+item.groupnickname;
                     output +="<i class='__cf_email__'>모임장</i></div></li>";
                  })
            $("#"+empty).append(output);
      },
      error : function() {
         console.log('에러')
      }
   })// ajax
}// function ajax end

$(function() {
   $(".forMemberCountBtnOne").click(function() {
       var postkey = $(this).next().val();
       var n = $(this).next().next().val();
       var groupkey = $('#hiddenGroupKey').val();
       ajax(postkey, groupkey, n);
   })
   $(".forMemberCountBtnTwo").click(function() {
       var postkey = $(this).next().val();
       var n = $(this).next().next().val();
       var groupkey = $('#hiddenGroupKey').val();
       ajax(postkey, groupkey, n);
   })
   $(".forMemberCountBtnThree").click(function() {
       var postkey = $(this).next().val();
       var n = $(this).next().next().val();
       var groupkey = $('#hiddenGroupKey').val();
       ajax(postkey, groupkey, n);
   })

})