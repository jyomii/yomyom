

-- g_location Table Create SQL
DROP TABLE user_like_group;
DROP SEQUENCE user_like_group_SEQ;


DROP TABLE user_police;
DROP SEQUENCE user_police_SEQ;

DROP TABLE b_file;
DROP SEQUENCE b_file_SEQ;
        
DROP TABLE vote_membber;
DROP SEQUENCE vote_membber_SEQ;
 
 DROP TABLE g_comment;
DROP SEQUENCE g_comment_SEQ;

 DROP TABLE ladder;
DROP SEQUENCE ladder_SEQ;      
        
 
 DROP TABLE maps;
 DROP TABLE post_like;

 DROP TABLE calendar_member;

 DROP TABLE pr_board;
DROP SEQUENCE pr_board_SEQ;

 DROP TABLE user_message;
DROP SEQUENCE user_message_SEQ;


    DROP TABLE g_user_category;     


 DROP TABLE vote;
DROP SEQUENCE vote_SEQ;


 DROP TABLE calendar;

DROP TABLE POST;
DROP  SEQUENCE post_SEQ;

DROP TABLE g_group_board;
DROP  SEQUENCE g_group_board_SEQ;

DROP TABLE g_group_member;

DROP TABLE g_group;
DROP SEQUENCE g_group_SEQ;

DROP TABLE g_users;
DROP SEQUENCE g_users_SEQ;

DROP TABLE g_category2;
DROP SEQUENCE g_category2_SEQ;

DROP TABLE g_category;
DROP SEQUENCE g_category_SEQ;

DROP TABLE g_age;
DROP SEQUENCE g_location_SEQ;
DROP TABLE g_location;





CREATE TABLE g_location
(
    location_key    NUMBER          NOT NULL, 
    s_where    VARCHAR2(40)    NOT NULL, 
    d_where     VARCHAR2(40)    NOT NULL, 
    CONSTRAINT G_LOCATION_PK PRIMARY KEY (location_key)
);




