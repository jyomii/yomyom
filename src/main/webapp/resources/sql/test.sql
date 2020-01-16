	  SELECT * FROM (
				SELECT b.*, rownum rnum
				FROM (SELECT * from usermessage order by mgDate desc) b)
				WHERE RNUM >= 0 and rnum <= 5


				
-- ####################### 고여니 테스트	START
SELECT * FROM GUSERS;		-- 회원 조회			
SELECT * FROM GCATEGORY;	-- 카테고리 조회
SELECT * FROM GCATEGORY2;	-- 카테고리 소분류 조회 
SELECT * FROM GGROUP;		-- 모임 조회

-- 모임 생성
-- 모임키값, 모임명, 모임장키값, 연령대키값, 모임지역키값, 모임카테고리키값, 모임소개, 대표사진, 대표사진Origin, 커버사진, 커버사진Origin, 모임공개여부, 모임타입, 개설일
-- 이미지 #{GROUPDFILE}
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '나랑LOL자', 1, 2, 2, 1, 'LOL에 미친 사람만 들어오ㅏ', 'pic.png', 'pic.png', 'cov.png', 'cov.png', 'N', '1', SYSDATE);
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '마포구 워치처돌이', 1, 1, 2, 1, '오버워치 때문에 현생을 잃어버린 마포구 주민들,,', 'OV.png', 'OV.png', 'ER.png', 'ER.png', 'N', '1', SYSDATE);

-- 모임 가입
-- 모임 키값 #{GROUPKEY}, 유저 키값 #{USERKEY}, 닉네임, 유저등급
INSERT INTO GGROUPMEMBER VALUES (2, 22, '롤롤', 1);
INSERT INTO GGROUPMEMBER VALUES (3, 22, '시계져아', 1);
INSERT INTO GGROUPMEMBER VALUES (2, 21, '롤루롤라', 1);
INSERT INTO GGROUPMEMBER VALUES (2, 24, '곽두팔', 1);

-- 회원의 가입한 모임 보기
-- 유저 키값 #{USERKEY}
-- GROUPDATE가 맞는데 수전증 도졌는지 GROUPDDATE라고 함; 일단 GROUPDATE가 맞다.
SELECT GROUPKEY, GROUPNAME, GROUPDFILE, GROUPDDATE 
FROM GGROUP 
WHERE GROUPKEY IN (SELECT GROUPKEY FROM GGROUPMEMBER WHERE USERKEY = 22)
ORDER BY GROUPDDATE, GROUPNAME;

-- 게시글 
-- 모임게시글키값, 제목, 내용, 작성일, 모임키값, 유저키값, 댓글허용여부, 검색허용여부, 모임게시판키값, 조회수
INSERT INTO POST
VALUES(postSEQ.NEXTVAL, '');
VALUES ();
-- ####################### 고여니 테스트	END