# MAKNOLJA(숙박/항공예약 2021.07.26 ~ 2021.08.27)

## 프로젝트 개요
+ 3명이서 31일 동안 개발된 중앙HTA 파이널 프로젝트 입니다.
+ MAKNOLJA.COM은 trip.com 를 모티브로 제작되었습니다.
+ 회원/비회원 **관계없이** 숙박/항공 리스트 조회 및 뉴스를 확인할 수 있다.
+ **예약** 은 회원만 가능하며 비회원이 클릭할 시 로그인 페이지로 되돌아간다.
+ 숙박 및 항공예약은 **오늘**부터 **다음달 말일** 까지 조회 및 예약할 수 있다.
+ 회원가입은 **이메일 형식**으로만 가입가능하다.
+ 내정보수정 및 비밀번호 변경을 할 수 있다.
------------------------------------------------------------------
## 담당업무(100% 업무 중 95% 진행)
+ OPEN API를 사용하여 항공/숙박업소 정보 DB저장(공공데이터포털)
+ 카카오 & 구글 API 를 사용하여 지도에 표시
+ 메인페이지, 숙박/항공 검색, Header, Footer
+ 코로나19 국가별 입국정책, 항공사별 방역정보
+ 뉴스 페이지, 뉴스정보
+ 숙박업소 검색, 숙박업소 디테일, 예약기능 구현
+ 예약정보 및 비밀번호찾기시 Email 전송
------------------------------------------------------------------
## 개발환경 및 기술
+ 개발환경
    +  OS : Window10
    +  DBMS : Amazon Web Services RDS(Oracle DB 12)
    +  WAS : Apache Tomcat 9
    +  Language : Java, Servlet/JSP, HTML5, CSS3, JavaScript
    +  Framework : Spring, MyBatis
    +  Library : Ajax, Javax.mail, jQuery, JSTL, EL, Lombok, Gson, jackson, log4j, commons-codec
    +  형상관리 : Git
    +  API : 공공데이터포털(한국관광공사,한국공항공사), Kakao,Naver Developers
+  개발툴
    + Design : Adobe CS5, BootStrap,
    + Editor :  Eclipse eGovFrameDev 3.1, IntelliJ 2021.2.1