CREATE SEQUENCE g_location_SEQ
START WITH 1
INCREMENT BY 1;
insert into g_location values(0,'		','		');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','		');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	종로구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	중구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	용산구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	성동구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	광진구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	동대문구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	중랑구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	성북구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	강북구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	도봉구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	노원구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	은평구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	서대문구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	마포구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	양천구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	강서구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	구로구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	금천구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	영등포구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	동작구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	관악구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	서초구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	강남구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	송파구	');
insert into g_location values(g_location_SEQ.nextval,'	서울특별시	','	강동구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','		');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	중구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	서구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	동구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	영도구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	부산진구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	동래구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	남구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	북구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	해운대구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	사하구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	금정구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	강서구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	연제구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	수영구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	사상구	');
insert into g_location values(g_location_SEQ.nextval,'	부산광역시	','	기장군	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','		');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	중구	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	동구	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	서구	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	남구	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	북구	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	수성구	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	달서구	');
insert into g_location values(g_location_SEQ.nextval,'	대구광역시	','	달성군	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','		');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	중구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	동구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	미추홀구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	연수구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	남동구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	부평구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	계양구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	서구	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	강화군	');
insert into g_location values(g_location_SEQ.nextval,'	인천광역시	','	옹진군	');
insert into g_location values(g_location_SEQ.nextval,'	광주광역시	','		');
insert into g_location values(g_location_SEQ.nextval,'	광주광역시	','	동구	');
insert into g_location values(g_location_SEQ.nextval,'	광주광역시	','	서구	');
insert into g_location values(g_location_SEQ.nextval,'	광주광역시	','	남구	');
insert into g_location values(g_location_SEQ.nextval,'	광주광역시	','	북구	');
insert into g_location values(g_location_SEQ.nextval,'	광주광역시	','	광산구	');
insert into g_location values(g_location_SEQ.nextval,'	대전광역시	','		');
insert into g_location values(g_location_SEQ.nextval,'	대전광역시	','	동구	');
insert into g_location values(g_location_SEQ.nextval,'	대전광역시	','	중구	');
insert into g_location values(g_location_SEQ.nextval,'	대전광역시	','	서구	');
insert into g_location values(g_location_SEQ.nextval,'	대전광역시	','	유성구	');
insert into g_location values(g_location_SEQ.nextval,'	대전광역시	','	대덕구	');
insert into g_location values(g_location_SEQ.nextval,'	울산광역시	','		');
insert into g_location values(g_location_SEQ.nextval,'	울산광역시	','	중구	');
insert into g_location values(g_location_SEQ.nextval,'	울산광역시	','	남구	');
insert into g_location values(g_location_SEQ.nextval,'	울산광역시	','	동구	');
insert into g_location values(g_location_SEQ.nextval,'	울산광역시	','	북구	');
insert into g_location values(g_location_SEQ.nextval,'	울산광역시	','	울주군	');
insert into g_location values(g_location_SEQ.nextval,'	세종특별자치시	','		');
insert into g_location values(g_location_SEQ.nextval,'	세종특별자치시	','	세종특별자치시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','		');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	수원시장안구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	수원시권선구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	수원시팔달구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	수원시영통구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	성남시수정구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	성남시중원구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	성남시분당구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	의정부시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	안양시만안구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	안양시동안구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	부천시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	광명시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	평택시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	동두천시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	안산시상록구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	안산시단원구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	고양시덕양구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	고양시일산동구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	고양시일산서구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	과천시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	구리시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	남양주시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	오산시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	시흥시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	군포시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	의왕시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	하남시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	용인시처인구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	용인시기흥구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	용인시수지구	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	파주시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	이천시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	안성시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	김포시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	화성시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	광주시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	양주시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	포천시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	여주시	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	연천군	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	가평군	');
insert into g_location values(g_location_SEQ.nextval,'	경기도	','	양평군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','		');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	춘천시	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	원주시	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	강릉시	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	동해시	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	태백시	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	속초시	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	삼척시	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	홍천군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	횡성군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	영월군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	평창군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	정선군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	철원군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	화천군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	양구군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	인제군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	고성군	');
insert into g_location values(g_location_SEQ.nextval,'	강원도	','	양양군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','		');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	청주시상당구	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	청주시서원구	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	청주시흥덕구	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	청주시청원구	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	충주시	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	제천시	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	보은군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	옥천군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	영동군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	증평군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	진천군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	괴산군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	음성군	');
insert into g_location values(g_location_SEQ.nextval,'	충청북도	','	단양군	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','		');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	천안시동남구	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	천안시서북구	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	공주시	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	보령시	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	아산시	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	서산시	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	논산시	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	계룡시	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	당진시	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	금산군	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	부여군	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	서천군	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	청양군	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	홍성군	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	예산군	');
insert into g_location values(g_location_SEQ.nextval,'	충청남도	','	태안군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','		');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	전주시완산구	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	전주시덕진구	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	군산시	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	익산시	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	정읍시	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	남원시	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	김제시	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	완주군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	진안군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	무주군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	장수군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	임실군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	순창군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	고창군	');
insert into g_location values(g_location_SEQ.nextval,'	전라북도	','	부안군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','		');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	목포시	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	여수시	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	순천시	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	나주시	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	광양시	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	담양군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	곡성군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	구례군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	고흥군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	보성군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	화순군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	장흥군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	강진군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	해남군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	영암군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	무안군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	함평군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	영광군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	장성군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	완도군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	진도군	');
insert into g_location values(g_location_SEQ.nextval,'	전라남도	','	신안군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','		');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	포항시남구	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	포항시북구	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	경주시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	김천시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	안동시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	구미시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	영주시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	영천시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	상주시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	문경시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	경산시	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	군위군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	의성군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	청송군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	영양군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	영덕군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	청도군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	고령군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	성주군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	칠곡군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	예천군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	봉화군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	울진군	');
insert into g_location values(g_location_SEQ.nextval,'	경상북도	','	울릉군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','		');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	창원시 의창구	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	창원시 성산구	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	창원시 마산합포구	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	창원시 마산회원구	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	창원시 진해구	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	진주시	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	통영시	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	사천시	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	김해시	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	밀양시	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	거제시	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	양산시	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	의령군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	함안군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	창녕군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	고성군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	남해군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	하동군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	산청군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	함양군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	거창군	');
insert into g_location values(g_location_SEQ.nextval,'	경상남도	','	합천군	');
insert into g_location values(g_location_SEQ.nextval,'	제주특별자치도	','		');
insert into g_location values(g_location_SEQ.nextval,'	제주특별자치도	','	제주시	');
insert into g_location values(g_location_SEQ.nextval,'	제주특별자치도	','	서귀포시	');







