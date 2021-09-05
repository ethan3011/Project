# TOEIC-SPEAKING(토익시험 접수/점수확인 2021.06.15 ~ 2021.06.28)

## 프로젝트 개요
+ 3명이서 31일 동안 개발된 중앙HTA 세미 프로젝트 입니다.
+ TOEIC-SPEAKING은 toeicswt 를 모티브로 제작되었습니다.
+ 회원은 원하는 시험과목 및 일정을 확인 후 신청할 수 있다.
+ 비회원은 시험일정/소개 만 확인할 수 있다.
+ 관리자는 시험일정&센터&사용자에 대한 CRUD 작업이 가능하다.
+ 관리자 계정으로 로그인시 [내정보] 탭이 [관리자페이지]로 변경된다.
------------------------------------------------------------------
## 담당업무
+ 시험과목에 따른 시험 일정을 Ajax를 사용하여 출력하기
+ 시험과목 및 시험자에 대한 분포도 차트 출력하기
+ 신규 시험일정 등록 / 기존시험일정 수정 / 기존시험일정 삭제 기능
+ 신규 시험센터 등록 / 기존시험센터 수정 / 기존시험센터 삭제 기능
+ 모든 유저정보 확인 / 수험자 점수 입력 / 페이징처리
------------------------------------------------------------------
## 개발환경 및 기술
+ 개발환경
    +  OS : Window10
    +  DBMS : Oracle Database 11g
    +  WAS : Apache Tomcat 10
    +  Language : Java, Servlet/JSP, HTML5, CSS3, JavaScript,
    +  Framework : MyBatis
    +  Library : Ajax, jQuery, JSTL, EL, Lombok, Gson, log4j, commons-codec,
    +  형상관리 : Git
    +  API : Google Chart
+  개발툴
    + Design : Adobe CS5, BootStrap
    + Editor :  Eclipse

