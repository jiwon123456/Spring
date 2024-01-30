<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>CROSS</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="css/style_x_ui.css">
<link rel="stylesheet" href="node_modules/reset.css/reset.css">
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/headers/">



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

 <!-- include summernote css/js-->
    <link href="css/summernote-lite.css" rel="stylesheet">
    <script src="js/summernote-lite.js"></script>
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
    
</head>
 <body>
 
 <div id="view-box" style="display: flex; justify-content: center; border-left: 1px solid var(--twitter-background-color);" >
 

	 <nav style="margin-top: 20px;" >
	    <div class="nav_logo-wrapper" >
       		<img class="nav_logo" src="images/apple.jpg">
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
       		});//click
       		
       		$("#profile-tab").click(function(){
       			location.href = "/head";
       		});//click
       		
       		$("#contact-tab").click(function(){
       			location.href = "/head";
       		});//click
       		
       		// .post 클래스를 가진 요소를 클릭했을 때의 이벤트 리스너
    		$(".post").click(function(){
                // Show the modal
                $('#exampleModal').modal('show');
    			
    		});//post click
       		
       	});//jquery
        </script>
        <!-- nav -->
        <div class="d-flex align-items-center" style="position:relative;">
        	 <div class="breadcrmb_div">
			  <ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item" role="presentation">
				    <button class="nav-link active" id="home-tab"  data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">쪽지쓰기</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false" >받은쪽지함</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">보낸쪽지함</button>
				  </li>
			  </ul> 
		   </div>
        </div>
        <!-- 검색 -->
        <div class="d-flex align-items-center">
         <form class="w-100 me-3" role="search">
           <input style="width: 70%; margin-left: 10px; height: 30px; margin-bottom: 10px; margin-top: 10px;" type="search" class="form-control" placeholder="검색" aria-label="Search">
         </form>
        </div>
		<div class="post">
            <div class="post_profile-image">
					<div class="user">
					</div>
				</div>
            <div class="post_body">
                <div class="post_header">
                    <div class="post_header-text">
                        <h3>Java
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>@java
                            </span>
                        </h3>
                    </div>

                    <div class="post_header-discription">
                        <p>
                           <strong>lets_be_next</strong> 입니다.
						   <br>
						   <div class="name">
						   	@nickname
						   </div>
						   <button class="followBtn">팔로우</button>
                       </p>
					  </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- 쪽지 쓰기 버튼 구성 -->
		<!-- <div style="margin-top: 20px; text-align: center;">
			<span class="material-icons" style="font-size: 50px; padding: 20px; color:#BA68C8">
				sentiment_satisfied_alt
			</span>
			<div>
			    <span class="message">쪽지쓰기에 오신 것을 환영합니다</span>
			</div>
			<br>
			<div>
			    <span>쪽지작성을 원하시면 아래 메시지 작성 버튼을 눌러주세요.</span>
			</div>
		</div> -->
	<!-- 모달 창 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content" style="background-color: #F3E5F5; border: 1px solid var(--twitter-background-color); border-radius: 1rem;">
		      <div class="modal-header">
		        <span class="material-icons" style="font-size: 35px; color:#BA68C8; position: relative; top: 5px;">email</span>
		        <h5 class="modal-title" id="exampleModalLabel"></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		   <div class="tweet_box">
            <form>
                <div class="tweet_box-input">
                	<div class="tweet_box-image rounded-5">
                    	<img src="images/profile01.jpg" alt="profile imagw">
                    	
                    </div>
                    <div id="text-area" class="rounded" style="position:relative;">
                    <!-- 
                    	<div id="write-box" style="outline:none; display: inline-block;width: 370px;"  contenteditable="true">
                    	</div>
                     -->
                     	<textarea rows="" cols="" class="content" id="write-box"  style="outline:none; width: 360px; border: none; resize: none; overflow: hidden" ></textarea>
                    
                    	<div id="image-area" style=""></div>
                    	
                    </div>


                </div>

                <div class="box-footer modal-footer" style="">
                    <label for="file" id="imgBtn" class="btn btn-sm btn-dark">사진등록</label>
					<input type="file" id="file" multiple="multiple">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
			        <button type="button" id="send_btn" class="btn btn-primary" style="background-color: #BA68C8; border: 1px solid var(--twitter-background-color);">보내기</button>


                 		 <script>
                 		 var fileCount = 0;

					      $(function(){
										    	  
					    	  const DEFAULT_HEIGHT = 16; // textarea 기본 height
					    	  
					    	  $("#currLocation").on("click",function(){
					    		  $("#locationModal").modal("show");
					    	  })
					    	  
					    	  $("#write-box").on("keydown",function(e){
					    		  console.log($(e.target).val());
					    	//	  console.log(e.target.style);
					    		  let text = $(e.target).val();
					    		  e.target.style.height=0;
					    		  e.target.style.height = DEFAULT_HEIGHT + e.target.scrollHeight + 'px';
//					    		 
								 if(text.length > 150)
								 {
								  console.log("글자수입력제한");
								  $(e.target).val(($(e.target).val().substring(0, 150)));
								  e.target.style.height = DEFAULT_HEIGHT + e.target.scrollHeight - 32 + 'px';
								 }

					    		 
					    	  })
					    	  
					    	  $("#text-area").click(function(){
					    		  $("#write-box").focus();
					    	  })
					    	  
					    	  $("#file").on("change",function(e){
					    		//  console.log(e);
					    		//  console.log(e.target.files.length);
					    		  var felement = e.target.files;
					    			 $("#image-area").html("");
					    			 fileCount=0;
					    		  for(var i = 0 ; i < e.target.files.length ; i++)
				    			  {
					    			  if(fileCount>3)
			    			  	        {
			    			  	        	alert("파일은 최대 네개까지만 첨부가능합니다.");
			    			  	        	break;
			    			  	        }
				    			  		
				    			  		var file = e.target.files[i];
				    			  		
				    			  		let name=file.name;
				    			  		
				    			  		//console.log(name);
				    			  		
				    			  	    if(isImageFile(file)) {
				    			  	    	
				    			  	      var reader = new FileReader(); 
				    			  	      reader.onload = function(e) {	
				    			  	    	 var img = document.createElement("img");
				    			  	    //	console.log("isImageFile",e.target);
				    			  	         img.setAttribute("src", e.target.result);
				    			  	       	 img.setAttribute("class", "userfile");
				    			  	       	 img.setAttribute("onmouseover","this.src='images/cancel.png'");
				    			  	       	 img.setAttribute("onmouseout","this.src='"+e.target.result+"'");
				    			  	       	 img.setAttribute("style","width:80px; height:80px; object-fit:cover;");
				    						 img.setAttribute("data-set",name);	  	       
				    			  	       	 $("#image-area").prepend(img);
				    			  	        
				    			  	       
				    			  	      }
					    			  	reader.readAsDataURL(file);
				    			  	    }
				    			  	  fileCount++;

				    			  }
					    	  })
					    	  

					    	  function isImageFile(file) {
								  // 파일명에서 확장자를 가져옴
								  var ext = file.name.split(".").pop().toLowerCase(); 
								  return ($.inArray(ext, ["jpg", "jpeg", "gif", "png"]) === -1) ? false : true;
								}
					    	  
					    	  $(document).on("click",".userfile",function(e){
					    			  
					    		  	const files = $("#file")[0].files;
					    		  	const dataTranster = new DataTransfer();
					    		  	const removeTargetId = $(e.target).attr("data-set");
					    		  	
					    		  	console.log("target : " , e);
					    	  		
					    	  		
					    	  		 Array.from(files).forEach(file => {
					    	  			console.log(removeTargetId+" "+file.name);
					    	  			 if(removeTargetId!=file.name)
				    	  				 {
					    	  				dataTranster.items.add(file);
				    	  				 }
					                 });
					    	  		$("#file")[0].files = dataTranster.files;
					    	  		$(e.target).remove();
					    	  		console.log($("#file")[0].files);
					    	  });
					    	  
					    	  
					    	  
							})
					    </script>
                </div>
            </form>
        </div>
	
	
	
	
	<!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content" style="background-color: #F3E5F5; border: 1px solid var(--twitter-background-color); border-radius: 1rem;">
	      <div class="modal-header">
	        <span class="material-icons" style="font-size: 35px; color:#BA68C8; position: relative; top: 5px;">email</span>
	        <h5 class="modal-title" id="exampleModalLabel"></h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form>
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">사용자검색</label>
	            <input type="text" class="form-control" id="recipient-name">
	          </div>
	          <div class="mb-3">
	            <label for="message-text" class="col-form-label">내용</label>
	            <textarea class="form-control" id="message-text"></textarea>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        <button type="button" id="send_btn" class="btn btn-primary" style="background-color: #BA68C8; border: 1px solid var(--twitter-background-color);">보내기</button>
	      </div>
	    </div>
	  </div>
	</div> -->
   	<script>
	    $(function(){
	   	 $("#send_btn").click(function(){
	   		 alert("ttt");
	   	 });
	    });
   	</script>
 </main>
    <!-- main section end -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 </body>
  
</html>