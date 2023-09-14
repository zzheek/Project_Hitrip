# ✈️ Project HITRIP  
<img width="392" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/d312425b-a398-4e69-8265-97c86de9f753">

<br><br>

## ✔️ 프로젝트 소개
여행자들을 위한 편리한 여행 계획 및 공유 플랫폼을 제공하는 웹사이트
- 국내여행지, 국내식당 리스트 및 상세 정보
- FullCalendar를 이용하여 일정 저장 및 공유하여 동행자 구인
- 패키지 여행와 연동하여 참여 패키지 후기 작성
- 개인/사업자/관리자 로그인 및 회원가입
<br><br>

## ✔️ 팀 구성
강주희 외 2명
<br><br>

## ✔️ 개발 기간
2023.08.01 - 2023.09.01
<br><br>

## ✔️ 개발 환경
* Java 17.0
* Front : HTML5 / CSS3 / JS / jQuery
* Framework : egovFramework 4.0
* Database : Oracle 19c
* Server : apache tomcat 9.0
* ORM : ibatis
* Tool : Eclips / Github
* API : TourAPI / Kakaomap Map API
<br><br>

## ✔️ 담당 기능
*기능 클릭시 해당 코드로 이동합니다.

* ### <a href="https://github.com/zzheek/Project_Hitrip/blob/3252ef542a1a11e5b8f009d1dd590b39a0b2cfed/src/main/webapp/main/main.jsp#L184C1-L442">메인 페이지</a>
  * 쿼리에 ORDER BY DBMS_RANDOM.VALUE를 적용하여 국내여행지, 국내식당 데이터를 3개씩 랜덤 출력

![메인1](https://github.com/zzheek/Project_Hitrip/assets/133830185/47573bed-4797-4856-a46c-6b61d660b898)
<br><br>

* ### <a href="https://github.com/zzheek/Project_Hitrip/blob/c3a836f4bbb979230594ba247697757ed86390d0/src/main/webapp/trip/tripList.jsp#L144-L173">국내 여행지</a>
  * TourAPI를 이용해 지역별 약 1000개의 데이터를 json파일로 저장. 필요한 데이터를 가공하여 DB에 저장 후 VO에서 호출하여 출력
  * 여행지 및 식당의 MapX, MapY좌표 값을 추출 후 카카오 지도API를 이용해 마커를 사용하여 정확한 위치를 지도에 표시

![국내여행지1](https://github.com/zzheek/Project_Hitrip/assets/133830185/c4971463-0056-4854-aadb-d4f8f69576d1)
<br><br>

* ### <a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/bsnm/bsnmJoinWrite.jsp#L114-L181">사업자 회원가입</a>
  * 사용자가 입력한 사업자번호를 국세청 외부API를 통하여 등록상태 조회 및 사업자번호 확인을 요청, json 형식으로 호출하여 서버에서 받아온 데이터를 통하여 중복, 등록여부 및 상태에 따라 출력
  * 사업자아이디, 자동등록방지 유효성 검사

![사업자회원가입1](https://github.com/zzheek/Project_Hitrip/assets/133830185/721ff8f3-6fd4-4c1f-bf50-407372f2e510)
<br><br>

* ### <a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/review/reviewDetail.jsp#L213-L281">게시물 추천(좋아요) 기능</a>
  * 유저별로 각 게시글에 한번씩 좋아요(추천) 가능. 좋아요 버튼 재클릭시 좋아요 취소

![좋아요1](https://github.com/zzheek/Project_Hitrip/assets/133830185/595ea8d2-4344-422f-ac22-4cde2ee82134)
<br><br>

* ### <a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/review/reviewDetail.jsp#L282-L314">댓글 기능</a>
  * 댓글 CRUD 구현

![댓글1](https://github.com/zzheek/Project_Hitrip/assets/133830185/69edc736-8426-4066-99a7-8ca08dcab48d)
<br><br>

* ### <a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/java/egov/hitrip/web/ReviewController.java#L121-L180">파일 업로드 기능</a>
  * 글 작성시 사진 업로드 가능. 중복 파일명 존재시 랜던 파일명으로 변환 후 저장

![파일업로드1](https://github.com/zzheek/Project_Hitrip/assets/133830185/7bbef3b6-f5c1-4062-96d9-37ef1c9a8306)
<br><br>

## ✔️ 트러블슈팅
👾 각 게시물에 맨 처음 좋아요 버튼을 클릭한 한 유저만 그 게시물 추천이 가능하고, 여러 유저가 추천하지 못하는 오류가 발생

|트러블슈팅 원인|
|:---:|
|리뷰 테이블에 REVIEWLIKE라는 컬럼을 추가하여 좋아요 및 좋아요 취소 기능을 구현하려 함.<br>위 방식으로 구현시 각 게시물당 좋아요는 특정 유저(첫 클릭 유저)만 클릭 가능|
|<img width="800" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/e73643f0-9707-4d49-ab3a-2d19eb645009">|
||
||
|<b>트러블슈팅 해결</b>|
|‘TBL_REVIEW_LIKE ‘ 테이블을 생성하여 각 유저별로 게시물당 좋아요 클릭시 유저아이디와 리뷰의 고유번호를 DB에 저장(insert).<br>버튼 클릭시 유저의 해당 게시물에 대한 좋아요 클릭 여부 확인 -> 재클릭시 db에 저장된 데이터를 delete하는 방식으로 좋아요 취소|
|<img width="800" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/121780c5-13c7-48d4-9b27-f5fd6df03bf6">|

<br>

## ✔️ 수상
🏆 **하이미디어 프로젝트 포트폴리오 발표회 최우수상** 


<img width="400" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/36a91970-0ee1-4d70-a489-bdafe7998960">






