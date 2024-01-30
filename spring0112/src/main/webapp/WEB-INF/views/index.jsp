<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>BootStrap 01</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet" href="css/style_x_ui.css">
<link rel="stylesheet" href="node_modules/reset.css/reset.css">




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>



 <!-- include summernote css/js-->
    <link href="summernote-bs5.css" rel="stylesheet">
    <script src="summernote-bs5.js"></script>
<style>

.text-bg-light{
color: #e6ecf0 !important;
background-color: #191970 !important;
}

.row {
    --bs-gutter-x: 0.1rem;
    }
</style>

<script>
@import "../node_modules/bootstrap/scss/bootstrap";


$(function(){
	var exampleModal = document.getElementById('exampleModal')
	exampleModal.addEventListener('show.bs.modal', function (event) {
	  // Button that triggered the modal
	  var button = event.relatedTarget
	  // Extract info from data-bs-* attributes
	  var recipient = button.getAttribute('data-bs-whatever')
	  // If necessary, you could initiate an AJAX request here
	  // and then do the updating in a callback.
	  //
	  // Update the modal's content.
	  var modalTitle = exampleModal.querySelector('.modal-title')
	  var modalBodyInput = exampleModal.querySelector('.modal-body img')

	  modalTitle.textContent = recipient
	  modalBodyInput.src = recipient
	})
	
	
    $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 5',
        tabsize: 2,
        height: 100
      });
	
})
</script>
<script>

	//첫번째 dropdown
	function toggleDropdown() {
	    $('.dropdown').toggleClass('active'); 
	}//toggleDropdown

    $(function() {
   	 // 클릭된 요소가 드롭다운 메뉴 또는 해당 텍스트인 경우 아무 작업도 하지 않음
   	// 클릭된 요소가 드롭다운 메뉴가 아니라면 메뉴를 숨김
   	$(document).on('click', function(e) {
   	    var d = $('.dropdown'), t = $('.dropdown-text');
   	    if (!$(e.target).closest('.dropdown, .dropdown-text').length) d.removeClass('active');
   	  });//dropdown
   
   	  $('.post').hover(
   	        function() {
   	            // 마우스 호버 시 알림 삭제 및 차단 버튼 표시
   	            $(this).find('.bi-x-circle').css('display', 'inline-block');
   	            $(this).find('.bi-x-circle').css('color', 'red');
   	        },
   	        function() {
   	            // 마우스 떠날 때 버튼 숨김
   	            $(this).find('.bi-x-circle').css('display', 'none');
   	        }
   	    ); // post_body
   	
    });//jquery
   	 
   	  
    $(document).ready(function() {
        var isAltMenuVisible = false; // .alt 메뉴가 보이는지 여부를 저장하는 변수

        // Click event to hide the .alt menu when clicking outside of it
        $(document).on('click', function(e) {
            var dropdown = $('.alt');
            if (!$(e.target).closest('.bi-x-circle, .alt').length) {
                if (isAltMenuVisible) {
                    $('.alt').css('display', 'none');
                    $('.bi-x-circle').removeClass('hovered'); // hover 클래스 제거
                    isAltMenuVisible = false; // .alt 메뉴가 감춰진 상태로 설정
                }
            }
        });

        // Click event for the bi-x-circle icon to toggle the dropdown
        $('.bi-x-circle').on('click', function() {
            var altMenu = $(this).siblings('.alt');
            altMenu.toggle(); // 토글 메뉴 표시/감춤
            $(this).toggleClass('hovered'); // hover 클래스 토글
            isAltMenuVisible = !isAltMenuVisible; // .alt 메뉴 상태 업데이트
        });

        // Click event for the .alt menu to hide it
        $('.alt').on('click', function(e) {
            e.stopPropagation(); // .alt 메뉴를 클릭해도 document의 click 이벤트가 발생하지 않도록 함
        });

        // Click event for the "알림차단" option
        $('.alt a:contains("알림차단"),.alt a:contains("알림삭제")').on('click', function() {
            // Custom logic for 알림차단
            $('.alt').css('display', 'none'); // 알림차단 클릭 시 메뉴 감추기
            $('.bi-x-circle').removeClass('hovered'); // hover 클래스 제거
            isAltMenuVisible = false; // .alt 메뉴가 감춰진 상태로 설정
        });

    });

  
