	  SELECT * FROM (
				SELECT b.*, rownum rnum
				FROM (SELECT * from usermessage order by mgDate desc) b)
				WHERE RNUM >= 0 and rnum <= 5


				
-- ####################### 고여니 테스트	START
SELECT * FROM GUSERS		-- 회원 조회			
SELECT * FROM GCATEGORY		-- 카테고리 조회
SELECT * FROM GCATEGORY2	-- 카테고리 소분류 조회 
SELECT * FROM GGROUPBOARD	-- 모임게시판 조회
SELECT * FROM GGROUPMEMBER 	-- 모임 참여자 조회
SELECT * FROM POST			-- 모임 게시글 조회
SELECT * FROM GLOCATION 	-- 지역 분류
SELECT * FROM GGROUP		-- 모임 조회

-- ## ggroup ## --
-- group - status 		=> 0 : 일반 	/ 1 : 모임승인예정
-- group - type 		=> y : 원데이 	/ n : 일반

======gusers==========
userStatus 0 : 정상 
      1: 탈퇴예정
      2: 강제 탈퇴
      3:정지
=====================

-- 모임 생성
-- 모임키값, 모임명, 모임장키값, 연령대키값, 모임지역키값, 모임카테고리키값, 모임소개, 대표사진, 대표사진Origin, 커버사진, 커버사진Origin, 모임공개여부, 모임타입, 개설일, 모임승인상태 
-- 이미지 #{GROUPDFILE}
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '나랑LOL자', 1, 2, 2, 1, 'LOL에 미친 사람만 들어오ㅏ', 'pic.png', 'pic.png', 'cov.png', 'cov.png', 'n', 'n', SYSDATE, 1)
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '마포구 워치처돌이', 1, 1, 2, 1, '오버워치 때문에 현생을 잃어버린 마포구 주민들@_@', 'OV.png', 'OV.png', 'ER.png', 'ER.png', 'n', 'n', SYSDATE, 1)
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '코딩수다', 1, 2, 4, 1, '고통받는 개발자들 환영합니다.', 'OV.png', 'OV.png', 'ER.png', 'ER.png', 'N', 'n', SYSDATE, 1)
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '계란들의 배드민턴', 1, 3, 7, 1, '계란으로 셔틀콕 치기', 'OV.png', 'OV.png', 'ER.png', 'ER.png', 'N', 'n', SYSDATE, 1)
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '내 이름은 코난, 탐정이죠.', 1, 2, 2, 1, '추리하는 거 대 존 잼', 'OV.png', 'OV.png', 'ER.png', 'ER.png', 'N', 'n', SYSDATE, 1)
INSERT INTO GGROUP VALUES (ggroupSEQ.NEXTVAL, '드응산', 1, 4, 2, 1, '맑은 공기.. 들이마시면서 살아야 건강해지지요*^^*~', 'OV.png', 'OV.png', 'ER.png', 'ER.png', 'N', 'n', SYSDATE, 1)


-- 모임 게시판 정보
-- 모임게시판키값, 모임키값, 모임게시판이름, 투표여부, 일정여부, 사다리타기여부, 공지사항여부, 지도여부, 표시형식
INSERT INTO GGROUPBOARD VALUES(ggroupboardSEQ.NEXTVAL, 3, '자유게시판', 'N', 'N', 'N', 'N', 'N', 'N')

-- 모임 가입
-- 모임 키값 #{GROUPKEY}, 유저 키값 #{USERKEY}, 닉네임, 유저등급
INSERT INTO GGROUPMEMBER VALUES (3, 2, '롤롤', 1)
INSERT INTO GGROUPMEMBER VALUES (3, 3, '시계져아', 1)
INSERT INTO GGROUPMEMBER VALUES (3, 4, '롤루롤라', 1)
INSERT INTO GGROUPMEMBER VALUES (2, 2, '곽두팔', 1)
INSERT INTO GGROUPMEMBER VALUES (6, 2, '곽두팔', 1)

-- 회원의 가입한 모임 보기
-- 유저 키값 #{USERKEY}
SELECT GROUPKEY, GROUPNAME, GROUPDFILE, GROUPDATE 
FROM GGROUP 
WHERE GROUPKEY IN (SELECT GROUPKEY FROM GGROUPMEMBER WHERE USERKEY = 2)
ORDER BY GROUPDATE, GROUPNAME

-- 게시글 
-- 모임게시글키값, 제목, 내용, 작성일, 유저키값, 모임키값, 댓글허용여부, 검색허용여부, 모임게시판키값, 조회수
-- 나랑LOL자(2번) 모임에서 아이디 login2(22)인 유저가 글을 쓴 것이다.  
-- login2(22)인 유저의 닉네임은 롤롤 
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '제목입니다 제목', '내용입니다 내용', sysdate, 2, 3, 'Y', 'Y', 2, 0);
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '두번째 글입니다. 테스트^^', '글이 잘 들어갔으면 좋겠다.', sysdate, 2, 3, 'Y', 'Y', 2, 0);
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '나 울 어', '왜 우냐면 어려워서 울어', sysdate, 2, 3, 'Y', 'Y', 2, 0);
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '너를 그리는 시간', '미쳐버린 거지 노래 너무 좋앙;', sysdate, 2, 6, 'Y', 'Y', 2, 0);
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '제목을 일부러 길게 해볼 건데 못생기겠지 백퍼긴 하겠지 그치만 적.어.', '못생겼지?ㅎ', sysdate, 2, 6, 'Y', 'Y', 2, 0);
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '가나다라마바사아자차카타파하', '거꾸로는 바로 못 쳐;', sysdate, 2, 4, 'Y', 'Y', 2, 0);
-- 나랑LOL자(2번) 모임에서 아이디 login4(24)인 유저가 글을 쓴 것이다.  
-- login4(24)인 유저의 닉네임은 곽두팔 
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '나 곽두팔이야', '이렇게 인사하면 되는 거냐 ...', sysdate, 24, 2, 'Y', 'Y', 1, 0)
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '언제 바느질 할 겁니까', '기다리는 중입니다 ...', sysdate, 22, 2, 'Y', 'Y', 1, 0)
INSERT INTO POST VALUES(postSEQ.NEXTVAL, '제목입니다 제목', '내용입니다 내용', sysdate, 22, 2, 'Y', 'Y', 1, 0)

SELECT GROUPKEY, GROUPNAME, GROUPDFILE, GROUPDATE
FROM GGROUP
WHERE GROUPKEY IN (SELECT GROUPKEY
FROM GGROUPMEMBER
WHERE USERKEY = 3); 

-- ####################### 고여니 테스트	END