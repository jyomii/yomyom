

DROP TABLE requestCategory;

-- glocation Table Create SQL
DROP TABLE userlikegroup;
DROP SEQUENCE userlikegroupSEQ;

DROP TABLE userpolice;
DROP SEQUENCE userpoliceSEQ;

DROP TABLE bfile;
DROP SEQUENCE bfileSEQ;
        
DROP TABLE votemembber;
DROP SEQUENCE votemembberSEQ;
 
 DROP TABLE gcomment;
DROP SEQUENCE gcommentSEQ;

 DROP TABLE ladder;
DROP SEQUENCE ladderSEQ;      
        
 
 DROP TABLE maps;
 DROP TABLE postlike;

 DROP TABLE calendarmember;

 DROP TABLE prboard;
DROP SEQUENCE prboardSEQ;

 DROP TABLE usermessage;
DROP SEQUENCE usermessageSEQ;


    DROP TABLE gusercategory;     

DROP TABLE vote;
DROP SEQUENCE voteSEQ;


 DROP TABLE calendar;

DROP TABLE POST;
DROP  SEQUENCE postSEQ;

DROP TABLE ggroupboard;
DROP  SEQUENCE ggroupboardSEQ;

DROP TABLE ggroupmember;

DROP TABLE ggroup;
DROP SEQUENCE ggroupSEQ;

DROP TABLE gusers;
DROP SEQUENCE gusersSEQ;

DROP TABLE gcategory2;
DROP SEQUENCE gcategory2SEQ;

DROP TABLE gcategory;
DROP SEQUENCE gcategorySEQ;

DROP TABLE gage;
DROP SEQUENCE glocationSEQ;
DROP TABLE glocation;



CREATE TABLE glocation
(
    locationkey    NUMBER          NOT NULL, 
    swhere    VARCHAR2(40)    NOT NULL, 
    dwhere     VARCHAR2(40)    NOT NULL, 
    CONSTRAINT GLOCATIONPK PRIMARY KEY (locationkey)
);





