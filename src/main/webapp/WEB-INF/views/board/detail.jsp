<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="breadcumb-area" style="background-image: url(/img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>상세 보기</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->

    <!-- ****** Archive Area Start ****** -->
    <section class="archive-area section_padding_80">
        <div class="container">
            <div class="row" style="width: 800px;margin: 0px auto">
              <table class="table">
                <tbody>
                  <tr>
                    <th width=20% class="danger text-center">번호</th>
                    <td width=30% class="text-center">${vo.no }</td>
                    <th width=20% class="danger text-center">작성일</th>
                    <td width=30% class="text-center">${vo.dbday }</td>
                  </tr>
                  <tr>
                    <th width=20% class="danger text-center">이름</th>
                    <td width=30% class="text-center">${vo.name }</td>
                    <th width=20% class="danger text-center">조회수</th>
                    <td width=30% class="text-center">${vo.hit }</td>
                  </tr>
                  <tr>
                    <th width=20% class="danger text-center">제목</th>
                    <td colspan="3" class="text-left">${vo.subject }</td>
                  </tr>
                  <tr>
                    <td colspan="4" class="text-left" valign="top"
                     height="200">
                      <pre style="white-space: pre-wrap;border:none;background-color: white">${vo.content }</pre>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" class="text-right">
                     <a href="/board/update?no=${vo.no }" class="btn btn-xs btn-success">수정</a>
                     <a href="/board/delete?no=${vo.no }" class="btn btn-xs btn-info">삭제</a>
                     <a href="/board/list" class="btn btn-xs btn-warning">목록</a>
                    </td>
                  </tr>
                </tbody>
              </table>
              <!-- Comment Area Start -->
                            <div class="comment_area section_padding_50 clearfix">
                                <h4 class="mb-30">2 Comments</h4>

                                <ol>
                                    <!-- Single Comment Area -->
                                    <li class="single_comment_area">
                                        <div class="comment-wrapper d-flex">
                                            <!-- Comment Meta -->
                                            <div class="comment-author">
                                                <img src="/img/blog-img/17.jpg" alt="">
                                            </div>
                                            <!-- Comment Content -->
                                            <div class="comment-content">
                                                <span class="comment-date text-muted">27 Aug 2018</span>
                                                <h5>Brandon Kelley</h5>
                                                <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>
                                                <a href="#">수정</a>
                                                <a class="active" href="#">삭제</a>
                                            </div>
                                        </div>
                                        
                                    </li>
                                    <li class="single_comment_area">
                                        <div class="comment-wrapper d-flex">
                                            <!-- Comment Meta -->
                                            <div class="comment-author">
                                                <img src="/img/blog-img/19.jpg" alt="">
                                            </div>
                                            <!-- Comment Content -->
                                            <div class="comment-content">
                                                <span class="comment-date text-muted">27 Aug 2018</span>
                                                <h5>Brandon Kelley</h5>
                                                <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>
                                                <a href="#">수정</a>
                                                <a class="active" href="#">삭제</a>
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </div>

                            <!-- Leave A Comment -->
                            <div class="leave-comment-area section_padding_50 clearfix">
                                <div class="comment-form">
                                   
                                    <form action="#" method="post" >
                             
                                        
                                            <textarea name="message" cols="95" rows="5" placeholder="Message" style="float: left;display: inline-block;"></textarea>
                                            <button type="submit" class="btn-primary" style="float: left;width: 80px;height: 100px;display: inline-block;">댓글쓰기</button>
                                        
                                        
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
              
            </div>
        </div>
    </section>
</body>
</html>