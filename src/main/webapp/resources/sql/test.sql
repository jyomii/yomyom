insert into userpolice values(
nvl((select max(policekey) from userpolice)+1,0),
0, --신고한 유저
1,--글/댓글 여부
1,--글/댓글 번호
0,--욕/비방/정치/혐오
0--신고당한 유저
);

 // 모임게시글키값 
 private int postKey;

 // 제목 
 private String postTitle;

 // 내용 
 private String postContent;

 // 작성날짜 
 private Date postDate;

 // 모임키값 
 private int groupKey;

 // 유저키값 
 private int userKey;

 // 댓글허용여부 
 private String postOptionReply;

 // 검색허용여부 
 private String postOptionSearch;

 // 모임게시판키값 
 private int boardKey;

 // 조회수 
 private int postReadcount;

insert into Post values();