CREATE SEQUENCE glocationSEQ
START WITH 1
INCREMENT BY 1;
insert into glocation values(0,'		','		');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','		');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	종로구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	중구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	용산구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	성동구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	광진구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	동대문구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	중랑구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	성북구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	강북구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	도봉구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	노원구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	은평구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	서대문구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	마포구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	양천구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	강서구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	구로구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	금천구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	영등포구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	동작구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	관악구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	서초구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	강남구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	송파구	');
insert into glocation values(glocationSEQ.nextval,'	서울특별시	','	강동구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','		');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	중구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	서구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	동구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	영도구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	부산진구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	동래구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	남구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	북구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	해운대구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	사하구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	금정구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	강서구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	연제구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	수영구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	사상구	');
insert into glocation values(glocationSEQ.nextval,'	부산광역시	','	기장군	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','		');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	중구	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	동구	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	서구	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	남구	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	북구	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	수성구	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	달서구	');
insert into glocation values(glocationSEQ.nextval,'	대구광역시	','	달성군	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','		');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	중구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	동구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	미추홀구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	연수구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	남동구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	부평구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	계양구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	서구	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	강화군	');
insert into glocation values(glocationSEQ.nextval,'	인천광역시	','	옹진군	');
insert into glocation values(glocationSEQ.nextval,'	광주광역시	','		');
insert into glocation values(glocationSEQ.nextval,'	광주광역시	','	동구	');
insert into glocation values(glocationSEQ.nextval,'	광주광역시	','	서구	');
insert into glocation values(glocationSEQ.nextval,'	광주광역시	','	남구	');
insert into glocation values(glocationSEQ.nextval,'	광주광역시	','	북구	');
insert into glocation values(glocationSEQ.nextval,'	광주광역시	','	광산구	');
insert into glocation values(glocationSEQ.nextval,'	대전광역시	','		');
insert into glocation values(glocationSEQ.nextval,'	대전광역시	','	동구	');
insert into glocation values(glocationSEQ.nextval,'	대전광역시	','	중구	');
insert into glocation values(glocationSEQ.nextval,'	대전광역시	','	서구	');
insert into glocation values(glocationSEQ.nextval,'	대전광역시	','	유성구	');
insert into glocation values(glocationSEQ.nextval,'	대전광역시	','	대덕구	');
insert into glocation values(glocationSEQ.nextval,'	울산광역시	','		');
insert into glocation values(glocationSEQ.nextval,'	울산광역시	','	중구	');
insert into glocation values(glocationSEQ.nextval,'	울산광역시	','	남구	');
insert into glocation values(glocationSEQ.nextval,'	울산광역시	','	동구	');
insert into glocation values(glocationSEQ.nextval,'	울산광역시	','	북구	');
insert into glocation values(glocationSEQ.nextval,'	울산광역시	','	울주군	');
insert into glocation values(glocationSEQ.nextval,'	세종특별자치시	','		');
insert into glocation values(glocationSEQ.nextval,'	세종특별자치시	','	세종특별자치시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','		');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	수원시장안구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	수원시권선구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	수원시팔달구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	수원시영통구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	성남시수정구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	성남시중원구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	성남시분당구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	의정부시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	안양시만안구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	안양시동안구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	부천시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	광명시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	평택시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	동두천시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	안산시상록구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	안산시단원구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	고양시덕양구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	고양시일산동구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	고양시일산서구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	과천시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	구리시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	남양주시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	오산시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	시흥시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	군포시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	의왕시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	하남시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	용인시처인구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	용인시기흥구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	용인시수지구	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	파주시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	이천시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	안성시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	김포시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	화성시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	광주시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	양주시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	포천시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	여주시	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	연천군	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	가평군	');
insert into glocation values(glocationSEQ.nextval,'	경기도	','	양평군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','		');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	춘천시	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	원주시	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	강릉시	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	동해시	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	태백시	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	속초시	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	삼척시	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	홍천군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	횡성군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	영월군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	평창군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	정선군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	철원군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	화천군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	양구군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	인제군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	고성군	');
insert into glocation values(glocationSEQ.nextval,'	강원도	','	양양군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','		');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	청주시상당구	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	청주시서원구	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	청주시흥덕구	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	청주시청원구	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	충주시	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	제천시	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	보은군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	옥천군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	영동군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	증평군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	진천군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	괴산군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	음성군	');
insert into glocation values(glocationSEQ.nextval,'	충청북도	','	단양군	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','		');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	천안시동남구	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	천안시서북구	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	공주시	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	보령시	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	아산시	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	서산시	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	논산시	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	계룡시	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	당진시	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	금산군	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	부여군	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	서천군	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	청양군	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	홍성군	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	예산군	');
insert into glocation values(glocationSEQ.nextval,'	충청남도	','	태안군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','		');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	전주시완산구	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	전주시덕진구	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	군산시	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	익산시	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	정읍시	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	남원시	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	김제시	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	완주군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	진안군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	무주군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	장수군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	임실군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	순창군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	고창군	');
insert into glocation values(glocationSEQ.nextval,'	전라북도	','	부안군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','		');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	목포시	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	여수시	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	순천시	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	나주시	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	광양시	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	담양군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	곡성군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	구례군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	고흥군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	보성군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	화순군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	장흥군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	강진군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	해남군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	영암군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	무안군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	함평군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	영광군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	장성군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	완도군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	진도군	');
insert into glocation values(glocationSEQ.nextval,'	전라남도	','	신안군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','		');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	포항시남구	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	포항시북구	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	경주시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	김천시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	안동시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	구미시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	영주시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	영천시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	상주시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	문경시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	경산시	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	군위군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	의성군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	청송군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	영양군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	영덕군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	청도군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	고령군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	성주군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	칠곡군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	예천군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	봉화군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	울진군	');
insert into glocation values(glocationSEQ.nextval,'	경상북도	','	울릉군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','		');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	창원시 의창구	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	창원시 성산구	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	창원시 마산합포구	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	창원시 마산회원구	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	창원시 진해구	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	진주시	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	통영시	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	사천시	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	김해시	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	밀양시	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	거제시	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	양산시	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	의령군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	함안군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	창녕군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	고성군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	남해군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	하동군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	산청군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	함양군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	거창군	');
insert into glocation values(glocationSEQ.nextval,'	경상남도	','	합천군	');
insert into glocation values(glocationSEQ.nextval,'	제주특별자치도	','		');
insert into glocation values(glocationSEQ.nextval,'	제주특별자치도	','	제주시	');
insert into glocation values(glocationSEQ.nextval,'	제주특별자치도	','	서귀포시	');







