<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta Tags for Bootstrap 4 -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap 4 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
/* Header Parallax Element Style*/ 
.paral {
min-height: 600px;
background-attachment: fixed;
background-size: cover;
background-position: 50% 50%;
}
 
/* Paragrapgh for Parallax Section */ 
.paral p {
font-size: 24px;
color:#f5f5f5;
text-align: center;
line-height: 60px;
}
 
/* Heading for Parallax Section */ 
.paral h1 {
color: rgba(255, 255, 255, 0.8);
font-size: 60px;
text-align: center;
padding-top: 60px;
line-height: 100px;
}
 
/* Image for Parallax Section */ 
.paralsec {
background-image: url("https://img.webnots.com/2017/05/parallax.jpg");
}
 
.paralsec1 {
background-image: url("https://img.webnots.com/2017/05/parallax1.jpg");}
 
.paralsec2 {
background-image: url("https://img.webnots.com/2015/11/parallax2.jpg");
}
 
/* Add more images for more sections */
 
/* Remove Bottom Margin from Jumbotron */
.jumbotron{margin-bottom: 0;}
 
/* Footer */
.wn-footer {
padding: 2.5rem 0;
text-align: center;
color: white;
background-color: #607D8B;
border-top: .05rem solid #e5e5e5;
}
 
.wn-footer a {
color: yellow;
}
</style>
</head>
<body>
<%--      <%@ include file="navBar.jsp" %>
 --%>
<!-- First Parallax Section -->
<div class="jumbotron paral paralsec">
<h1 class="display-3">Here is a heading 1</h1>
<p class="lead">Here is a short description 1</p>
<p class="lead">
<a class="btn btn-info btn-lg btn-md" href="#" role="button">Here is a button 1</a>
</p>
</div>
 
<!-- Second Parallax Section -->
<div class="jumbotron paral paralsec1">
<h1 class="display-3">Here is a heading 2</h1>
<p class="lead">Here is a short description 2</p>
<p class="lead">
<a class="btn btn-warning btn-lg btn-md" href="widgets.html" role="button">Here is a button 2</a>
</p>
</div>
 
<!-- Third Parallax Section -->
<div class="jumbotron paral paralsec2">
<h1 class="display-3">Here is a heading 3</h1>
<p class="lead">Here is a short description 2</p>
<p class="lead">
<a class="btn btn-primary btn-lg btn-md" href="themes.html" role="button">Here is a button 3</a>
</p>
</div>
 
<!-- Add More Parallax Sections Here -->
<!-- Footer Section -->
<footer class="wn-footer">
<p>This is a Bootstrap 4 parallax page with jumbotron created by <a href="https://www.webnots.com/">WebNots Web Consulting Services</a></p>
<p>
<a href="#">Back to top</a>
</p>
</footer>
<!-- Bootstrap 4 Scripts -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>