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
            </div>
        </div>
    </section>
</body>
</html>