CREATE TABLE gage
(
    agekey      NUMBER    NOT NULL, 
    agevalue    NUMBER    NOT NULL, 
    CONSTRAINT GAGEPK PRIMARY KEY (agekey)
);

insert into gage values(0,0);
insert into gage values(1,10);
insert into gage values(2,20);
insert into gage values(3,30);
insert into gage values(4,40);
insert into gage values(5,50);
insert into gage values(6,60);




CREATE TABLE gcategory
(
    dcategorykey     NUMBER          NOT NULL, 
    dcategoryname    VARCHAR2(50)    NOT NULL, 
    CONSTRAINT GCATEGORYPK PRIMARY KEY (dcategorykey)
);


CREATE SEQUENCE gcategorySEQ
START WITH 1
INCREMENT BY 1;


insert into gcategory values(gcategorySEQ.nextval,'게임');
insert into gcategory values(gcategorySEQ.nextval,'연예/방송');
insert into gcategory values(gcategorySEQ.nextval,'스포츠');
insert into gcategory values(gcategorySEQ.nextval,'교육/금융/IT');
insert into gcategory values(gcategorySEQ.nextval,'여행/음식/생물');
insert into gcategory values(gcategorySEQ.nextval,'취미/생활');




CREATE TABLE gcategory2
(
    scategorykey     NUMBER          NOT NULL, 
    dcategorykey     NUMBER          NOT NULL, 
    scategoryname    VARCHAR2(50)    NOT NULL, 
    CONSTRAINT GCATEGORY2PK PRIMARY KEY (scategorykey)
);


CREATE SEQUENCE gcategory2SEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE gcategory2
    ADD CONSTRAINT FKgcategory2dcategorykey FOREIGN KEY (dcategorykey)
        REFERENCES gcategory (dcategorykey);


insert into gcategory2 values(gcategory2SEQ.nextval,1,'리그오브레전드');
insert into gcategory2 values(gcategory2SEQ.nextval,1,'오버워치');
insert into gcategory2 values(gcategory2SEQ.nextval,1,'바람의나라');
insert into gcategory2 values(gcategory2SEQ.nextval,1,'카트라이더');
insert into gcategory2 values(gcategory2SEQ.nextval,1,'테라');
insert into gcategory2 values(gcategory2SEQ.nextval,1,'리니지');



insert into gcategory2 values(gcategory2SEQ.nextval,2,'트와이스');
insert into gcategory2 values(gcategory2SEQ.nextval,2,'태연');
insert into gcategory2 values(gcategory2SEQ.nextval,2,'소녀시대');
insert into gcategory2 values(gcategory2SEQ.nextval,2,'아이돌학교');
insert into gcategory2 values(gcategory2SEQ.nextval,2,'스토브리그');
insert into gcategory2 values(gcategory2SEQ.nextval,2,'도꺠비');