## Database ERD
![image](https://user-images.githubusercontent.com/80470138/132108195-459bbd84-1ce6-4c72-ac91-795951387afc.png)

## 메인화면
![image](https://user-images.githubusercontent.com/80470138/132108207-04d6b7c0-15eb-4396-9b77-adc83f022dd3.png)

## 담당업무구현
+ [온라인시험일정확인](#온라인시험일정확인)
+ [관리자메인페이지](#관리자메인페이지)
+ 


### 온라인시험일정확인
![image](https://user-images.githubusercontent.com/80470138/132108322-dac119f6-67f2-4aed-a077-7b055d020534.png)
```
- 각 시험과목 탭 클릭시 시험일정이 가장 최근 기준으로 각 과목의 시험이 출력된다. (AJAX)
- 시험날짜가 지난경우 [접수하기] 버튼이 표시되지 않는다.
- 각 시험마다 정원이 존재하며, 정원이 가득찰 시 [마감]으로 버튼이 표시되며 비활성화 된다.
- 접수하기 버튼을 눌러 각 시험에 대한 접수페이지로 이동할 수 있다.
```
### 관리자메인페이지
![image](https://user-images.githubusercontent.com/80470138/132108371-d8873693-c1e5-4a2a-b601-bf9fb77cec5b.png)
```
- navBar는 토글형식으로 작용되며 각 탭 클릭시 페이지가 이동된다.
- 전체 등록된 시험에 대한 분포도를 확인할 수 있다.(Google Chart)
- 최근 3개월의 신규 가입자 중 시험자/비시험자의 분포를 확인할 수 있다.(Google Chart)
```
### 시험일정추가
![image](https://user-images.githubusercontent.com/80470138/132108459-e4afb8eb-67ef-4284-b3c6-abc6c241d4ad.png)
```
- 기존 시험이 존재하는 경우, 선택한 시험이 등록된 센터와 시간이 같지 않는 경우에만 등록이 가능하다.
- 모든 input란은 JavaScript로 유효성 검사가 되어 공란일 경우 alert를 발생한다.
- 조건 : 
    - 과목명은 "등록할 과목을 선택해주세요" 일수 없다.
    - 시험일은 오늘 이전일 수 없다.
    - 시험일자는 접수시작일 이전일 수 없다.
    - 접수시작일은 접수마감일 이후일 수 없다.
    - 성적발표예정일은 시험일 이전일 수 없다.
```
![image](https://user-images.githubusercontent.com/80470138/132108492-3a92d2f6-9c18-47a1-a9c7-480a2ecb78f6.png)
![image](https://user-images.githubusercontent.com/80470138/132108504-a6bc6331-d654-4d4e-958e-c2965187a02e.png)
```
- 시험 과목을 선택할 수 있다.
- 등록 가능한 전체 시험 센터를 확인 또는 선택할 수 있다.
- 시험센터번호 또는 센터이름으로 검색하여 선택할 수 있다.
```

### 시험일정변경
![image](https://user-images.githubusercontent.com/80470138/132108574-6685b1a9-4b18-4ac0-92d8-b1859fb008a1.png)
```
- 선택한 시험일정 정보를 출력하여 편하게 확인/수정할 수 있다.
- 정원의 최소값은 50, 최대값은 500이다(min, max)
- 삭제되어 있는 시험을 다시 "정상" 상태로 변경할 수 있다.
- 기존에 시험을 신청한 인원수는 조정할 수 없다.
- 모든 input란은 JavaScript로 유효성 검사가 되어 공란일 경우 alert를 발생한다.
- 조건 : 
    - 시험일은 오늘 이전일 수 없다.
    - 시험일자는 접수시작일 이전일 수 없다.
    - 접수시작일은 접수마감일 이후일 수 없다.
    - 성적발표예정일은 시험일 이전일 수 없다.
```

### 시험일정삭제
![image](https://user-images.githubusercontent.com/80470138/132108717-2110cecc-ccca-403e-9afa-faf7b2658dc9.png)
```
- 등록되어있는 시험일정을 삭제할 수 있다.
- Update문이 사용되어 시험상태를 N으로 변경한다 (Y:정상/N:삭제)
- 시험의 상태가 "등록"인 시험만 삭제할 수 있다.
- 시험 선택시, 시험의 정보가 출력되며 지원자수가 있을경우 삭제할 수 없다.
- 시험일정 이외에는 모두 disabled 되어 클릭/수정 할 수없다.
- 시험일정을 선택하지 않은 경우 alert가 발생한다.
```

### 신규센터추가
![image](https://user-images.githubusercontent.com/80470138/132108740-4b64fa01-ebb0-49e6-8a24-8d67406c825d.png)
```
- 원하는 지역의 신규 센터를 추가할 수 있다.
- 지역 선택 후 센터명 및 정원을 입력하면 등록이 된다.
- 모든 input란은 JavaScript로 유효성 검사가 되어 공란일 경우 alert를 발생한다.
- 조건 :
    - 센터명/정원은 공란일 수 없다.
    - 센터명은 등록되어있는 센터명과 같을 수 없다.
    - 정원은 최소50명, 최대 500명 이하로만 등록할 수 있다.
```
### 센터정보변경
![image](https://user-images.githubusercontent.com/80470138/132108757-aa6e052b-007c-4643-8854-b7f700eeac6c.png)
```
- 선택한 지역에 등록되어 있는 센터들을 확인/수정할 수 있다.
- 시험센터 상태를 변경할 수 있다.(삭제된 센터 확인/수정 가능)
- 모든 input란은 JavaScript로 유효성 검사가 되어 공란일 경우 alert를 발생한다.
- 조건 :
    - 신규센터의 이름은 기존에 등록되어있는 신규센터와 같을 수 없다.
    - 시험센터 & 정원은 공란일 수 없다.
    - 정원은 최소50명, 최대 500명 이하로만 수정할 수 있다.
```

### 센터정보삭제
![image](https://user-images.githubusercontent.com/80470138/132108847-d8ea78e9-49a2-4f98-8b79-421aabdee2d3.png)
```
- 지역을 선택하면 센터리스트를 확인 후 센터에 등록된 시험이 없는 경우 삭제할 수 있다.(없을경우 공란표시)
- Update문이 사용되어 센터상태를 N으로 변경한다 (Y:정상/N:삭제)
```

### 수험자점수입력및수정
![image](https://user-images.githubusercontent.com/80470138/132108905-b3da6805-0e25-4257-a36e-c15e3286e6ac.png)
```
- 가입된 유저의 정보를 확인/수정할 수 있다.
- 탈퇴회원일 경우 "삭제"로 표시되며 버튼이 disabled 된다.
- 페이징처리가 되어있어 한 화면의 10명의 유저정보, 5번호 단위로 출력된다.
- 검색기능을 사용하여(mapper파일 choose, when 사용) 아이디/이름/연락처로 검색할 수 있다.
```
![image](https://user-images.githubusercontent.com/80470138/132109205-cd0467cc-9684-4595-9267-8dc40382e386.png)
![image](https://user-images.githubusercontent.com/80470138/132109196-0db700be-9784-4708-b85f-45dc22016539.png)
![image](https://user-images.githubusercontent.com/80470138/132109210-0cc13935-7c43-4848-a4c8-f8a0bcd91764.png)
```
- 아이디 & 이름 & 연락처 검색
```
![image](https://user-images.githubusercontent.com/80470138/132109229-3590f5fe-4dae-4e84-a597-6d7cb3c431f5.png)
```
- 페이징처리 1~5, 6~10, 11~15 처럼 5번호 단위로 출력된다.
```
![image](https://user-images.githubusercontent.com/80470138/132109153-4c7611d2-dd7f-4d9a-8d89-d67e6adb6387.png)
![image](https://user-images.githubusercontent.com/80470138/132109127-1cb0fe6a-e8bb-4464-bbd3-3c902ecbe8fb.png)
```
- 시험리스트는 시험일-과목-센터로 표시되며 선택시 시험정보를 입력할 수 있다.
- 다른 시험 정보도 확인할 수 있으며, 선택한 시험정보만 수정할 수 있다.
- LEVEL1 ~ LEVEL5 까지 입력할 수 있다.
```
