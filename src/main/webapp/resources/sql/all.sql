
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
CREATE TABLE gage
(
    agekey      NUMBER    NOT NULL, 
    agevalue    NUMBER    NOT NULL, 
    CONSTRAINT GAGEPK PRIMARY KEY (agekey)
);




CREATE TABLE gcategory
(
    dcategorykey     NUMBER          NOT NULL, 
    dcategoryname    VARCHAR2(50)    NOT NULL, 
    CONSTRAINT GCATEGORYPK PRIMARY KEY (dcategorykey)
);


CREATE SEQUENCE gcategorySEQ
START WITH 1
INCREMENT BY 1;





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
        REFERENCES gcategory (dcategorykey) on delete cascade;












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
        REFERENCES glocation (locationkey) on delete cascade;
        

ALTER TABLE GUSERS MODIFY (USERPASSWORD VARCHAR2(100));
                                                 
CREATE SEQUENCE gusersSEQ
START WITH 1
INCREMENT BY 1;

                               

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
        REFERENCES gusers (userkey) on delete cascade;
                                                 
                                                           

CREATE TABLE ggroup
(
    groupkey          NUMBER           NOT NULL, 
    groupname         VARCHAR2(60)     NOT NULL, 
    userkey           NUMBER           NOT NULL, 
    agekey            NUMBER           NOT NULL, 
    wherekey          NUMBER           NOT NULL, 
    categorykey       NUMBER           NOT NULL, 
    groupinfo         VARCHAR2(300)    NOT NULL, 
    groupdfile       VARCHAR2(100)    , 
    groupidorigin    VARCHAR2(100)    , 
    groupcfile       VARCHAR2(100)    , 
    groupcorigin     VARCHAR2(100)    , 
    groupprivate      CHAR(1)          NOT NULL, 
    grouptype         CHAR(1)          NOT NULL, 
    groupdate		  DATE			   NOT NULL,
    groupstatus        NUMBER           NOT NULL,
    CONSTRAINT GGROUPPK PRIMARY KEY (groupkey)
);

-- 이미 ggroup 테이블 생성했다면 아래의 쿼리문 추가 실행,,
-- ALTER TABLE ggroup ADD (groupddate DATE NOT NULL);
-- ALTER TABLE ggroup ADD (groupstatus NUMBER NOT NULL);
--ALTER TABLE ggroup MODIFY(groupdfile VARCHAR2(100) null);
--ALTER TABLE ggroup MODIFY(groupidorigin VARCHAR2(100) null);
--ALTER TABLE ggroup MODIFY(groupcfile VARCHAR2(100) null);
--ALTER TABLE ggroup MODIFY(groupcorigin VARCHAR2(100) null);
                                            
CREATE SEQUENCE ggroupSEQ
START WITH 1
INCREMENT BY 1;



ALTER TABLE ggroup
    ADD CONSTRAINT FKggroupuserkeygusersus FOREIGN KEY (userkey)
        REFERENCES gusers (userkey) on delete cascade;


ALTER TABLE ggroup
    ADD CONSTRAINT FKggroupagekeygageagek FOREIGN KEY (agekey)
        REFERENCES gage (agekey);


ALTER TABLE ggroup
    ADD CONSTRAINT FKggroupcategorykeygcate FOREIGN KEY (categorykey)
        REFERENCES gcategory2 (scategorykey) on delete cascade;

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
        REFERENCES ggroup (groupkey) on delete cascade;


ALTER TABLE ggroupmember
    ADD CONSTRAINT FKggroupmemberuserkeygu FOREIGN KEY (userkey)
        REFERENCES gusers (userkey) on delete cascade;









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
        REFERENCES ggroup (groupkey) on delete cascade;







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
        REFERENCES post (postkey) on delete cascade;

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
        REFERENCES post (postkey) on delete cascade;
        
        
    
-- glocation Table Create SQL
CREATE TABLE gusercategory
(
    userkey        NUMBER    NOT NULL, 
    categorykey    NUMBER    NOT NULL
);



ALTER TABLE gusercategory
    ADD CONSTRAINT FKgusercategoryuserkeyg FOREIGN KEY (userkey)
        REFERENCES gusers (userkey) on delete cascade;

ALTER TABLE gusercategory
    ADD CONSTRAINT FKgusercategorycategoryke FOREIGN KEY (categorykey)
        REFERENCES gcategory2 (scategorykey) on delete cascade;





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
        REFERENCES gusers (userkey) on delete cascade;

ALTER TABLE usermessage
    ADD CONSTRAINT FKusermessagemgreceivegu FOREIGN KEY (mgreceive)
        REFERENCES gusers (userkey) on delete cascade;
        



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
        REFERENCES ggroupmember (userkey, groupkey) on delete cascade;
        




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
        REFERENCES calendar (postkey) on delete cascade;

ALTER TABLE calendarmember
    ADD CONSTRAINT FKcalendarmemberuserkeyg FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey) on delete cascade;



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
        REFERENCES post (postkey) on delete cascade;

ALTER TABLE postlike
    ADD CONSTRAINT FKpostlikeuserkeyggroup FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey) on delete cascade;






     
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
        REFERENCES post (postkey) on delete cascade;
        
        
        
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
        REFERENCES post (postkey) on delete cascade;
        
        
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
        REFERENCES post (postkey) on delete cascade;
ALTER TABLE gcomment
    ADD CONSTRAINT FKgcommentuserkeyggroup FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey) on delete cascade;
        
        
        
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
        REFERENCES vote (votekey) on delete cascade;

ALTER TABLE votemembber
    ADD CONSTRAINT FKvotemembberuserkeyggro FOREIGN KEY (userkey, groupkey)
        REFERENCES ggroupmember (userkey, groupkey) on delete cascade;
        
   
        
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
        REFERENCES post (postkey) on delete cascade;
        


-- glocation Table Create SQL
CREATE TABLE userpolice
(
    policekey           NUMBER     NOT NULL, --자동증가
    userkey             NUMBER     NOT NULL, --신고한 유저
    policeboardsort    CHAR(1)    NOT NULL, --글/댓글 여부
    policenumber        NUMBER     NOT NULL, --글/댓글 번호
    policesort          NUMBER     NOT NULL, --욕/비방/정치/혐오/공부
    reciveuserKey number, --신고당한 유저
    
    CONSTRAINT USERPOLICEPK PRIMARY KEY (policekey)
);
      
      
      
CREATE SEQUENCE userpoliceSEQ
START WITH 1
INCREMENT BY 1;


ALTER TABLE userpolice
    ADD CONSTRAINT FKuserpoliceuserkeyguser FOREIGN KEY (userkey)
        REFERENCES gusers (userkey) on delete cascade;





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
        REFERENCES gusers (userkey) on delete cascade;

ALTER TABLE userlikegroup
    ADD CONSTRAINT FKuserlikegroupgroupkeyg FOREIGN KEY (groupkey)
        REFERENCES ggroup (groupkey) on delete cascade;
                                                 
                   
        
 