insert into gcategory2 values(gcategory2SEQ.nextval,3,'야구');
insert into gcategory2 values(gcategory2SEQ.nextval,3,'축구');
insert into gcategory2 values(gcategory2SEQ.nextval,3,'자전거');
insert into gcategory2 values(gcategory2SEQ.nextval,3,'수영');
insert into gcategory2 values(gcategory2SEQ.nextval,3,'스키');
insert into gcategory2 values(gcategory2SEQ.nextval,3,'볼링');



insert into gcategory2 values(gcategory2SEQ.nextval,4,'공무원');
insert into gcategory2 values(gcategory2SEQ.nextval,4,'편입');
insert into gcategory2 values(gcategory2SEQ.nextval,4,'자격증');
insert into gcategory2 values(gcategory2SEQ.nextval,4,'토익');
insert into gcategory2 values(gcategory2SEQ.nextval,4,'증권');
insert into gcategory2 values(gcategory2SEQ.nextval,4,'노트북');



insert into gcategory2 values(gcategory2SEQ.nextval,5,'제주도');
insert into gcategory2 values(gcategory2SEQ.nextval,5,'일본');
insert into gcategory2 values(gcategory2SEQ.nextval,5,'중국');
insert into gcategory2 values(gcategory2SEQ.nextval,5,'미국');
insert into gcategory2 values(gcategory2SEQ.nextval,5,'치킨');
insert into gcategory2 values(gcategory2SEQ.nextval,5,'피자');




insert into gcategory2 values(gcategory2SEQ.nextval,6,'유투브');
insert into gcategory2 values(gcategory2SEQ.nextval,6,'웹툰');
insert into gcategory2 values(gcategory2SEQ.nextval,6,'만화');
insert into gcategory2 values(gcategory2SEQ.nextval,6,'관상');
insert into gcategory2 values(gcategory2SEQ.nextval,6,'사주');







-- glocation Table Create SQL
CREATE TABLE gusers
(
    userkey             NUMBER            NOT NULL, 
    userid              VARCHAR2(20)      NOT NULL, 
    userpassword        VARCHAR2(30)      NOT NULL, 
    userimagefile      VARCHAR2(100)     , 
    userimageorigin    VARCHAR2(100)     , 
    userage             NUMBER            NOT NULL, 
    userlocation        NUMBER            NOT NULL, 
    gender               CHAR(1)           NOT NULL, 
    useremail           VARCHAR2(50)      NOT NULL, 
  
    userjoindate       DATE              NOT NULL, 
    useroptionadmin    CHAR(1)           NOT NULL, 
    useroptiongroup    CHAR(1)           NOT NULL, 
    userstatus          NUMBER           NOT NULL, 
    userstatuscode     DATE, 
    logintype 			number 			 NOT NULL,
    CONSTRAINT GUSERSPK PRIMARY KEY (userkey)
);



ALTER TABLE gusers
    ADD CONSTRAINT FKgusersuseragegageage FOREIGN KEY (userage)
        REFERENCES gage (agekey);
        
        
        
ALTER TABLE gusers
    ADD CONSTRAINT FKgusersuserlocationgloc FOREIGN KEY (userlocation)
        REFERENCES glocation (locationkey);
        

ALTER TABLE GUSERS MODIFY (USERPASSWORD VARCHAR2(100));
                                                 
CREATE SEQUENCE gusersSEQ
START WITH 1
INCREMENT BY 1;

/*관리자 계정*/ 
insert into gusers values(0, 'admin','$2a$10$DGdkEZGSwAL1tOEmaEEqB.qfcKQrREhIo4wwgIfD5LWi/eICNg5Ha',
NULL,NULL,2,1,'F','plain64@naver.com',sysdate,'Y','N',0,null,0);
                                          
                                                 

CREATE TABLE requestCategory
(
    requestKey    NUMBER          NOT NULL, 
    dname         VARCHAR2(50)    NOT NULL, 
    sname         VARCHAR2(50)    NULL, 
    userkey       NUMBER          NOT NULL, 
    CONSTRAINT REQUESTCATEGORY_PK PRIMARY KEY (requestKey)
);