CREATE TABLE g_age
(
    age_key      NUMBER    NOT NULL, 
    age_value    NUMBER    NOT NULL, 
    CONSTRAINT G_AGE_PK PRIMARY KEY (age_key)
);

insert into g_age values(0,0);
insert into g_age values(1,10);
insert into g_age values(2,20);
insert into g_age values(3,30);
insert into g_age values(4,40);
insert into g_age values(5,50);
insert into g_age values(6,60);




CREATE TABLE g_category
(
    d_category_key     NUMBER          NOT NULL, 
    d_category_name    VARCHAR2(50)    NOT NULL, 
    CONSTRAINT G_CATEGORY_PK PRIMARY KEY (d_category_key)
);


CREATE SEQUENCE g_category_SEQ
START WITH 1
INCREMENT BY 1;


insert into g_category values(g_category_SEQ.nextval,'게임');
insert into g_category values(g_category_SEQ.nextval,'연예/방송');
insert into g_category values(g_category_SEQ.nextval,'스포츠');
insert into g_category values(g_category_SEQ.nextval,'교육/금융/IT');
insert into g_category values(g_category_SEQ.nextval,'여행/음식/생물');
insert into g_category values(g_category_SEQ.nextval,'취미/생활');




CREATE TABLE g_category2
(
    s_category_key     NUMBER          NOT NULL, 
    d_category_key     NUMBER          NOT NULL, 
    s_category_name    VARCHAR2(50)    NOT NULL, 
    CONSTRAINT G_CATEGORY2_PK PRIMARY KEY (s_category_key)
);


CREATE SEQUENCE g_category2_SEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE g_category2
    ADD CONSTRAINT FK_g_category2_d_category_key_ FOREIGN KEY (d_category_key)
        REFERENCES g_category (d_category_key);


insert into g_category2 values(g_category2_SEQ.nextval,1,'리그오브레전드');
insert into g_category2 values(g_category2_SEQ.nextval,1,'오버워치');
insert into g_category2 values(g_category2_SEQ.nextval,1,'바람의나라');
insert into g_category2 values(g_category2_SEQ.nextval,1,'카트라이더');
insert into g_category2 values(g_category2_SEQ.nextval,1,'테라');
insert into g_category2 values(g_category2_SEQ.nextval,1,'리니지');



insert into g_category2 values(g_category2_SEQ.nextval,2,'트와이스');
insert into g_category2 values(g_category2_SEQ.nextval,2,'태연');
insert into g_category2 values(g_category2_SEQ.nextval,2,'소녀시대');
insert into g_category2 values(g_category2_SEQ.nextval,2,'아이돌학교');
insert into g_category2 values(g_category2_SEQ.nextval,2,'스토브리그');
insert into g_category2 values(g_category2_SEQ.nextval,2,'도꺠비');



insert into g_category2 values(g_category2_SEQ.nextval,3,'야구');
insert into g_category2 values(g_category2_SEQ.nextval,3,'축구');
insert into g_category2 values(g_category2_SEQ.nextval,3,'자전거');
insert into g_category2 values(g_category2_SEQ.nextval,3,'수영');
insert into g_category2 values(g_category2_SEQ.nextval,3,'스키');
insert into g_category2 values(g_category2_SEQ.nextval,3,'볼링');



insert into g_category2 values(g_category2_SEQ.nextval,4,'공무원');
insert into g_category2 values(g_category2_SEQ.nextval,4,'편입');
insert into g_category2 values(g_category2_SEQ.nextval,4,'자격증');
insert into g_category2 values(g_category2_SEQ.nextval,4,'토익');
insert into g_category2 values(g_category2_SEQ.nextval,4,'증권');
insert into g_category2 values(g_category2_SEQ.nextval,4,'노트북');



