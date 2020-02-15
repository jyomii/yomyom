function go(page) {
	var data="page="+page;
	ajax(data);
}

function setPaging(href, digit) {
   output += "<li class='page-item disa'>";
   gray = "";
   if (href == "") {
      gray = "gray";
   }
   anchor = "<a class='page-link " + gray + "'" + href + ">" + digit
         + "</a></li>";
   output += anchor;
}
function ajax(data) {
   output = "";
   $.ajax({
      type : "post",
      url : "grouplistajax.net",
      data : data, // 응답받은 data 값
      dataType : "json",
      cache : false,
      success : function(data) {
         if (data.listcount > 0) { // 총 갯수가 1개이상인 경우
            $(".ggroupajaxlist").empty();
            var num = data.listcount - (data.page - 1) * data.limit;
            output = "";
            $(data.userreggroup).each(
                  function(index, item) {
                     output += "<li><img src='resources/images/resources/userlist-1.jpg' class='imground'>";
                     output += "<a href='group_main.net?groupkey="+item.groupkey+"'>"+item.groupname+"</a><br><hr class='hrmargin'></li>";   
                  })// each end; 
            $('.ggroupajaxlist').append(output)// table 완성

            $('#grpage').empty(); // 페이징 처리
            output = "";

            digit = '이전&nbsp;'
            href = "";
            if (data.page > 1) {
               href = 'href="javascript:go(' + (data.page - 1) + ')"';
            }
            setPaging(href, digit);

            for (var i = data.startpage; i <= data.endpage; i++) {
               digit = i;
               href = "";
               if (i != data.page) {
                  href = 'href="javascript:go(' + i + ')"';
               }
               setPaging(href, digit);
            }

            digit = '다음&nbsp;';
            href = "";
            if (data.page < data.maxpage) {
               href = 'href="javascript:go(' + (data.page + 1) + ')"';
            }
            setPaging(href, digit);

            $('#grpage').append(output)
         }// if(data.listcount > 0) end
         else {
            $(".ggroupajaxlist").empty();
            $(".ggroupajaxlist").append("<font size=5>가입된 모임이 없습니다.</font>");
         }
      },// success end
      error : function() {
         location.href = "error/error.jsp";
      }
   })// ajax
}// function ajax end