ALTER TABLE requestCategory
    ADD CONSTRAINT FK_requestCategory_userkey_g_u FOREIGN KEY (userkey)
        REFERENCES gusers (userkey);
                                                 
                                                 
                                                 
                                                 
                                                 

CREATE TABLE ggroup
(
    groupkey          NUMBER           NOT NULL, 
    groupname         VARCHAR2(60)     NOT NULL, 
    userkey           NUMBER           NOT NULL, 
    agekey            NUMBER           NOT NULL, 
    wherekey          NUMBER           NOT NULL, 
    categorykey       NUMBER           NOT NULL, 
    groupinfo         VARCHAR2(300)    NOT NULL, 
    groupdfile       VARCHAR2(100)    NOT NULL, 
    groupidorigin    VARCHAR2(100)    NOT NULL, 
    groupcfile       VARCHAR2(100)    NOT NULL, 
    groupcorigin     VARCHAR2(100)    NOT NULL, 
    groupprivate      CHAR(1)          NOT NULL, 
    grouptype         CHAR(1)          NOT NULL, 
    groupdate		  DATE			   NOT NULL,
    groupstatus        NUMBER           NOT NULL,
    CONSTRAINT GGROUPPK PRIMARY KEY (groupkey)
);

-- 이미 ggroup 테이블 생성했다면 아래의 쿼리문 추가 실행,,
-- ALTER TABLE ggroup ADD (groupddate DATE NOT NULL);
-- ALTER TABLE ggroup ADD (groupstatus NUMBER NOT NULL);

CREATE SEQUENCE ggroupSEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE ggroup
    ADD CONSTRAINT FKggroupuserkeygusersus FOREIGN KEY (userkey)
        REFERENCES gusers (userkey);


ALTER TABLE ggroup
    ADD CONSTRAINT FKggroupagekeygageagek FOREIGN KEY (agekey)
        REFERENCES gage (agekey);


ALTER TABLE ggroup
    ADD CONSTRAINT FKggroupcategorykeygcate FOREIGN KEY (categorykey)
        REFERENCES gcategory2 (scategorykey);

ALTER TABLE ggroup
    ADD CONSTRAINT FKggroupwherekeyglocatio FOREIGN KEY (wherekey)
        REFERENCES glocation (locationkey);
        
        
        
        
        

    


CREATE TABLE ggroupmember
(

    groupkey         NUMBER          NOT NULL, 
    userkey          NUMBER          NOT NULL, 
    groupnickname    VARCHAR2(30)    NOT NULL, 
    usergrade        NUMBER          NOT NULL, 
    CONSTRAINT GGROUPMEMBERPK PRIMARY KEY (groupkey,userkey)
);

/*
    유저 등급 :
                -1: 가입승인전
                0:  회원
                1:  관리자
                
*/


ALTER TABLE ggroupmember
    ADD CONSTRAINT FKggroupmembergroupkeyg FOREIGN KEY (groupkey)
        REFERENCES ggroup (groupkey);


ALTER TABLE ggroupmember
    ADD CONSTRAINT FKggroupmemberuserkeygu FOREIGN KEY (userkey)
        REFERENCES gusers (userkey);









-- glocation Table Create SQL
CREATE TABLE ggroupboard
(
    boardkey         NUMBER          NOT NULL, 
    groupkey         NUMBER          NOT NULL, 
    boardname        VARCHAR2(50)    NOT NULL, 
    boardvote        CHAR(1)         NOT NULL, 
    boardcalendar    CHAR(1)         NOT NULL, 
    boardladder      CHAR(1)         NOT NULL, 
    boardnotice      CHAR(1)         NOT NULL, 
    boardmap         CHAR(1)         NOT NULL, 
    boardview        CHAR(1)         NOT NULL, 
    CONSTRAINT GGROUPBOARDPK PRIMARY KEY (boardkey)
);