insert into g_category2 values(g_category2_SEQ.nextval,5,'제주도');
insert into g_category2 values(g_category2_SEQ.nextval,5,'일본');
insert into g_category2 values(g_category2_SEQ.nextval,5,'중국');
insert into g_category2 values(g_category2_SEQ.nextval,5,'미국');
insert into g_category2 values(g_category2_SEQ.nextval,5,'치킨');
insert into g_category2 values(g_category2_SEQ.nextval,5,'피자');




insert into g_category2 values(g_category2_SEQ.nextval,6,'유투브');
insert into g_category2 values(g_category2_SEQ.nextval,6,'웹툰');
insert into g_category2 values(g_category2_SEQ.nextval,6,'만화');
insert into g_category2 values(g_category2_SEQ.nextval,6,'관상');
insert into g_category2 values(g_category2_SEQ.nextval,6,'사주');







-- g_location Table Create SQL
CREATE TABLE g_users
(
    user_key             NUMBER            NOT NULL, 
    user_id              VARCHAR2(20)      NOT NULL, 
    user_password        VARCHAR2(30)      NOT NULL, 
    user_image_file      VARCHAR2(100)     , 
    user_image_origin    VARCHAR2(100)     , 
    user_age             NUMBER            NOT NULL, 
    user_location        NUMBER            NOT NULL, 
    gender               CHAR(1)           NOT NULL, 
    user_email           VARCHAR2(50)      NOT NULL, 
    user_join_date       DATE              NOT NULL, 
    user_option_admin    CHAR(1)           NOT NULL, 
    user_option_group    CHAR(1)           NOT NULL, 
    user_status          NUMBER           NOT NULL, 
    user_status_code     NVARCHAR2(200)    NULL, 
    CONSTRAINT G_USERS_PK PRIMARY KEY (user_key)
);



ALTER TABLE g_users
    ADD CONSTRAINT FK_g_users_user_age_g_age_age_ FOREIGN KEY (user_age)
        REFERENCES g_age (age_key);
        
        
        
ALTER TABLE g_users
    ADD CONSTRAINT FK_g_users_user_location_g_loc FOREIGN KEY (user_location)
        REFERENCES g_location (location_key);
        


CREATE SEQUENCE g_users_SEQ
START WITH 1
INCREMENT BY 1;



    
insert into  g_users values(g_users_SEQ.nextval,'duswl13','1234',null,null,2,19,'M','plain64@naver.com',sysdate,'N','Y',0,null);
insert into  g_users values(g_users_SEQ.nextval,'admin','1234',null,null,3,20,'F','admin@naver.com',sysdate,'Y','N',0,null);
insert into  g_users values(g_users_SEQ.nextval,'aaaa','1234',null,null,1,34,'M','aaaa@naver.com',sysdate,'N','N',0,null);
insert into  g_users values(g_users_SEQ.nextval,'bbbb','1234',null,null,2,18,'F','bbbb@naver.com',sysdate,'N','N',0,null);
insert into  g_users values(g_users_SEQ.nextval,'cccc','1234',null,null,5,3,'M','cccc@naver.com',sysdate,'N','N',0,null);

insert into  g_users values(g_users_SEQ.nextval,'dddd','1234',null,null,1,21,'F','dddd@naver.com',sysdate,'N','N',0,null);
insert into  g_users values(g_users_SEQ.nextval,'eeee','1234',null,null,1,19,'M','eeee@naver.com',sysdate,'N','N',0,null);
insert into  g_users values(g_users_SEQ.nextval,'ffff','1234',null,null,2,22,'F','ffff@naver.com',sysdate,'N','N',0,null);
insert into  g_users values(g_users_SEQ.nextval,'gggg','1234',null,null,3,19,'M','gggg@naver.com',sysdate,'N','N',0,null);


