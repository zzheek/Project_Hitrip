# ✈️ Project HITRIP  
<img width="392" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/d312425b-a398-4e69-8265-97c86de9f753">

<br><br>

## 프로젝트 소개
여행자들을 위한 편리한 여행 계획 및 공유 플랫폼을 제공하는 웹사이트
<br><br>

## 팀 구성
강주희 외 2명
<br><br>

## 개발 기간
2023.08.01 - 2023.09.01
<br><br>

## 개발 환경
* Java 17.0
* Front : HTML5 / CSS3 / JS / jQuery
* Framework : egovFramework 4.0
* Database : Oracle 19c
* Server : apache tomcat 9.0
* ORM : ibatis
* Tool : Eclips / Github
* API : TourAPI / Kakaomap Map API
<br><br>

## 담당 기능
***기능 클릭시 해당 코드로 이동합니다.**

***이미지 클릭시 원본 이미지로 출력됩니다.**
<table>
  <tr>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/3252ef542a1a11e5b8f009d1dd590b39a0b2cfed/src/main/webapp/main/main.jsp#L184C1-L442">메인 페이지</a></b></td>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/c3a836f4bbb979230594ba247697757ed86390d0/src/main/webapp/trip/tripList.jsp#L144-L173">국내 여행지</a></b></td>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/bsnm/bsnmJoinWrite.jsp#L114-L181">사업자 회원가입</a></b></td>
  </tr>
  <tr>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/e53aff21-a1f0-4f52-9bd8-f19984dab404"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/23464ffe-bf78-4939-9d58-8d32f4c68894"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/a99474ac-9a7f-4bc6-8b02-e9ef5ac29fb7"></td>
  </tr>
  <tr>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/review/reviewDetail.jsp#L213-L281">게시물 추천 기능</a></b></td>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/review/reviewDetail.jsp#L282-L314">댓글 기능</a></b></td>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/java/egov/hitrip/web/ReviewController.java#L121-L180">파일 업로드 기능</a></b></td>
  </tr>
  <tr>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/21e7dabc-0e4a-4c36-af5d-fb0ef22efc21"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/ac9d33b9-809c-4718-97a4-3816dec96fd3"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/96b83646-d34a-42bb-9aeb-5e4fdce01986"></td>
  </tr>
</table>
<br>

## 트러블슈팅
👾각 게시물에 맨 처음 좋아요 버튼을 클릭한 한 유저만 그 게시물 추천이 가능하고, 여러 유저이 추천을 할 수 없는 오류가 발생

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

## 수상
🏆**하이미디어 프로젝트 포트폴리오 발표회 최우수상** 


<img width="561" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/36a91970-0ee1-4d70-a489-bdafe7998960">