CREATE SEQUENCE ggroupboardSEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE ggroupboard
    ADD CONSTRAINT FKggroupboardgroupkeygg FOREIGN KEY (groupkey)
        REFERENCES ggroup (groupkey);



    
/*그룹 생성 시 같이 추가되어야함
insert into ggroupboard values(1,1,'공지사항','Y','Y','Y','Y','Y','Y');
insert into ggroupboard values(2,2,'공지사항','Y','Y','Y','Y','Y','Y');
*/




CREATE TABLE post
(
    postkey              NUMBER            NOT NULL, 
    posttitle            VARCHAR2(100)     NULL, 
    postcontent          VARCHAR2(2000)    NULL, 
    postdate             DATE              NOT NULL, 
    userkey              NUMBER            NOT NULL,
    groupkey             NUMBER            NOT NULL, 
    postoptionreply     CHAR(1)           NOT NULL, 
    postoptionsearch    CHAR(1)           NOT NULL, 
    boardkey             NUMBER            NOT NULL, 
    postreadcount        NUMBER            NOT NULL, 
    PRIMARY KEY(postkey),
   FOREIGN KEY(userkey,groupkey) REFERENCES ggroupmember(userkey,groupkey), /*아 이걸 이렇게 하면 되는구나...*/
  FOREIGN KEY(boardkey) REFERENCES ggroupboard(boardkey)
);




CREATE SEQUENCE postSEQ
START WITH 1
INCREMENT BY 1;






CREATE TABLE calendar
(
    cstartdate             DATE      NOT NULL, 
    cenddate               DATE      NOT NULL, 
    cmoney                  NUMBER    NOT NULL, 
    postkey                 NUMBER    NOT NULL, 
    grouplocation           NUMBER    NOT NULL, 
    grouplocationdetail    NUMBER    NULL, 
    CONSTRAINT CALENDARPK PRIMARY KEY (postkey)
);




ALTER TABLE calendar
    ADD CONSTRAINT FKcalendarpostkeypostpost FOREIGN KEY (postkey)
        REFERENCES post (postkey);

ALTER TABLE calendar
    ADD CONSTRAINT FKcalendargrouplocationgl FOREIGN KEY (grouplocation)
        REFERENCES glocation (locationkey);
        






-- glocation Table Create SQL
CREATE TABLE vote
(
    votekey         NUMBER           NOT NULL, 
    postkey         NUMBER           NOT NULL, 
    votecontent1    VARCHAR2(200)    NOT NULL, 
    votecontent2    VARCHAR2(200)    NOT NULL, 
    votecontent3    VARCHAR2(200)    NOT NULL, 
    votecontent4    VARCHAR2(200)    NOT NULL, 
    votecontent5    VARCHAR2(200)    NOT NULL, 
    CONSTRAINT VOTEPK PRIMARY KEY (votekey)
);


CREATE SEQUENCE voteSEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE vote
    ADD CONSTRAINT FKvotepostkeypostpostkey FOREIGN KEY (postkey)
        REFERENCES post (postkey);
        
        
    
-- glocation Table Create SQL
CREATE TABLE gusercategory
(
    userkey        NUMBER    NOT NULL, 
    categorykey    NUMBER    NOT NULL
);



ALTER TABLE gusercategory
    ADD CONSTRAINT FKgusercategoryuserkeyg FOREIGN KEY (userkey)
        REFERENCES gusers (userkey);

ALTER TABLE gusercategory
    ADD CONSTRAINT FKgusercategorycategoryke FOREIGN KEY (categorykey)
        REFERENCES gcategory2 (scategorykey);