CREATE TABLE g_group
(
    group_key          NUMBER           NOT NULL, 
    group_name         VARCHAR2(40)     NOT NULL, 
    user_key           NUMBER           NOT NULL, 
    age_key            NUMBER           NOT NULL, 
    where_key          NUMBER           NOT NULL, 
    category_key       NUMBER           NOT NULL, 
    group_info         VARCHAR2(100)    NOT NULL, 
    group_d_file       VARCHAR2(100)    NOT NULL, 
    group_id_origin    VARCHAR2(100)    NOT NULL, 
    group_c_file       VARCHAR2(100)    NOT NULL, 
    group_c_origin     VARCHAR2(100)    NOT NULL, 
    group_private      CHAR(1)          NOT NULL, 
    group_type         CHAR(1)          NOT NULL, 
    CONSTRAINT G_GROUP_PK PRIMARY KEY (group_key)
);




CREATE SEQUENCE g_group_SEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE g_group
    ADD CONSTRAINT FK_g_group_user_key_g_users_us FOREIGN KEY (user_key)
        REFERENCES g_users (user_key);


ALTER TABLE g_group
    ADD CONSTRAINT FK_g_group_age_key_g_age_age_k FOREIGN KEY (age_key)
        REFERENCES g_age (age_key);


ALTER TABLE g_group
    ADD CONSTRAINT FK_g_group_category_key_g_cate FOREIGN KEY (category_key)
        REFERENCES g_category2 (s_category_key);

ALTER TABLE g_group
    ADD CONSTRAINT FK_g_group_where_key_g_locatio FOREIGN KEY (where_key)
        REFERENCES g_location (location_key);
        
        
        
        
        

    
insert into g_group values(1, '다이아롤팟',2,0,0,1,'다이아 이하는 승인 거부요','default.png','default.png','default_c.png','default_c.png','N','N');

insert into g_group values(2, '저녁롤모임',2,1,0,1,'티어상관없이하실분','default.png','default.png','default_c.png','default_c.png','N','N');




CREATE TABLE g_group_member
(

    group_key         NUMBER          NOT NULL, 
    user_key          NUMBER          NOT NULL, 
    group_nickname    VARCHAR2(30)    NOT NULL, 
    user_grade        NUMBER          NOT NULL, 
    CONSTRAINT G_GROUP_MEMBER_PK PRIMARY KEY (group_key,user_key)
);

/*
    유저 등급 :
                -1: 가입승인전
                0:  회원
                1:  관리자
                
*/


ALTER TABLE g_group_member
    ADD CONSTRAINT FK_g_group_member_group_key_g_ FOREIGN KEY (group_key)
        REFERENCES g_group (group_key);


ALTER TABLE g_group_member
    ADD CONSTRAINT FK_g_group_member_user_key_g_u FOREIGN KEY (user_key)
        REFERENCES g_users (user_key);


insert into g_group_member values(1,2,'연지야',1);
insert into g_group_member values(1,4,'에이',0);
insert into g_group_member values(1,5,'삐삐',0);


insert into g_group_member values(2,2,'연지야',1);
insert into g_group_member values(2,6,'디디',0);
insert into g_group_member values(2,7,'이이',0);








-- g_location Table Create SQL
CREATE TABLE g_group_board
(
    board_key         NUMBER          NOT NULL, 
    group_key         NUMBER          NOT NULL, 
    board_name        VARCHAR2(50)    NOT NULL, 
    board_vote        CHAR(1)         NOT NULL, 
    board_calendar    CHAR(1)         NOT NULL, 
    board_ladder      CHAR(1)         NOT NULL, 
    board_notice      CHAR(1)         NOT NULL, 
    board_map         CHAR(1)         NOT NULL, 
    board_view        CHAR(1)         NOT NULL, 
    CONSTRAINT G_GROUP_BOARD_PK PRIMARY KEY (board_key)
);




CREATE SEQUENCE g_group_board_SEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE g_group_board
    ADD CONSTRAINT FK_g_group_board_group_key_g_g FOREIGN KEY (group_key)
        REFERENCES g_group (group_key);



    
/*그룹 생성 시 같이 추가되어야함*/
insert into g_group_board values(1,1,'공지사항','Y','Y','Y','Y','Y','Y');
insert into g_group_board values(2,2,'공지사항','Y','Y','Y','Y','Y','Y');



insert into g_group_board values(3,1,'팟일정','Y','Y','Y','Y','Y','Y');




