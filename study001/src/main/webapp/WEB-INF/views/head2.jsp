<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>CROSS</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet" href="css/style_x_ui.css">
<link rel="stylesheet" href="node_modules/reset.css/reset.css">
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/headers/">



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>


<style>

input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

.userfile{

width:80px;
height:80px;
}

pre{    white-space: pre-wrap;    background: #EEE;}

</style>

<script>



$(function(){

	
})


</script>

    
    
</head>
 <body>
 
 <div id="view-box" style="display: flex; justify-content: center; border-left: 1px solid var(--twitter-background-color);" >
 

	 <nav style="margin-top: 20px;" >
	    <div class="nav_logo-wrapper" >
       		<img class="nav_logo" src="images/apple.jpg" >
        </div>
        
	 	<div class="profile-wrapper " style="">
	 		<div class="profile-img">
	 			<div style="" class="img-wrapper rounded-5">
	 				
	 			</div>
	 		</div>
	 		<div class="profile-name">
	 			<div style="margin: 4px;"><h2>Name</h2></div>
	 		</div>
	 		<div class="profile-follow" style="display: flex; margin-top:20px;">
	 			<div style="margin:0 4px;"><h4>팔로우</h4></div> 
	 			<div style="margin:0;">100</div>

	 			<div style="margin:0 4px 0 10px;"><h4>팔로워</h4></div> 
	 			<div style="margin:0;">100</div>
	 		</div>
	 	
	 	</div>
	 
	 


        <div class="Menu_options active">
            <span class="material-icons">home</span>
            <h2>홈</h2>
        </div>

        <div class="Menu_options">
            <span class="material-icons">person</span>
            <h2>프로필</h2>
        </div> 
        
        <div class="Menu_options">
            <span class="material-icons">bookmark</span>
            <h2>북마크</h2>
        </div> 
        
        <div class="Menu_options" style="background-color: var(--twitter-background-color); border-radius: 30px; color: #b19cd9;">
            <span class="material-icons">email</span>
            <h2>메시지</h2>
        </div>
       
        <div class="Menu_options">
            <span class="material-icons">notifications</span>
            <h2>알림</h2><span class="badge text-bg-light rounded-pill align-text-bottom">27</span>
        </div>

		 <div class="Menu_options">
            <span class="material-icons">tag</span>
            <h2>검색</h2>
        </div>
		
		<div><br></div>
	 
	 	<div class="Menu_options">
	 		<span class="material-icons">logout</span>
	 		<h2>로그아웃</h2>
	 	</div>
	 </nav>


 <main>
        <div class="header">
            <span class="material-icons" style="font-size: 35px; color:#BA68C8">
				email
			</span>
        </div>
        <script>
        	$(function(){
        		$("#home-tab").click(function(){
	       			location.href = "/";
        			
        		});//nav home-tab clik
        		
        		$("#profile-tab").click(function(){
        			location.href = "/head";
        		});//nav profile-tab clik
        		
        		$("#contact-tab").click(function(){
        			location.href = "/head2";
        		});//nav contact-tab clik
        		
        		
        		$(".post").click(function(){
        			// Get user information from the clicked post
                    var userProfileImage = $(this).find('.post_profile-image .user').html();

                    // Update modal content with user information and post content
                    $('#exampleModal .modal-body .col-form-label').html(userProfileImage);
                    

                    // Show the modal
                    $('#exampleModal').modal('show');
        			
        		});//post click
        		
        		//선택삭제 모달창
        		$("#deleteBtn1").click(function(){

                    // Show the modal
                    $('#exampleModal2').modal('show');
        			
        		});//deleteBtn1 click
        		
        		//선택삭제 모달창
        		$("#deleteBtn2").click(function(){

                    // Show the modal
                    $('#exampleModal3').modal('show');
        			
        		});//deleteBtn1 click
        		
        	    // .post 클래스를 가진 요소를 클릭했을 때의 이벤트 리스너
        		// Click event for #check
        	    $('.check').click(function(event){
        	        // 클릭 이벤트의 기본 동작 방지
        	        event.preventDefault();
        	        //상위 요소로 이벤트 전파 중지
        	        event.stopPropagation();
        	     	
        	        // Get the current color of #check
        	        var currentColor = $(this).css('color');
        	        // 빨간색과 원래 색상 간 전환
                    if (currentColor === 'rgb(255, 0, 0)') {
                        $(this).css('color', ''); // 기본 색상으로 재설정
                        $(this).css('display', ''); // 빨간색으로 설정
                        $(this).closest('.post').removeClass('hover');
                    } else {
                        $(this).css('color', 'red'); // 빨간색으로 설정
                        $(this).css('display', 'inline-block'); // 빨간색으로 설정
                        $(this).closest('.post').addClass('hover');
                    }
	                
        	    });//check
        	    
        	});//jquery
        	
        </script>
        <!-- 모달 창 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content" style="border: 2px solid #b19cd9; border-radius: 1rem;">
		      <div class="modal-header" style="width: 495px;">
		        <span class="material-icons" style="font-size: 35px; color:#BA68C8; position: relative; top: 5px;">email</span>
		        <h5 class="modal-title" id="exampleModalLabel"></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form>
		          <div class="mb-3" style="position: relative; right: 10px;">
		          	<div class="sender"></div>
		          </div>
		          <div class="mb-3" style="position: relative; left: 65px; bottom: 50px;">
                        <h3>name
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>
                                <br>
                                <span id="date">1월 18일</span>
                            </span>
                        </h3>
	                </div>
		          <div class="mb-3">
		            <div class="form-control" id="message-text" style="">
		            	<ul>
		            	  <li>안녕하세요. 다름이 아니라 저번주에 정했던 미팅 약속을 부득이하게 취소하게 되어 연락드립니다.</li>
		            	  <li><img alt="" src="/images/apple.jpg" style="width:80px; height:80px object-fit:cover;" ></li>
		            	</ul>
		            </div>
		          </div>
		        </div>
		        </form>
		      </div>
		      <div class="modal-footer" style="position: relative; top: 190px; right: 495px; width: 490px;">
		         <button type="button" id="send_btn" class="btn btn-primary">보내기</button>
		      </div>
		    </div>
		  </div>
		  <!-- delete모달 창 -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content" style="border: 2px solid #b19cd9; border-radius: 1rem; height: 250px; width: 400px;">
		      <div class="modal-header" style="width: 395px;">
		        <span class="material-icons" style="font-size: 35px; color:#BA68C8; position: relative; top: 5px;">email</span>
		        <h5 class="modal-title" id="exampleModalLabel"></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form>
		          <div class="mb-3" style="position: relative; text-align: center;top: 30px;">
                        <h3>선택하신 알림을 삭제하시겠습니까?</h3>
	                </div>
		        </div>
		        <div  style="position: relative; bottom: 25px; left: 150px;">
		         <button type="button" id="send_btn" class="btn btn-primary">확인</button>
		      	</div>
		       </form>
		      </div>
		    </div>
		  </div>

		<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content" style="border: 2px solid #b19cd9; border-radius: 1rem; height: 250px; width: 400px;">
		      <div class="modal-header" style="width: 395px;">
		        <span class="material-icons" style="font-size: 35px; color:#BA68C8; position: relative; top: 5px;">email</span>
		        <h5 class="modal-title" id="exampleModalLabel"></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form>
		          <div class="mb-3" style="position: relative; text-align: center;top: 30px;">
                        <h3>모든 알림을 삭제하시겠습니까?</h3>
	                </div>
		        </div>
		        <div  style="position: relative; bottom: 25px; left: 150px;">
		         <button type="button" id="send_btn" class="btn btn-primary">확인</button>
		      	</div>
		       </form>
		      </div>
		    </div>
		  </div>
        <!-- nav -->
        <div class="d-flex align-items-center" style="position:relative;">
        	 <div class="breadcrmb_div">
			  <ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item" role="presentation">
				    <div class="nav-link" id="home-tab"  data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="false">쪽지쓰기</div>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link " id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false" >받은쪽지함</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link active" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="true">보낸쪽지함</button>
				  </li>
			  </ul> 
		   </div>
        </div>
        <!-- 검색 -->
      <div class="d-flex align-items-center">
	    <form class="w-100 me-3" role="search">
           <input style="width: 100%; margin-left: 10px; height: 30px; margin-bottom: 10px; margin-top: 10px;" type="search" class="form-control" placeholder="검색" aria-label="Search">
         </form>
	    <!-- 선택삭제,전체삭제 -->
	    <button class="delete-button" id="deleteBtn1" style="position: relative; left: 18px;">선택삭제</button>
	    <button class="delete-button" id="deleteBtn2" >전체삭제</button>
	 </div>
	   <!-- 쪽지 부분 -->
	   <c:forEach var="messCrossDto" items="${list2}">
       <div class="post">
            <div class="post_profile-image">
			<div class="user"><img src="/upload/${messCrossDto.cross_userDto.profile_img}" style="width: 60px;  height: 60px; position: relative; border-radius: 30px; color: var(--twitter-theme-color); right: 6px; bottom: 2px;" ></div>
			</div>
            <div class="post_body">
                <div class="post_header">
                    <div class="post_header-text">
                        <h3>${messCrossDto.cross_userDto.name}
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>${messCrossDto.messageDto.target_id}님께 보낸 쪽지
                                <span id="date"><fmt:formatDate value="${messCrossDto.messageDto.created}" pattern="MM월dd일"/> </span>
                            </span>
                        </h3>
                    </div>
                    <div class="post_header-discription">
                        <ul>
                           <li>${messCrossDto.messageDto.mcontent}</li>
                       </ul>
                    </div>
                    <span class="material-symbols-outlined check">check_circle</span>
                </div>
            </div>
        </div>
       </c:forEach>
       <div class="post">
            <div class="post_profile-image">
			<div class="user"></div>
			</div>
            <div class="post_body">
                <div class="post_header">
                    <div class="post_header-text">
                        <h3>name
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>@name님께 보낸 쪽지
                                <span id="date">1월 18일</span>
                            </span>
                        </h3>
                    </div>
                    <div class="post_header-discription">
                        <ul>
                           <li>뭐해? 오늘 시간 돼?</li>
                       </ul>
                    </div> <!-- message content -->
                    <span class="material-symbols-outlined check">check_circle</span>
                </div> <!-- post_header -->
            </div> <!-- post_body -->
        </div><!-- post -->
</main>

</div>
</body>
  
</html>