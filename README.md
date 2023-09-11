# ✈️ Project HITRIP  
<img width="392" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/93a8613c-53e7-4b95-a824-6bdd1c468e28">

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
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/6af1de36-5a7f-41be-9d43-1ceb42f7ce34"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/fd03b9e7-a473-41d3-8268-87fd60aee49f"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/da27439c-07fc-49b1-89c5-3959f9049bc8"></td>
  </tr>
  <tr>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/review/reviewDetail.jsp#L213-L281">게시물 추천 기능</a></b></td>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/webapp/review/reviewDetail.jsp#L282-L314">댓글 기능</a></b></td>
    <td><b><a href="https://github.com/zzheek/Project_Hitrip/blob/68ae212d97f08f6721624cf144305caba9792cc7/src/main/java/egov/hitrip/web/ReviewController.java#L121-L180">파일 업로드 기능</a></b></td>
  </tr>
  <tr>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/5f46b4f4-cbe8-4ae0-8143-ed59c2e72a78"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/70062497-1e5a-41aa-8853-11532e2c897c"></td>
    <td><img width="250" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/a1d32c78-a97d-4403-8a5a-aba95746da5f"></td>
  </tr>
</table>
<br>

## 트러블슈팅
👾각 게시물에 맨 처음 좋아요 버튼을 클릭한 한 유저만 그 게시물 추천이 가능하고, 여러 유저이 추천을 할 수 없는 오류가 발생
<table>
  <tr>
    <td><b>트러블슈팅 원인</b></td>
  </tr>
  <tr>
    <td>
    리뷰 테이블에 REVIEWLIKE라는 컬럼을 추가하여 좋아요 및 좋아요 취소 기능을 구현하려 함.<br>
    위 방식으로 구현시 각 게시물당 좋아요는 특정 유저(첫 클릭 유저)만 클릭 가능
    </td>
  </tr>
  <tr>
    <td><img width="800" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/79acc8ba-4203-4fa5-9ae8-0790abdfb84e"></td>
  </tr>
</table>
<table>
  <tr>
    <td><b>트러블슈팅 해결</b></td>
  </tr>
  <tr>
    <td>
    ‘TBL_REVIEW_LIKE ‘ 테이블을 생성하여 각 유저별로 게시물당 좋아요 클릭시 유저아이디와 리뷰의 고유번호를 DB에 저장(insert).<br>
    버튼 클릭시 유저의 해당 게시물에 대한 좋아요 클릭 여부 확인 -> 재클릭시 db에 저장된 데이터를 delete하는 방식으로 좋아요 취소
    </td>
  </tr>
  <tr>
    <td><img width="800" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/ad6218f8-b4e5-4f47-8759-e81682cc2b8d"></td>
  </tr>
</table>

<br>

## 수상
🏆**하이미디어 프로젝트 포트폴리오 발표회 최우수상** 


<img width="561" alt="image" src="https://github.com/zzheek/Project_Hitrip/assets/133830185/9b402f68-4982-48f7-8dcf-7c2b93e9bcf3">