CREATE TABLE post
(
    post_key              NUMBER            NOT NULL, 
    post_title            VARCHAR2(100)     NULL, 
    post_content          VARCHAR2(2000)    NULL, 
    post_date             DATE              NOT NULL, 
    user_key              NUMBER            NOT NULL,
    group_key             NUMBER            NOT NULL, 
    post_option_reply     CHAR(1)           NOT NULL, 
    post_option_search    CHAR(1)           NOT NULL, 
    board_key             NUMBER            NOT NULL, 
    post_readcount        NUMBER            NOT NULL, 
    PRIMARY KEY(post_key),
   FOREIGN KEY(user_key,group_key) REFERENCES g_group_member(user_key,group_key), /*아 이걸 이렇게 하면 되는구나...*/
  FOREIGN KEY(board_key) REFERENCES g_group_board(board_key)
);




CREATE SEQUENCE post_SEQ
START WITH 1
INCREMENT BY 1;




insert into post values(post_SEQ.nextval, '가가가가가가가','가가가가가가',sysdate, 2,1,'Y','Y',3,0);

insert into post values(post_SEQ.nextval, '야 이거 이상해','이상함',sysdate, 5,1,'Y','Y',3,0);

insert into post values(post_SEQ.nextval, '오늘 저녁 뭐먹지?','뭐먹냐',sysdate, 4,1,'Y','Y',3,0);


insert into post values(post_SEQ.nextval, '오늘 모임요','8시 5인팟 모집요',sysdate, 2,1,'Y','Y',1,0);






CREATE TABLE calendar
(
    c_start_date             DATE      NOT NULL, 
    c_end_date               DATE      NOT NULL, 
    c_money                  NUMBER    NOT NULL, 
    post_key                 NUMBER    NOT NULL, 
    group_location           NUMBER    NOT NULL, 
    group_location_detail    NUMBER    NULL, 
    CONSTRAINT CALENDAR_PK PRIMARY KEY (post_key)
);




ALTER TABLE calendar
    ADD CONSTRAINT FK_calendar_post_key_post_post FOREIGN KEY (post_key)
        REFERENCES post (post_key);

ALTER TABLE calendar
    ADD CONSTRAINT FK_calendar_group_location_g_l FOREIGN KEY (group_location)
        REFERENCES g_location (location_key);
        
        
insert into calendar values(sysdate, sysdate, 0, 4, 0, null);  








-- g_location Table Create SQL
CREATE TABLE vote
(
    vote_key         NUMBER           NOT NULL, 
    post_key         NUMBER           NOT NULL, 
    vote_content1    VARCHAR2(200)    NOT NULL, 
    vote_content2    VARCHAR2(200)    NOT NULL, 
    vote_content3    VARCHAR2(200)    NOT NULL, 
    vote_content4    VARCHAR2(200)    NOT NULL, 
    vote_content5    VARCHAR2(200)    NOT NULL, 
    CONSTRAINT VOTE_PK PRIMARY KEY (vote_key)
);


CREATE SEQUENCE vote_SEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE vote
    ADD CONSTRAINT FK_vote_post_key_post_post_key FOREIGN KEY (post_key)
        REFERENCES post (post_key);
        
        
    
-- g_location Table Create SQL
CREATE TABLE g_user_category
(
    user_key        NUMBER    NOT NULL, 
    category_key    NUMBER    NOT NULL
);



ALTER TABLE g_user_category
    ADD CONSTRAINT FK_g_user_category_user_key_g_ FOREIGN KEY (user_key)
        REFERENCES g_users (user_key);

ALTER TABLE g_user_category
    ADD CONSTRAINT FK_g_user_category_category_ke FOREIGN KEY (category_key)
        REFERENCES g_category2 (s_category_key);


insert into g_user_category values(2, 1);

insert into g_user_category values(2, 3);

insert into g_user_category values(2, 5);




-- g_location Table Create SQL
CREATE TABLE user_message
(
    mg_key        NUMBER           NOT NULL, 
    mg_sort       CHAR(1)          NOT NULL, 
    mg_content    VARCHAR2(200)    NOT NULL, 
    mg_date       DATE             NOT NULL, 
    mg_receive    NUMBER           NOT NULL, 
    mg_send       NUMBER           NOT NULL, 
    CONSTRAINT USER_MESSAGE_PK PRIMARY KEY (mg_key)
);


        
CREATE SEQUENCE user_message_SEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE user_message
    ADD CONSTRAINT FK_user_message_mg_send_g_user FOREIGN KEY (mg_send)
        REFERENCES g_users (user_key);

