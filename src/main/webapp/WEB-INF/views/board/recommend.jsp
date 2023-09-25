<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@ include file="../includes/header.jsp" %>

<div class="buster-light">
<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> Recommended Movies</h1>
					<ul class="breadcumb">
						<li class="active"><a href="/">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span> Recommended Movies</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="page-single movie_list">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-12 col-xs-12">
				<c:forEach items="${recommend}" var="movie">
				<div class="movie-item-style-2">
					<img src="/resources/images/uploads/image181.jpg" alt="">
					<div class="mv-item-infor">
						<h6><a href="moviesingle_light.html"><c:out value="${movie.mi_title }"/> <span>(2012)</span></a></h6>
						<p class="rate"><i class="ion-android-star"></i><span><c:out value="${movie.mi_total_point}"/> </span> /10</p>
						<p class="describe"><c:out value="${movie.md_text}"/> Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity...</p>
						<p class="run-time"> Run Time: <c:out value="${movie.md_runtime}"/>. <span>상영가 : <c:out value="${movie.md_grade}"/></span>. <span>Release: 1 May 2015</span></p>
						<p>Director: <a href="#"><c:out value="${movie.md_director}"/> </a></p>
						<p>Stars: <a href="#"><c:out value="${movie.md_actor}"/> </a></p>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
		</div>



<%@ include file="../includes/footer.jsp" %>