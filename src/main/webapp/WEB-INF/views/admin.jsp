<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
     
<%@ include file="includes/header.jsp"%>
 
  
<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>Admin Page</h1>
					<ul class="breadcumb">
						<li class="active"><a href="/">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span>admin</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
		<div class="buster-light">
<div class="page-single">
	<div class="container">
		<div class="tabs">
			<ul class="tab-links tabs-mv">
				<li class="active"><a href="#movieRegist">영화등록</a></li>
				<li><a href="#userManagement"> 회원관리</a></li>                    
			</ul>
							
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="form-style-1 user-pro" action="#">
					<div class="tab-content">
						<form action="/" class="tab active" method="post" id="movieRegist">
							<h4>01. 영화등록 </h4>
							<div class="row">
								<div class="col-md-6 form-it">
									<label>영화제목</label>
									<input type="text" name="mi_title" required="required">
								</div>
								<div class="col-md-6 form-it">
									<label>개봉상태</label>
									<select name="mi_condition">
									  <option value="0">상영중</option>
									  <option value="1">개봉예정</option>
									</select>
								</div>
								<div class="col-md-6 form-it">
									<label>감독</label>
									<input type="text" name="md_director">
								</div>
								<div class="col-md-6 form-it">
									<label>출연진</label>
									<input type="text" name="md_actor">
								</div>
								<div class="col-md-6 form-it">
									<label>소개</label>
									<textarea name="md_text"></textarea>
								</div>
								<div class="col-md-6 form-it">
									<label>장르</label>
									<select name="g_num" required>
									  <option value="1">액션</option>
									  <option value="2">SF</option>
									  <option value="3">로맨스</option>
									  <option value="4">코메디</option>
									</select>
								</div>
								<div class="col-md-6 form-it">
									<label>런타임</label>
									<input type="text" name="md_runtime">
								</div>
								<div class="col-md-6 form-it">
									<label>분류등급</label>
									<input type="text" name="md_grade">
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 form-it">
									<input type="file" name="mi_thumbnail" accept="image/gif, image/jpeg, image/png">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2">
									<input class="submit" type="submit" value="save">
								</div>
							</div>	
						</form>
				
						<form action="#" class="userManagement tab" id="userManagement">
							<c:forEach items="member" var="member">
								<h4>02. 회원관리</h4>
								<div class="row">
									<div class="col-md-2 form-it">
										<label>회원 번호</label>
										<input type="text" value="<c:out value="{member.m_num}"/>" readonly="readonly">
									</div>
									<div class="col-md-2 form-it">
										<label>회원 아이디</label>
										<input type="text" name="m_id" value="<c:out value="{member.m_num}"/>" readonly="readonly">
									</div>
									<div class="col-md-2 form-it">
										<label>닉네임</label>
										<input type="text" name="m_nick" value="<c:out value="{member.m_nick}"/>" readonly="readonly">
									</div>
									<div class="col-md-3">
										<label>회원변경</label>
										<input class="submit modifyUser" type="submit" value="변경" id="modifyUser">
									</div>
									<div class="col-md-3">
										<label>회원삭제</label>
										<input class="submit deleteUser" type="submit" value="삭제" id="deleteUser">
									</div>
								</div>
							</c:forEach>	
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		</div>
<%@ include file="includes/footer.jsp"%>