ALTER TABLE user_message
    ADD CONSTRAINT FK_user_message_mg_receive_g_u FOREIGN KEY (mg_receive)
        REFERENCES g_users (user_key);
        

insert into user_message values(user_message_SEQ.nextval, '0','2020년 01월 15일 점검 예약있습니다.',sysdate,3, 2 );



-- g_location Table Create SQL
CREATE TABLE pr_board
(
    pr_key        NUMBER           NOT NULL, 
    user_key      NUMBER           NOT NULL, 
    group_key     NUMBER           NOT NULL, 
    content       VARCHAR2(200)    NOT NULL, 
    date_write    DATE             NOT NULL, 
    CONSTRAINT PR_BOARD_PK PRIMARY KEY (pr_key)
);



CREATE SEQUENCE pr_board_SEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE pr_board
    ADD CONSTRAINT FK_pr_board_user_key_g_group_m FOREIGN KEY (user_key, group_key)
        REFERENCES g_group_member (user_key, group_key);
        


insert into pr_board values(pr_board_SEQ.nextval, 2, 1, '롤 할 사람',sysdate );



-- g_location Table Create SQL
CREATE TABLE calendar_member
(
    user_key     NUMBER    NOT NULL, 
    post_key     NUMBER    NOT NULL, 
    group_key    NUMBER    NOT NULL, 
    CONSTRAINT CALENDAR_MEMBER_PK PRIMARY KEY (user_key, post_key, group_key)
);



ALTER TABLE calendar_member
    ADD CONSTRAINT FK_calendar_member_post_key_ca FOREIGN KEY (post_key)
        REFERENCES calendar (post_key);

ALTER TABLE calendar_member
    ADD CONSTRAINT FK_calendar_member_user_key_g_ FOREIGN KEY (user_key, group_key)
        REFERENCES g_group_member (user_key, group_key);


insert into calendar_member values(2, 4,1);


-- g_location Table Create SQL
CREATE TABLE post_like
(
    post_key     NUMBER    NOT NULL, 
    user_key     NUMBER    NOT NULL, 
    group_key    NUMBER    NOT NULL, 
    CONSTRAINT POST_LIKE_PK PRIMARY KEY (post_key, user_key, group_key)
);



ALTER TABLE post_like
    ADD CONSTRAINT FK_post_like_post_key_post_pos FOREIGN KEY (post_key)
        REFERENCES post (post_key);

ALTER TABLE post_like
    ADD CONSTRAINT FK_post_like_user_key_g_group_ FOREIGN KEY (user_key, group_key)
        REFERENCES g_group_member (user_key, group_key);






     
-- g_location Table Create SQL
CREATE TABLE maps
(
    maps_key          NUMBER           NOT NULL, 
    post_key          NUMBER           NOT NULL, 
    lat               NUMBER(5,8)      NOT NULL, 
    lng               NUMBER(5,8)      NOT NULL, 
    marker_name       VARCHAR2(100)    NULL, 
    marker_content    VARCHAR2(100)    NULL, 
    maps_seq          NUMBER           NOT NULL, 
    CONSTRAINT MAPS_PK PRIMARY KEY (maps_key)
);



ALTER TABLE maps
    ADD CONSTRAINT FK_maps_post_key_post_post_key FOREIGN KEY (post_key)
        REFERENCES post (post_key);
        
        
        
-- g_location Table Create SQL
CREATE TABLE ladder
(
    post_key          NUMBER           NOT NULL, 
    ladder_key        NUMBER           NOT NULL, 
    ladder_content    VARCHAR2(100)    NOT NULL, 
    CONSTRAINT LADDER_PK PRIMARY KEY (ladder_key)
);


CREATE SEQUENCE ladder_SEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE ladder
    ADD CONSTRAINT FK_ladder_post_key_post_post_k FOREIGN KEY (post_key)
        REFERENCES post (post_key);
        
        