------------------------------------------------------------------
## Database ERD
![ERD](https://user-images.githubusercontent.com/80470138/131905395-1c8d899d-a8f6-42ca-80e2-71ee1a644057.png)

------------------------------------------------------------------

## 메인화면
![image](https://user-images.githubusercontent.com/80470138/131905943-a8010a08-8432-4758-8de3-8be78cf92b82.png)
![image](https://user-images.githubusercontent.com/80470138/131905758-773e090c-bb75-451d-848f-60275978b4eb.png)
![image](https://user-images.githubusercontent.com/80470138/131905789-70da9cec-9c50-44b7-a16c-40abffa2d1c0.png)
![image](https://user-images.githubusercontent.com/80470138/131906043-de2dfb30-f4ce-4c4b-8272-4005dab035d0.png)

## 담당업무 구현
+ [로그인아웃Modal](#로그인아웃)
+ [회원가입Modal](#회원가입)
+ [비밀번호찾기](#비밀번호찾기)
+ [숙박업소 지역별 검색](#숙박업소지역검색)
+ [숙박업소 이름 검색](#숙박업소이름검색)
+ [체크인아웃](#체크인아웃)
+ [인원수 조정](#인원수조정)
+ [호텔검색결과](#호텔검색결과)
+ [호텔디테일](#호텔디테일)
+ [지도에서호텔보기](#지도에서호텔보기)
+ [호텔제공사진](#호텔제공사진)
+ [호텔정보](#호텔정보)
+ [예약정보](#예약정보)
+ [예약확정](#예약확정)
+ [코로나19 해외여행자안전가이드](#코로나19해외여행자안전가이드)
+ [코로나19 관련 여행제한 안내](#코로나19관련여행제한안내)
+ [안전한비행을위한노력](#안전한비행을위한노력)
+ [뉴스룸](#뉴스룸)
+ [뉴스디테일](#뉴스디테일)


### 로그인아웃
![image](https://user-images.githubusercontent.com/80470138/132077179-b2569973-497d-49b0-b6c1-840e9d968115.png)
```
- 메인페이지에서 로그인/회원가입을 클릭시 Modal로 표시한다.
```
### 회원가입
![image](https://user-images.githubusercontent.com/80470138/132077217-c5663c54-f691-4c83-bc64-8ffe419158a1.png)
```
- 메인페이지에서 로그인/회원가입을 클릭시 Modal로 표시한다.
```
### 비밀번호찾기
![image](https://user-images.githubusercontent.com/80470138/132077226-f1c30dac-8a5e-40d8-9675-a1280838de91.png)
```
- 회원가입/로그인 모달에서 비밀번호 찾기 클릭시 기존 modal이 종료되고 비밀번호찾기 modal을 표시한다.
```
![image](https://user-images.githubusercontent.com/80470138/132077548-84a738b7-55e9-4e20-bc0f-28020829135b.png)
```
- 비밀번호 찾기 클릭시 입력한 이메일로 임시비밀번호가 전송되며, DB에 저장되지 않거나 잘못된 값 입력시
  전송이 되지 않는다.
```
![image](https://user-images.githubusercontent.com/80470138/132077611-a5badb0d-19e5-4987-adfd-12cc1fcf915e.png)
```
- 임시비밀번호는 총11자리로써 영어와 숫자로 이루어져 있다.[UUID.randomUUID() + toString() + replace]
- DB에는 임시비밀번호가 SHA256 암호화되어 저장된다.
```

### 숙박업소지역검색
![image](https://user-images.githubusercontent.com/80470138/131906925-1c0f29a3-bb37-4de4-89fe-cc9cd40b658f.png)
```
- "목적지"를 클릭시 숙박업소가 있는 도시의 이름들이 표시되어 분류되어 검색할 수 있다.
- 공공데이터 포털에서 분류된 지역번호(1~38)를 replace 하여 지역명으로 표시하였다.
```

### 숙박업소이름검색
![image](https://user-images.githubusercontent.com/80470138/131907413-0c479b5e-30c0-4efc-94fb-5dd3f9dbd5e7.png)
```
- 사용자는 지역검색창에서 선택하지 않고 글자를 입력시 예약하고자 하는 숙박업소 이름을 검색하여 숙박업소 리스트를 표시한다.
  (jQuery keyup evnet)
- 과부화 방지
    - function delay를 사용하여 입력이 종료되고 500ms 이후에 조회되어 표시된다.(JavaScript)
    - count를 설정한 후 최대 10개까지만 출력되도록 설정되었다.(JavaScript)
```
### 체크인아웃
![image](https://user-images.githubusercontent.com/80470138/131908465-f60f4b00-8450-436d-a05d-78a4ad5e7253.png)
```
- daterangepicker를 사용하여 체크인 클릭 시 달력이 표시되며 시작일/종료일 을 선택할 수 있다.
- 조회/예약은 오늘 ~ 다음달 말일 까지만 조회/예약이 가능하다.(SQL Query(CONNECT BY LEVEL)문 사용)
```
### 인원수조정
![image](https://user-images.githubusercontent.com/80470138/131908702-c7b352da-6ef4-4f02-8712-0927a74c30b4.png)
```
- 객실은 최대 3개까지, 성인/아이 는 5명 까지 추가 할수있다.
- 변경마다 텍스트가 자동으로 업데이트 되어 총 객실 및 인원수를 쉽게 확인/조정 할수있다.
```
### 호텔검색결과
![image](https://user-images.githubusercontent.com/80470138/132069366-402ed4b0-a826-4fc8-b690-48c0d20f4662.png)
```
- 시작일/출발일 기준으로 몇박인지 확인할 수 있다.(SimpleDateFormat + 밀리초차이값구하기(24 * 60 * 60 * 1000)
- 검색 후 입력값의 호텔의 갯수를 확인할 수 있다.(.size() 이용)
- 추천순 & 객실요금Sort, 호텔성급Sort, 호텔별 갯수로 필터를 사용할 수 있다.(Ajax를 사용하여 각 탭별 클릭시 데이터 표현)
- 호텔의 주소&성급과  슈페리어 싱글(기본) 객실의 가격을 확인할 수 있다.(DB의 호텔의 슈페리어싱글룸 객실정보)
- 출입국 정책을 확인할 수 있다.(corona/HealithFlight 링크)
- 적립되는 코인을 확인할 수 있다.(할인가격 * 0.03)
```
### 호텔디테일
![image](https://user-images.githubusercontent.com/80470138/132069938-35157cf0-f26a-43e2-b24d-7eb84435523a.png)
![image](https://user-images.githubusercontent.com/80470138/132070206-97831ead-23d7-44d5-9d3f-f3559a23e8a4.png)
![image](https://user-images.githubusercontent.com/80470138/132070311-222ff4e1-d017-4754-a0f3-41ae762e9909.png)

```
- DB에 저장된 호텔번호와 일치하는 호텔의 정보와 사진들을 확인할 수 있다.
- DB에 저장된 호텔번호와 일치하는 예약가능한 객실을 확인할 수 있다.
- 객실의 최대인원수와 침대의 갯수, 제공되는 편의사항들을 확인할 수 있다.(JSTL C:IF, C:FOREACH 사용)
- 전체보기 & 룸별 & 조식포함여부 등 필터를 사용할 수 있다.(Ajax를 사용하여 각 탭별 클릭시 데이터 표현)
- 객실마다 가지고 있는 편의시설을 확인할 수 있다.(JSTL의 C:IF사용)
- 각 공항별 직선거리를 계산하여 가장 가까운 공항의 정보를 표시한다.
```
### 지도에서호텔보기
![image](https://user-images.githubusercontent.com/80470138/132074246-9f0c4679-c429-41b4-86bd-a7c72e0a59c7.png)
```
- 버튼 클릭시 Modal로 페이지에 꽉 차도록 설정(z-index로 화면 위로 설정)
- Kakao Map 으로 DB에서 가져온 호텔 위도/경도 값으로 maker 추가 및 정보가 출력된다.
- 호텔 근처의 트래픽 정보를 실시간으로 확인할 수 있다.(Kakao)
- 은행/마트/약국 등 버튼을 클릭하여 주변의 시설들 확인할 수 있다.(Kakao)
- 각 공항별 직선거리를 계산하여 각 공항의 거리를 확인할 수 있다.(Kakao)
- 메인페이지의 스크롤바를 감춰서 페이지가 이동된 느낌을 받을 수 있다.
```
### 호텔제공사진
![image](https://user-images.githubusercontent.com/80470138/132074540-71c67055-bf5d-4eb5-8c72-70f0fb304970.png)
```
- 호텔사진&사진/시설정보 클릭시 Modal로 호텔에서 등록해둔 사진들을 확인할 수 있다.
- 호텔에 존재하는 시설들을 확인할 수 있다.(JSTL의 C:IF 사용)
```
### 호텔정보
![image](https://user-images.githubusercontent.com/80470138/132074612-43c2f0a5-964a-4162-b236-28f9f068e064.png)
```
- 호텔정보 버튼이나 더보기 를 누를시 Modal로 등록된 호텔정보를 확인할 수 있다.
```
### 예약정보
![image](https://user-images.githubusercontent.com/80470138/132074998-8db2da67-9ff5-44ac-b65b-affa45a6ce23.png)
![image](https://user-images.githubusercontent.com/80470138/132075008-516a8c83-25b2-433e-9428-ac174e5ae96e.png)
```
- 선택된 체크인/체크아웃/인원수/룸/옵션/가격/일수 등을 확인할 수 있다.
- 결제이후 적립될 코인을 확인할 수 있으며 코인 사용시 할인될 금액도 예상할 수 있다.(1코인 = 2원)
- 투숙객 정보
    * 성&이름 : 영어 대문자만 가능하며 잘못된글자 입력시 자동으로 삭제된다.(jQuery keyup + replace)
      제출 시 (공란일 경우 alert 발생)
    * 이메일주소 : 이메일주소만 사용가능하며 잘못된글자 입력시 자동으로 삭제된다.(jQuery keyup + replace)
      제출 시 (공란일 경우 alert 발생)
    * 휴대폰번호 : 번호를 입력하면 자동으로 하이폰이 추가된다.(jQuery keyup + replace)
      제출 시 (공란일 경우 alert 발생)
```
![image](https://user-images.githubusercontent.com/80470138/132075181-1b74acfa-3536-40c7-b332-bf9289284f0f.png)
```
    * 특별요청(선택) : 클릭시 펼쳐지며 호텔에 특별한 요청사항이 있을시 작성할 수 있다.
```
![image](https://user-images.githubusercontent.com/80470138/132075303-acaf5fc9-6a4c-4243-96ed-7b6b976b34e4.png)

```
- 예약이 완료되면 alert창으로 성공/실패 여부를 확인할 수 있으며 이메일로 결제 및 예약정보가 전송된다.
```
### 예약확정
![image](https://user-images.githubusercontent.com/80470138/132075343-e1e40ee3-4df4-4710-949a-8d473f3015bf.png)
```
- GoogleSMTP 및 Javax.mail 를 사용하여 예약이 확정되면 예약정보에서 입력한 이메일로 예약 및 결제정보가 전송된다.
- 예약번호가 자동으로 생성되며 예약번호로 예약정보를 조회할 수 있다.
```

### 코로나19해외여행자안전가이드
![image](https://user-images.githubusercontent.com/80470138/132077696-e73abecf-b851-4275-be90-f5a68171edd7.png)
![image](https://user-images.githubusercontent.com/80470138/132077705-01d42a8f-584f-44ba-a67e-640c0701cef7.png)
![image](https://user-images.githubusercontent.com/80470138/132077719-05f5dddc-66a6-4aa8-8f2d-9eeebd2d98d6.png)
![image](https://user-images.githubusercontent.com/80470138/132077722-dd2ae710-c7a1-4eff-8324-6b352aa52cd0.png)
![image](https://user-images.githubusercontent.com/80470138/132077727-bc83524b-e1bc-4f97-86f2-38340d903462.png)
![image](https://user-images.githubusercontent.com/80470138/132077732-f3944179-9d4e-4071-a00a-ca325de6ede6.png)
```
- 여행정보/도움말 및 안내/ 구호활동 를 확인할 수 있다.
- 각 탭은 클릭시 scrollTop을 이용하여 탭이 있는 위치로 스크롤바가 이동된다.
```
### 코로나19관련여행제한안내
![image](https://user-images.githubusercontent.com/80470138/132077853-abeb3ef7-8fe8-4fa7-a350-68fb281ce536.png)
```
- 선택한 국가에 따라서 GoogleMap의 Center가 해당 국가의 수도의 위도/경도 값을 받아 이동된다.
- 선택한 국가의 코로나19로 인한 입국제한 조치를 확인할 수 있다.
- 지도는 다크모드/일반모드를 지원한다.
- 지도 클릭시 클릭한 곳의 정보를 확인할 수 있다.
```
### 안전한비행을위한노력
![image](https://user-images.githubusercontent.com/80470138/132077878-b9b68111-0aa9-4063-be7e-0ebb7117ec5e.png)
![image](https://user-images.githubusercontent.com/80470138/132077888-0595cb94-57ff-44f8-89ee-95b7edefb5bd.png)
![image](https://user-images.githubusercontent.com/80470138/132077892-dc0e8a6c-df14-4e0b-a1b8-be97b939a6d7.png)
![image](https://user-images.githubusercontent.com/80470138/132077896-d7463ddf-8273-4668-b8ac-d6b185e126b4.png)
![image](https://user-images.githubusercontent.com/80470138/132077905-ff8140f8-f92c-4b9d-9c6f-ed1352bb781b.png)
![image](https://user-images.githubusercontent.com/80470138/132077929-7145d2b9-c54d-4233-a99d-80f06e000483.png)
```
- 공통적인 항공사/공항에서 코로나19로 인한 방역사항을 확인할 수 있다.
- 항공사별 안전조치를 따로 확인할 수 있다.
- 영문알파벳 순으로 표시되며 기본값은A로 설정되어있다.
- 알파벳 필터를 사용할 수 있다.(Ajax를 사용하여 각 알파벳 클릭시 데이터 표현)
- 보기 버튼 클릭시 DB에 저장된 각 항공사별 방역사항이 담긴 페이지로 이동된다.
```

### 뉴스룸
![image](https://user-images.githubusercontent.com/80470138/132078019-1b35a18b-83e2-4359-bc3f-517540a5f848.png)
```
- Footer에 있는 뉴스룸 클릭시 뉴스룸 메인 페이지로 이동된다.
- 등록된순서 기준으로 정렬되어 가장 최근의 콘텐츠를 제일 위에서 확인할 수 있다.
```

### 뉴스디테일
![image](https://user-images.githubusercontent.com/80470138/132078066-ac63fb83-a432-438d-aaef-9b7745dccfeb.png)
```
- 뉴스 타이틀 & 내용 & 사진 클릭시 뉴스디테일 페이지로 이동된다.
- 뉴스번호를 기준으로 검색되어 EL표현식으로 값이 표현된다.
```
