<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en" data-bs-theme="auto">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <head><script src="/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>짹짹이</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/headers/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
    
    /* Copyright © 2022 sajith-dilshan. All Rights Reserved.
 * This project is licensed under the MIT License.
 * Please find the license file in the root directory.
 *
 * style.css
 *
 * Author: sajith dilshan <sajithd784@gmail.com>
 */


 @font-face {
    font-family: "TwitterChirp";
    src: url("../fonts/chirp-regular-web.woff") format("woff2"),
         url("../fonts/chirp-bold-web.woff") format("woff"),
         url("../fonts/chirp-heavy-web.woff") format("woff");
}

html{
    font-family: TwitterChirp, 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

*{
    box-sizing: border-box;
}

:root{
    --twitter-theme-color: #191970;
    --twitter-background-color: #e6ecf0;
}

.nav_logo{
    width: 50px;
    height: 50px;
    color: var(--twitter-theme-color);
    fill: currentColor;
}

.Menu_options{
    display: flex;
    align-items: center;
    cursor: pointer;
}

.Menu_options .material-icons{
    padding: 20px;
}

.Menu_options h2{
    font-size: 20px;
    font-weight: bold;
    margin-right: 20px;
}

.Menu_options:hover{
    background-color: var(--twitter-background-color);
    border-radius: 30px;
    color: var(--twitter-theme-color);
}

.tweet_btn{
    width: 100%;
    background-color: var(--twitter-theme-color);
    border: none;
    color: white;
    font-weight: bold;
    border-radius: 30px;
    height: 50px;
}

body{
    display: flex;
    height: 100vh;
    max-width: 100%;
    margin-left: auto;
    margin-right: auto;
    padding: 0 10px;
    
    justify-content: center;
}

nav{
    flex: 0.2;
    border-right: 1px solid var(--twitter-background-color);
    min-width: 250px;
    margin-top: 20px;
    padding-left: 20px;
    padding-right: 20px;
}

/* == menu section */

main{
    flex: 0.5; 
    border-right: 1px solid var(--twitter-background-color);
    min-width: fit-content;
    overflow-y: scroll;
    -ms-overflow-style: none;
    scrollbar-width: none;

}

.header{
    position: sticky;
    top: 0;
    background-color: white;
    z-index: 10;
    border: 1px solid var(--twitter-background-color);
    padding: 15px 20px;

}

main::-webkit-scrollbar{
    display: none;

}

.header h2{
    font-weight: bold;
    font-size: 20px;
}

.tweet_box-input img{
    border-radius: 50%;
    height: 40px;


}

.tweet_box{
    padding-bottom: 10px;
    border-bottom: 8px solid var(--twitter-background-color);
    padding-right: 10px;
}

.tweet_box form{
    display: flex;
    flex-direction: column;
}

.tweet_box-input{
    display: flex;
    padding: 20px;

}

.tweet_box-input input{
    flex: 1;
    margin-left: 20px;
    font-size: 20px;
    border: none;
    outline: none;
}

.tweet_box button{ 
    background-color: var(--twitter-theme-color);
    color: white;
    font-weight: bold;
    border-radius: 30px;
    border: none;
    width: 80px;
    height: 40px;
    margin-top: 20px;
    margin-left: auto; 
}

.post_profile-image img{
    border-radius: 50%;
    height: 40px;

}

.post{
    display: flex;
    align-items: flex-start;
    border-bottom: 1px solid var(--twitter-background-color);
    padding-bottom: 10px;
}

.post_body img{
    width: 180px;
    object-fit: contain;
    border-radius: 20px;

}

.post_footer{
    display: flex;
    justify-content: space-between;
    margin-top: 10px;


}

.post_badge{
    font-size: 14px !important;
    color: var(--twitter-theme-color);
    margin-right: 5px;

}

.header-icon-section{
    font-weight: 600;
    font-size: 12px;
    color: grey;
}

.post_header-text h3{
    font-size: 13px;
    margin-bottom: 5px;

}

.post_header-discription{
    margin-bottom: 10px;
    font-size: 15px;
}

.post_body{ 
    flex: 1;
    padding: 10px;
}

.post_profile-image{
    padding: 20px;
}


/* == aside  */

aside{
    flex: 0.3; 
}

.aside_input{
    display: flex;
    align-items: center;
    background-color: var(--twitter-background-color);
    padding: 10px;
    border-radius: 20px;
    margin-top: 10px;
    margin-left: 20px;
}

.aside_input input{
    border: none;
    background-color: var(--twitter-background-color);
    outline: none;
}

.aside_search-icon{
    color: gray;
}

.aside_container{
    margin-top: 15px;
    margin-left: 20px;
    padding: 20px;
    background-color: #f5f8fa;
    border-radius: 20px;
}

.aside_container h2{
    font-size: 18px;
    font-weight: 800;
}






.box-footer{
    display: block;
    margin-top: 10px;
    padding-right: 10px;
    padding-left: 10px;

}
    
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      .bd-mode-toggle {
        z-index: 1500;
      }
      
      .nav-item:hover{
      border-color: rgba(0, 0, 0, 0); background-color: rgb(29, 155, 240);
      text-overflow: unset; color: rgb(255, 255, 255);
      text-overflow: unset;
      border-radius:12px;
      }
      
      .btn:hover{
      border-color: rgba(0, 0, 0, 0); background-color: rgb(29, 155, 240);
      text-overflow: unset; color: rgb(255, 255, 255);
      }
      
    </style>

    
    <!-- Custom styles for this template -->
    <link href="headers.css" rel="stylesheet">
  </head>
  <body>
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

    <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
      <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
              id="bd-theme"
              type="button"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
      </button>
      <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
            Light
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
            Dark
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
            Auto
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
      </ul>
    </div>

    
<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <symbol id="bootstrap" viewBox="0 0 118 94">
    <title>Bootstrap</title>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
  </symbol>
  <symbol id="home" viewBox="0 0 16 16">
    <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
  </symbol>
  <symbol id="speedometer2" viewBox="0 0 16 16">
    <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
    <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
  </symbol>
  <symbol id="table" viewBox="0 0 16 16">
    <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
  </symbol>
  <symbol id="people-circle" viewBox="0 0 16 16">
    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
  </symbol>
  <symbol id="grid" viewBox="0 0 16 16">
    <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
  </symbol>
</svg>

<main>
  <h1 class="visually-hidden">Headers examples</h1>

  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><img style="width:60px; height:50px;" src="../images/tt.jpg"/></svg>
        <span class="fs-4">짹짹이</span>
      

     <!--  <ul class="nav nav-pills">
        <li class="nav-item"><a href="#" class="nav-link" aria-current="page">쪽지쓰기</a></li>
        <li class="nav-item"><a href="#" class="nav-link">받은쪽지함</a></li>
        <li class="nav-item"><a href="#" class="nav-link">보낸쪽지함</a></li>
      </ul>
      -->
    </header> 
  </div>


  <div class="container">
    <header class="d-flex justify-content-center py-3">
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="/head" class="nav-link" aria-current="page">쪽지쓰기</a></li>
        <li class="nav-item"><a href="/head2" class="nav-link">받은쪽지함</a></li>
        <li class="nav-item"><a href="/head3" class="nav-link">보낸쪽지함</a></li>
      </ul>
    </header>
  </div>


  
  


  

      
      
      <div class="d-flex align-items-center">
        <form class="w-100 me-3" role="search">
          <input style="width:100%" type="search" class="form-control" placeholder="검색" aria-label="Search">
        </form>
      </div>
      <br>
    

  <div class="container">
  <div class="row align-items-start">
    <div class="col">
      One of three columns
    </div>
    <div class="col">
      One of three columns
    </div>
    <div class="col">
      One of three columns
    </div>
  </div>
  <div class="row align-items-center">
    <div class="col">
      One of three columns
    </div>
    <div class="col">
      One of three columns
    </div>
    <div class="col">
      One of three columns
    </div>
  </div>
  <div class="row align-items-end">
    <div class="col">
      One of three columns
    </div>
    <div class="col">
      One of three columns
    </div>
    <div class="col">
      One of three columns
    </div>
  </div>
</div>
   

  <!-- <div class="container-fluid pb-3">
    <div class="d-grid gap-3" style="grid-template-columns: 1fr 2fr;">
      <div class="bg-body-tertiary border rounded-3">
        <br><br><br><br><br><br><br><br><br><br>
      </div>
      <div class="bg-body-tertiary border rounded-3">
        <br><br><br><br><br><br><br><br><br><br>
      </div>
    </div>
  </div> -->


  
  
<!-- <div id="Mo_message" class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="modalChoice">
  <div class="modal-dialog" role="document">
    <div class="modal-content rounded-3 shadow">
      <div class="modal-body p-4 text-center">
        <h5 class="mb-0">쪽지를 전송하시겠습니까?</h5>
        <p class="mb-0">Would you like to send a message?</p>
      </div>
      <div class="modal-footer flex-nowrap p-0">
        <button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 py-3 m-0 rounded-0 border-end"><strong>예</strong></button>
        <button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 py-3 m-0 rounded-0" data-bs-dismiss="modal">아니오</button>
      </div>
    </div>
  </div>
</div> -->


  
    
     
    

        <!-- <div class="text-end">
          <button type="button" class="btn btn-primary">보내기</button>
        </div>
      </div> -->
    

</main>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