-- glocation Table Create SQL
CREATE TABLE usermessage
(
    mgkey        NUMBER           NOT NULL, 
    mgsort       CHAR(1)          NOT NULL, 
    mgcontent    VARCHAR2(200)    NOT NULL, 
    mgdate       DATE             NOT NULL, 
    mgreceive    NUMBER           NOT NULL, 
    mgsend       NUMBER           NOT NULL, 
    CONSTRAINT USERMESSAGEPK PRIMARY KEY (mgkey)
);


        
CREATE SEQUENCE usermessageSEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE usermessage
    ADD CONSTRAINT FKusermessagemgsendguser FOREIGN KEY (mgsend)
        REFERENCES gusers (userkey);

ALTER TABLE usermessage
    ADD CONSTRAINT FKusermessagemgreceivegu FOREIGN KEY (mgreceive)
        REFERENCES gusers (userkey);
        

insert into usermessage values(usermessageSEQ.nextval, '0','2020년 01월 15일 점검 예약있습니다.',sysdate,3, 2 );



-- glocation Table Create SQL
CREATE TABLE prboard
(
    prkey        NUMBER           NOT NULL, 
    userkey      NUMBER           NOT NULL, 
    groupkey     NUMBER           NOT NULL, 
    content       VARCHAR2(200)    NOT NULL, 
    datewrite    DATE             NOT NULL, 
    CONSTRAINT PRBOARDPK PRIMARY KEY (prkey)
);



CREATE SEQUENCE prboardSEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE prboard
    ADD CONSTRAINT FKprboarduserkeyggroupm FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey);
        




-- glocation Table Create SQL
CREATE TABLE calendarmember
(
    userkey     NUMBER    NOT NULL, 
    postkey     NUMBER    NOT NULL, 
    groupkey    NUMBER    NOT NULL, 
    CONSTRAINT CALENDARMEMBERPK PRIMARY KEY (userkey, postkey, groupkey)
);



ALTER TABLE calendarmember
    ADD CONSTRAINT FKcalendarmemberpostkeyca FOREIGN KEY (postkey)
        REFERENCES calendar (postkey);

ALTER TABLE calendarmember
    ADD CONSTRAINT FKcalendarmemberuserkeyg FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey);



-- glocation Table Create SQL
CREATE TABLE postlike
(
    postkey     NUMBER    NOT NULL, 
    userkey     NUMBER    NOT NULL, 
    groupkey    NUMBER    NOT NULL, 
    CONSTRAINT POSTLIKEPK PRIMARY KEY (postkey, userkey, groupkey)
);



ALTER TABLE postlike
    ADD CONSTRAINT FKpostlikepostkeypostpos FOREIGN KEY (postkey)
        REFERENCES post (postkey);

ALTER TABLE postlike
    ADD CONSTRAINT FKpostlikeuserkeyggroup FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey);






     
-- glocation Table Create SQL
CREATE TABLE maps
(
    mapskey          NUMBER           NOT NULL, 
    postkey          NUMBER           NOT NULL, 
    lat               NUMBER(5,8)      NOT NULL, 
    lng               NUMBER(5,8)      NOT NULL, 
    markername       VARCHAR2(100)    NULL, 
    markercontent    VARCHAR2(100)    NULL, 
    mapsseq          NUMBER           NOT NULL, 
    CONSTRAINT MAPSPK PRIMARY KEY (mapskey)
);



ALTER TABLE maps
    ADD CONSTRAINT FKmapspostkeypostpostkey FOREIGN KEY (postkey)
        REFERENCES post (postkey);
        
        
        
-- glocation Table Create SQL
CREATE TABLE ladder
(
    postkey          NUMBER           NOT NULL, 
    ladderkey        NUMBER           NOT NULL, 
    laddercontent    VARCHAR2(100)    NOT NULL, 
    CONSTRAINT LADDERPK PRIMARY KEY (ladderkey)
);


CREATE SEQUENCE ladderSEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE ladder
    ADD CONSTRAINT FKladderpostkeypostpostk FOREIGN KEY (postkey)
        REFERENCES post (postkey);
        
        
