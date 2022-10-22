<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="dao.BookRepository"%>
<%@page import="dto.BookVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
      request.setCharacterEncoding("UTF-8");
      String path="E:\\A_TeachingMaterial\\4.MiddleProject\\workspace\\BookMarket\\WebContent\\resources\\images";
      //2)파일업로드 객체 생성	
	  DiskFileUpload upload = new DiskFileUpload();
      //환경설정 해주기
      upload.setSizeMax(1000000); //1Mbytes
	  upload.setSizeThreshold(4096); //메모리 최대 크기(4M)
	  upload.setRepositoryPath(path);//임시 저장 경로 
	  //폼페이지 item받아오기
	  List items = upload.parseRequest(request);
		//5) 열거형 타입으로 변환
	  Iterator params = items.iterator();
     
	
	  String bookId = "";
      String name = "";
      String author = "";
      String publisher = "";
      String releaseDate = "";
      String description = "";
      String category ="";
      String condition = "";
      String fileName = "";
      //int바꿔둔것들
      String unitPrice ="";
      String totalPages = "";
      String unitsInStock = "";
      //숫자형
      int price = 0;
      int pages = 0;
      int stock = 0;
      
      
      BookRepository dao=BookRepository.getInstance();
      //6)요청 파라미터가 없을때까지 반복해주기
      while(params.hasNext()){
    	  FileItem item = (FileItem)params.next();
    	  
    	  if(item.isFormField()) {
	    	  if(item.getFieldName().equals("bookId")){
	    		  bookId = item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("name")){
	    		  name = item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("unitPrice")){
	    		  unitPrice = item.getString("UTF-8"); 
	    		  
	    		  //폼페이지에서 상품 가격이 입력되지 않았다면 0으로 처리
	    		  if(unitPrice.isEmpty()){
	    			  price =0;
	    		  }else{
	    			  price = Integer.parseInt(unitPrice);
	    		  }
	    	  }else if(item.getFieldName().equals("author")){
	    		  author = item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("publisher")){
	    		  publisher = item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("releaseDate")){
	    		  releaseDate = item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("description")){
	    		  description = item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("category")){
	    		  category =  item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("condition")){
	    		  condition =  item.getString("UTF-8");
	    	  }else if(item.getFieldName().equals("totalPages")){
	    		  totalPages = item.getString("UTF-8"); 
	    		  //폼페이지에서 상품 가격이 입력되지 않았다면 0으로 처리
	    		  if(totalPages.isEmpty()){
	    			  pages =0;
	    		  }else{
	    			  pages = Integer.parseInt(totalPages);
	    		  }
	     	 }else if(item.getFieldName().equals("unitsInStock")){
		    	  unitsInStock = item.getString("UTF-8"); 
				  //폼페이지에서 상품 가격이 입력되지 않았다면 0으로 처리
				  if(unitsInStock.isEmpty()){
					  stock =0;
				  }else{
					  stock = Integer.parseInt(unitsInStock);
				  }
	     	 }
      	  } else {//6-2) 파일 데이터
	          String fileFieldName = item.getFieldName(); //요청 파라미터명
			  fileName = item.getName(); //저장 파일명(mouse01.png)
			 
	    	  String contentType = item.getContentType(); //images/jpeg
	       	  //순수한 파일명만 추출
	       	  
	       	  fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
	    	  long fileSize = item.getSize(); //파일크기
	    	  //파일객체 생성(copy 설계)
	    	  File file = new File(path+"/"+fileName);
	    	  //copy실행
	    	  item.write(file);
	    	  
	    	  out.println("------------------<br/>");
	    	  out.println("요청 파라미터 명: "+fileFieldName +"<br />");
	    	  out.println("저장 파일 명: "+fileName+"<br />");
	    	  out.println("파일 콘텐츠 타입: "+contentType+"<br />");
	    	  out.println("파일 크기: "+fileSize+"<br />");
          }
       
    } // end while
      
      
    BookVO addBook =new BookVO();
    addBook.setBookId(bookId);
    addBook.setName(name);
    addBook.setUnitPrice(price);
    addBook.setAuthor(author);
    addBook.setPublisher(publisher);
    addBook.setReleaseDate(releaseDate);
    addBook.setTotalPages(pages);
    addBook.setDescription(description);
    addBook.setCategory(category);
    addBook.setUnitsInStock(stock);
    addBook.setCondition(condition);
    addBook.setFileName(fileName);
      
      dao.addBook(addBook);
      
      response.sendRedirect("products.jsp");
      %>