</script>
</head>
 <body>
 
 <div id="view-box" style="display: flex; justify-content: center; border-left: 1px solid var(--twitter-background-color)" >
 

	 <nav style="margin-top: 20px;" >
        <div class="nav_logo-wrapper">
       		<img class="nav_logo" src="images/apple.jpg">
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
        
        <div class="Menu_options">
            <span class="material-icons">email</span>
            <h2>메시지</h2>
        </div>
       
        <div class="Menu_options" style=" background-color: var(--twitter-background-color); border-radius: 30px; color: var(--twitter-theme-color);">
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
        <div class="header dropdown">
             <span class="material-icons" style="font-size: 35px;">notifications</span>
             <span class="material-symbols-outlined dropdown-text" style="float: right; padding-top: 10px; font-size: 30px;" onclick="toggleDropdown()">pending</span>
        	 <div class="dropdown-content" onclick="toggleDropdown()">
		        <a href="#">v모두 읽은 상태로 표시</a>
		        <a href="#">알림설정</a>
		     </div>	
        </div>

        <div class="breadcrmb_div">
		  <ul class="nav nav-tabs" id="myTab" role="tablist">
			  <li class="nav-item" role="presentation">
			    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">전체</button>
			  </li>
			  <li class="nav-item" role="presentation">
			    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">확인완료</button>
			  </li>
			  <li class="nav-item" role="presentation">
			    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">언급</button>
			  </li>
		  </ul> 
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

                    <div class="post_header-discription ">
                        <p>
                           <strong>lets_be_next</strong> 님이 회원님을
						   <div class="name">
						   	팔로우하기 시작했습니다.
						   </div>
						   <button class="followBtn">팔로우</button>
						   <i class="bi bi-x-circle"></i>
                       </p>
                       <div class="alt">
					    <a href="#">알림삭제</a>
					    <a href="#">알림차단</a>
					  </div>
                    </div>
                </div>
            </div>
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
                           <strong>lets_be_next</strong> 님이 회원님을
						   <br>
						   <div class="name">
						   	팔로우하기 시작했습니다.
						   </div>
						   <button class="followBtn">팔로우</button>
						   <i class="bi bi-circle-fill"></i>
						   <i class="bi bi-x-circle" id="toggleDropdownIcon"></i>
                       </p>
                       <div class="alt" id="myDropdown">
					    <a href="#">알림삭제</a>
					    <a href="#">알림차단</a>
					    
					  </div>
                    </div>
                </div>
            </div>
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
                           <strong>lets_be_next</strong> 님이 회원님의 게시물을
						   <br>
						   <div class="name">
						   	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;좋아합니다.
						   </div>
						    <i class="bi bi-x-circle" id="toggleDropdownIcon"></i>
                       </p>
                       <div class="alt" id="myDropdown">
					    <a href="#">알림삭제</a>
					    <a href="#">알림차단</a>
					  </div>
                    </div>
                </div>
            </div>
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
                          <strong>lets_be_next</strong> 님이 댓글을 남겼습니다.
						  <div class="photo-frame">
					        <a href=""><img src="images/page-profile-image.png"></a>
					      </div>
					       <i class="bi bi-x-circle" id="toggleDropdownIcon"></i>
                       </p>
                       <div class="alt" id="myDropdown">
					    <a href="#">알림삭제</a>
					    <a href="#">알림차단</a>
					  </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- main section end -->
    
 </div>



<!-- Modal -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

          <div class="mb-3">
            <label for="recipient-name" class="col-form-label"><img></label>
          </div>


      </div>

    </div>
  </div>

<!-- Modal End -->
  </body>
  
 <script async src="https://cdn.jsdelivr.net/npm/es-module-shims@1/dist/es-module-shims.min.js" crossorigin="anonymous"></script>
    <script type="importmap">
    {
      "imports": {
        "@popperjs/core": "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/esm/popper.min.js",
        "bootstrap": "https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.esm.min.js"
      }
    }
    </script>
    <script type="module">
      import * as bootstrap from 'bootstrap'

      new bootstrap.Popover(document.getElementById('popoverButton'))
    </script>
  
  
</html>