-- glocation Table Create SQL
CREATE TABLE gcomment
(
    commnetnum        NUMBER           NOT NULL, 
    postkey           NUMBER           NOT NULL, 
    userkey           NUMBER           NOT NULL, 
    commentcontent    VARCHAR2(500)    NOT NULL, 
    commemtreref     NUMBER           NOT NULL, 
    commentrelev     NUMBER           NOT NULL, 
    commentreseq     NUMBER           NOT NULL, 
    commentdate       DATE             NOT NULL, 
    groupkey          NUMBER           NOT NULL, 
    CONSTRAINT GCOMMENTPK PRIMARY KEY (commnetnum)
);

CREATE SEQUENCE gcommentSEQ
START WITH 1
INCREMENT BY 1;       
        
        
        
        
ALTER TABLE gcomment
    ADD CONSTRAINT FKgcommentpostkeypostpos FOREIGN KEY (postkey)
        REFERENCES post (postkey);
ALTER TABLE gcomment
    ADD CONSTRAINT FKgcommentuserkeyggroup FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey);
        
        
        
-- glocation Table Create SQL
CREATE TABLE votemembber
(
    votememberkey    NUMBER    NOT NULL, 
    userkey           NUMBER    NOT NULL, 
    votekey           NUMBER    NOT NULL, 
    checkvote         NUMBER    NOT NULL, 
    groupkey          NUMBER    NOT NULL, 
    CONSTRAINT VOTEMEMBBERPK PRIMARY KEY (votememberkey)
);

CREATE SEQUENCE votemembberSEQ
START WITH 1
INCREMENT BY 1;




ALTER TABLE votemembber
    ADD CONSTRAINT FKvotemembbervotekeyvote FOREIGN KEY (votekey)
        REFERENCES vote (votekey);

ALTER TABLE votemembber
    ADD CONSTRAINT FKvotemembberuserkeyggro FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey);
        
   
        
-- glocation Table Create SQL
CREATE TABLE bfile
(
    filekey         NUMBER           NOT NULL, 
    fileoriginal    VARCHAR2(100)    NOT NULL, 
    filename        VARCHAR2(100)    NOT NULL, 
    postkey         NUMBER           NOT NULL, 
    CONSTRAINT BFILEPK PRIMARY KEY (filekey)
);



CREATE SEQUENCE bfileSEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE bfile
    ADD CONSTRAINT FKbfilepostkeypostpostk FOREIGN KEY (postkey)
        REFERENCES post (postkey);
        
  


-- glocation Table Create SQL
CREATE TABLE userpolice
(
    policekey           NUMBER     NOT NULL, 
    userkey             NUMBER     NOT NULL, 
    policeboardsort    CHAR(1)    NOT NULL, 
    policenumber        NUMBER     NOT NULL, 
    policesort          NUMBER     NOT NULL, 
    reciveuserKey number,
    CONSTRAINT USERPOLICEPK PRIMARY KEY (policekey)
);
      
      
      
CREATE SEQUENCE userpoliceSEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE userpolice
    ADD CONSTRAINT FKuserpoliceuserkeyguser FOREIGN KEY (userkey)
        REFERENCES gusers (userkey);





CREATE TABLE userlikegroup
(
    userlikegroupkey    NUMBER    NOT NULL, 
    userkey               NUMBER    NOT NULL, 
    groupkey              NUMBER    NOT NULL, 
    CONSTRAINT USERLIKEGROUPPK PRIMARY KEY (userlikegroupkey)
);


CREATE SEQUENCE userlikegroupSEQ
START WITH 1
INCREMENT BY 1;




ALTER TABLE userlikegroup
    ADD CONSTRAINT FKuserlikegroupuserkeyg FOREIGN KEY (userkey)
        REFERENCES gusers (userkey);

ALTER TABLE userlikegroup
    ADD CONSTRAINT FKuserlikegroupgroupkeyg FOREIGN KEY (groupkey)
        REFERENCES ggroup (groupkey);
                                                 
                   
