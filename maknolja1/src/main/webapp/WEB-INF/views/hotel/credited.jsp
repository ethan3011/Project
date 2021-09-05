<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../../resources/navbar/navbarStyle.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- font Gowun Dodum-->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
    </style>

    <!-- Icons font CSS-->
    <link href="../../../resources/form/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../../../resources/form/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <script src="https://kit.fontawesome.com/55331e7f28.js" crossorigin="anonymous"></script>

    <!-- Vendor CSS-->
    <link href="../../../resources/form/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="../../../resources/form/vendor/select2/select2.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../../../resources/form/css/main.css" rel="stylesheet" media="all">
    <title>MAKNOLJA</title>

</head>
<body>
<%@include file="../common/header.jsp" %>

<%--Body 시작--%>
<h1>결제완료 !</h1>

<!-- Fotter 시작 Container -->
<div class="container">
    <div class="ft-award">
        <img src="../../resources/images/reward/win2.png" alt="왕관이미지">
        <ul class="ft-award-list">
            <li>서울시 HTA 주관</li>
            <li>올해의파이널프로젝트대상 2년 연속 수상</li>
        </ul>
    </div>
    <div class="ft-license">
        <ul class="ft-license-copy">
            <li>Copyright © 2021 MAKNOLJA.com Travel Korea Pte. Ltd. All rights reserved.</li>
            <li>Site Operator: MAKNLOJA.com Travel Korea Pte. Ltd. (라이선스 No. 12345, 대표 3인(정규선,유상수,안준상))</li>
            <li>서울특별시 종로구 봉익동 율곡로10길 105 디아망</li>
            <li>고객센터: 한국 070-8240-3211 해외 +82 70-8240-3211</li>
        </ul>
    </div>
</div>


<div class="modal-outline">
    <div class="modal fade" id="login-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">로그인</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="modal-login" method="post" action="login">
                        <div class="row px-2 mb-2">
                            <p>아이디</p>
                            <input type="email" class="modal-form-control" id="loginUserId" name="id"
                                   placeholder="이메일 주소"/>
                        </div>
                        <div class="row px-2 mb-2">
                            <p>비밀번호</p>
                            <input type="password" class="modal-form-control" id="loginUserPwd" name="password"
                                   placeholder="비밀번호를 입력하세요"/>
                        </div>
                        <div class="row px-2 mb-2">
                            <a href="#">아이디 찾기</a>
                            <a href="#">비밀번호 찾기</a>
                            <div class="modal-policy">
                                <p>막놀자닷컴 회원 가입 시 <a href="#">이용약관</a> 및 <a href="#">개인정보정책</a>에 동의하는 것으로 간주합니다.</p>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary-w95 mb-5" id="btn-login">로그인</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <div class="modal-sns-inform">
                        <p>또는 SNS 계정 사용하기</p>
                    </div>
                    <div class="sns-list">
                        <a class="sns-item" href="#">Naver</a>
                        <a class="sns-item" href="#">Kakao</a>
                        <a class="sns-item" href="#">Google</a>
                    </div>
                </div>
                <div class="modal-last-footer">
                    <p>아직 막놀자닷컴 회원이 아니세요? <a href="#" class="modal2-register">회원가입 ></a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 모달 로그인/회원가입 을 눌렀을때 나오는 회원가입 창 -->
<div class="modal-outline">
    <div class="modal fade" id="register-modal" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel2">막놀자닷컴 회원가입</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="modal-register" method="post" action="register">
                        <div class="row px-2 mb-2">
                            <p>이메일</p>
                            <input type="email" class="modal-form-control" id="registerUserId" name="id"
                                   placeholder="이메일 주소">
                        </div>
                        <div class="row px-2 mb-2">
                            <p>비밀번호</p>
                            <input type="password" class="modal-form-control" id="registerUserPwd" name="password"
                                   placeholder="비밀번호를 입력하세요">
                        </div>
                        <div class="row px-2 mb-2">
                            <div class="modal-policy-login">
                                <input type="checkbox" name="agreePolicy" value="agree" checked/><span>막놀자닷컴 회원 가입 시 <a
                                    href="#">이용약관</a> 및 <a href="#">개인정보정책</a>에 동의하는 것으로 간주합니다.</span>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary-w95 mb-5" id="btn-register">회원가입</button>
                    </form>
                </div>
                <div class="modal-last-footer">
                    <p>막놀자닷컴 회원이신가요? <a href="#" id="modal2-login">로그인 ></a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!--임시비밀번호 모달 -->
<div class="modal-outline">
    <div class="modal fade" id="forgetPwd-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">비밀번호 찾기</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="modal-forgetPwd" method="post" action="forgetPwd">
                        <div class="row px-2 mb-2">
                            <p>아이디(이메일주소)</p>
                            <input type="email" class="modal-form-control" id="forgetPwd" name="id" placeholder="이메일 주소를 입력해 주세요" />
                        </div>
                        <button type="button" class="btn btn-primary-w95 mb-5" id="sendTemPwd">임시비밀번호 전송하기</button>
                    </form>
                </div>
                <div class="modal-last-footer">
                    <p>아직 막놀자닷컴 회원이 아니세요? <a href="#" class="modal2-register">회원가입 ></a></p>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Bootstrap5-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Jquery JS-->
<script src="../../../resources/form/vendor/jquery/jquery.min.js"></script>

<!-- Vendor JS-->
<script src="../../../resources/form/vendor/select2/select2.min.js"></script>
<script src="../../../resources/form/vendor/jquery-validate/jquery.validate.min.js"></script>
<script src="../../../resources/form/vendor/bootstrap-wizard/bootstrap.min.js"></script>
<script src="../../../resources/form/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="../../../resources/form/vendor/datepicker/moment.min.js"></script>
<script src="../../../resources/form/vendor/datepicker/daterangepicker.js"></script>

<!-- Main JS-->
<script src="../../../resources/form/js/global.js"></script>

<script type="text/javascript">

</script>
</body>
</html>