-- g_location Table Create SQL
CREATE TABLE g_comment
(
    commnet_num        NUMBER           NOT NULL, 
    post_key           NUMBER           NOT NULL, 
    user_key           NUMBER           NOT NULL, 
    comment_content    VARCHAR2(500)    NOT NULL, 
    commemt_re_ref     NUMBER           NOT NULL, 
    comment_re_lev     NUMBER           NOT NULL, 
    comment_re_seq     NUMBER           NOT NULL, 
    comment_date       DATE             NOT NULL, 
    group_key          NUMBER           NOT NULL, 
    CONSTRAINT G_COMMENT_PK PRIMARY KEY (commnet_num)
);

CREATE SEQUENCE g_comment_SEQ
START WITH 1
INCREMENT BY 1;       
        
        
        
        
ALTER TABLE g_comment
    ADD CONSTRAINT FK_g_comment_post_key_post_pos FOREIGN KEY (post_key)
        REFERENCES post (post_key);
ALTER TABLE g_comment
    ADD CONSTRAINT FK_g_comment_user_key_g_group_ FOREIGN KEY (user_key, group_key)
        REFERENCES g_group_member (user_key, group_key);
        
        
        
-- g_location Table Create SQL
CREATE TABLE vote_membber
(
    vote_member_key    NUMBER    NOT NULL, 
    user_key           NUMBER    NOT NULL, 
    vote_key           NUMBER    NOT NULL, 
    check_vote         NUMBER    NOT NULL, 
    group_key          NUMBER    NOT NULL, 
    CONSTRAINT VOTE_MEMBBER_PK PRIMARY KEY (vote_member_key)
);

CREATE SEQUENCE vote_membber_SEQ
START WITH 1
INCREMENT BY 1;




ALTER TABLE vote_membber
    ADD CONSTRAINT FK_vote_membber_vote_key_vote_ FOREIGN KEY (vote_key)
        REFERENCES vote (vote_key);

ALTER TABLE vote_membber
    ADD CONSTRAINT FK_vote_membber_user_key_g_gro FOREIGN KEY (user_key, group_key)
        REFERENCES g_group_member (user_key, group_key);
        
   
        
-- g_location Table Create SQL
CREATE TABLE b_file
(
    file_key         NUMBER           NOT NULL, 
    file_original    VARCHAR2(100)    NOT NULL, 
    file_name        VARCHAR2(100)    NOT NULL, 
    post_key         NUMBER           NOT NULL, 
    CONSTRAINT B_FILE_PK PRIMARY KEY (file_key)
);



CREATE SEQUENCE b_file_SEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE b_file
    ADD CONSTRAINT FK_b_file_post_key_post_post_k FOREIGN KEY (post_key)
        REFERENCES post (post_key);
        
  


-- g_location Table Create SQL
CREATE TABLE user_police
(
    police_key           NUMBER     NOT NULL, 
    user_key             NUMBER     NOT NULL, 
    police_board_sort    CHAR(1)    NOT NULL, 
    police_number        NUMBER     NOT NULL, 
    police_sort          NUMBER     NOT NULL, 
    CONSTRAINT USER_POLICE_PK PRIMARY KEY (police_key)
);
      
      
      
CREATE SEQUENCE user_police_SEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE user_police
    ADD CONSTRAINT FK_user_police_user_key_g_user FOREIGN KEY (user_key)
        REFERENCES g_users (user_key);





CREATE TABLE user_like_group
(
    user_like_group_key    NUMBER    NOT NULL, 
    user_key               NUMBER    NOT NULL, 
    group_key              NUMBER    NOT NULL, 
    CONSTRAINT USER_LIKE_GROUP_PK PRIMARY KEY (user_like_group_key)
);


CREATE SEQUENCE user_like_group_SEQ
START WITH 1
INCREMENT BY 1;




ALTER TABLE user_like_group
    ADD CONSTRAINT FK_user_like_group_user_key_g_ FOREIGN KEY (user_key)
        REFERENCES g_users (user_key);

ALTER TABLE user_like_group
    ADD CONSTRAINT FK_user_like_group_group_key_g FOREIGN KEY (group_key)
        REFERENCES g_group (group_key);