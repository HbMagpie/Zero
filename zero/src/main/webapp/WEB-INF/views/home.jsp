<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>Zero</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/assets/zero_favicon.ico" />     

<!-- CSS -->
<link href="/resources/css/styles.css" rel="stylesheet" />
<link href="/resources/css/home.css" rel="stylesheet" />
	
</head>

<style>
@font-face {
    font-family: 'SUITE-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
* {font-family: 'SUITE-Regular';}
</style>

<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">Zero</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">포토카드</a></li>
                        <li class="nav-item"><a class="nav-link" href="/album/list">앨범</a></li>
                        <li class="nav-item"><a class="nav-link" href="/faq/list">FAQ</a></li>
                        <!-- Start! 검색 기능 -->
                        <li>
                        <div class="search_wrap">
                			<form id="searchForm" action="/product/search" method="get">
                				<div class="search_input">
                					<input type="text" name="keyword">
                    				<button class='btn search_btn'>검 색</button>                				
                				</div>
                			</form>
                		</div>
                        </li>
                        <!-- End! 검색 기능 -->           
                    </ul>
                    <c:if test="${loginUserid != null}">
                    	<form class="d-flex">
                    	<input class= "useremail" type="hidden" value="${loginUserid}">
                    	<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    		<li class="nav-item"><a href="/user/myInfo" class="nav-link" id="myinfo">내정보</a></li>
                    		<li class="nav-item"><a href="/cart" class="nav-link">장바구니</a></li>
                    		<li class="nav-item"><a href="/user/logout"class="nav-link">로그아웃</a></li>
                    	</ul>
                    	</form>
                    </c:if>
                    <c:if test="${loginUserid == null}">
                    	<form class="d-flex">
                    	<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    		<li class="nav-item"><a href="/user/login" class="nav-link">로그인</a></li>
                    		<li class="nav-item"><a href="/user/join"class="nav-link">회원가입</a></li>
                    	</ul>
                    </form>
                    </c:if>
                </div>
            </div>
        </nav>
        
        <div>
        <img class="card-img-top" src="/resources/img/main1.png" />
        </div>
                            
 <!-- Start! footer 부분 -->      
 <footer>
 <hr color="#6aa888">
	 
 <table>  
 	<tr>
 	  <td>ZERO Inc.</td>
 	</tr>
	<tr>
      <td style="color:#dddddd;">기업명 : (주)Zero<br>
      	  대표  :  제로<br>
      	  주소  : 서울특별시 ㅇㅇ구 ㅇㅇ로<br>
      	  사업자등록번호 : 111-11-11111<br>
      	  통신판매업 신고 번호 : 2023-서울ㅇㅇ-1111<br>
      	  E-mail : zero@zero.com<br>
      	  고객센터 : 00-0000-0000<br>
      	  호스팅 서비스 사업자 : Amazon Web Services. Inc.<br>
      </td> 
    </tr> 
	<tr>	 
	  <td style="cursor:pointer;"onclick="window.open('/admin/pers', '개인정보 취급방침', 'width=500, height=600')">개인정보 취급방침</td>  
	</tr>
	<tr>
	  <td style="cursor:pointer;" onClick="window.open('/admin/use', '개인정보 취급방침', 'width=500, height=600')">이용 약관</td>
	</tr>
 </table>
  <br>
  <p>Copyright ⓒ All Rights Reserved By Zero<p>
  <br>
</footer>
<!-- End! footer 부분 -->

		<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="/resources/js/swiper.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resources/js/scripts.js"></script> 
        <script>
        /* 상품 조회 페이지 */
        $(".move").on("click", function(e){
        	
        	e.preventDefault();
        	
        	moveForm.append("<input type='hidden' name='catename' value='"+$(this).attr("href") + "'>");
        	moveForm.attr("action", "/product/productDetail");
        	moveForm.submit();
        	
        	
        });
        </script>     
    </body>
</html>