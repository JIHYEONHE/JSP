/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.37
 * Generated at: 2022-10-18 10:33:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.math.BigDecimal;
import dto.BookVO;
import java.util.ArrayList;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/E:/A_TeachingMaterial/4.MiddleProject/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/BookMarket/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1664350167869L));
    _jspx_dependants.put("jar:file:/E:/A_TeachingMaterial/4.MiddleProject/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/BookMarket/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.math.BigDecimal");
    _jspx_imports_classes.add("dto.BookVO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"/resources/css/bootstrap.min.css\">\r\n");
      out.write("<title>장바구니</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
 // 스크립틀릿
   // 장바구니 = 세션
   // 장바구니 고유번호 = session.getId()
   String cartId = session.getId();
   out.println("<p>cartId : " + cartId + "</p>");



      out.write("\r\n");
      out.write("<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록\r\n");
      out.write("      include 액션 태그를 작성 -->\r\n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   <div class=\"jumbotron\">\r\n");
      out.write("      <!-- container : 이 안에 내용이 있다 -->\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("         <h1 class=\"display-3\">장바구니</h1>\r\n");
      out.write("      </div>\r\n");
      out.write("   </div>\r\n");
      out.write("   \r\n");
      out.write("   <!-- ------------- 장바구니 상세 내용 시작-------------- -->\r\n");
      out.write("   <div class=\"container\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("         <table width=\"100%\">\r\n");
      out.write("            <tr>\r\n");
      out.write("               <td align=\"left\">\r\n");
      out.write("                  <a href=\"deleteCart.jsp?cartId=");
      out.print(cartId);
      out.write("\" class=\"btn btn-danger\">삭제하기</a>\r\n");
      out.write("               </td>\r\n");
      out.write("               <td align=\"right\">\r\n");
      out.write("                  <a href=\"shippingInfo.jsp?cartId=");
      out.print(cartId);
      out.write("\" class=\"btn btn-success\">주문하기</a>\r\n");
      out.write("               </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("         \r\n");
      out.write("         </table>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- 장바구니 출력 시작 -->\r\n");
      out.write("      <!-- padding-top : 영역의 위쪽 여백을 50px -->\r\n");
      out.write("      <div style=\"padding-top:50px;\">\r\n");
      out.write("         <table class=\"table table-hover\">\r\n");
      out.write("            <tr>\r\n");
      out.write("               <th>상품</th><th>가격</th><th>수량</th>\r\n");
      out.write("               <th>금액</th><th>비고</th>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");
 // 스크립틀릿
               // 장바구니(session) 안에 들어있는 상품 목록(cartlist)을 가져오자
               ArrayList<BookVO> cartlist = 
               		(ArrayList<BookVO>)session.getAttribute("cartlist");
               //금액을 누적하는 변수
               double sum = 0;
               // 장바구니가 비어있다면..
               if(cartlist == null){
                  
            
      out.write("\r\n");
      out.write("            <tr>\r\n");
      out.write("               <td colspan=\"5\" style=\"text-align:center;\">장바구니에 상품이 없습니다.</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");

               } else{ // 상품이 있다면..
            	   //상품 리스트(ArrayList<ProductVO>)에서
            	   //하나씩 상품(ProductVO)을 꺼내보자
            	   for(BookVO product : cartlist){
            		   //금액 = 가격*수량
            			double total = product.getUnitPrice() *
            				product.getQuantity();
            		   BigDecimal totalBig = new BigDecimal(total);
            		   //금액을 누적
            		   sum = sum + total;
            
      out.write("\r\n");
      out.write("            <tr>\r\n");
      out.write("               <td>\r\n");
      out.write("               \t\t");
      out.print(product.getBookId());
      out.write("-\r\n");
      out.write("               \t\t");
      out.print(product.getName());
      out.write("\r\n");
      out.write("               </td>            \r\n");
      out.write("               <td>");
      //  fmt:formatNumber
      org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_005fformatNumber_005f0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
      boolean _jspx_th_fmt_005fformatNumber_005f0_reused = false;
      try {
        _jspx_th_fmt_005fformatNumber_005f0.setPageContext(_jspx_page_context);
        _jspx_th_fmt_005fformatNumber_005f0.setParent(null);
        // /cart.jsp(86,19) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatNumber_005f0.setValue(product.getUnitPrice());
        // /cart.jsp(86,19) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatNumber_005f0.setPattern("#,###");
        int _jspx_eval_fmt_005fformatNumber_005f0 = _jspx_th_fmt_005fformatNumber_005f0.doStartTag();
        if (_jspx_th_fmt_005fformatNumber_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatNumber_005f0);
        _jspx_th_fmt_005fformatNumber_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatNumber_005f0, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatNumber_005f0_reused);
      }
      out.write("</td>            \r\n");
      out.write("               <td>");
      out.print(product.getQuantity());
      out.write("</td>            \r\n");
      out.write("               <td>");
      //  fmt:formatNumber
      org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_005fformatNumber_005f1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
      boolean _jspx_th_fmt_005fformatNumber_005f1_reused = false;
      try {
        _jspx_th_fmt_005fformatNumber_005f1.setPageContext(_jspx_page_context);
        _jspx_th_fmt_005fformatNumber_005f1.setParent(null);
        // /cart.jsp(88,19) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatNumber_005f1.setValue(total);
        // /cart.jsp(88,19) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatNumber_005f1.setPattern("#,###");
        int _jspx_eval_fmt_005fformatNumber_005f1 = _jspx_th_fmt_005fformatNumber_005f1.doStartTag();
        if (_jspx_th_fmt_005fformatNumber_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatNumber_005f1);
        _jspx_th_fmt_005fformatNumber_005f1_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatNumber_005f1, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatNumber_005f1_reused);
      }
      out.write("</td>            \r\n");
      out.write("               <td>\r\n");
      out.write("               \t\t<a href=\"removeCart.jsp?id=");
      out.print(product.getBookId());
      out.write("\"\r\n");
      out.write("               \t\t\tclass=\"badge badge-danger\">삭제</a>\r\n");
      out.write("               </td>            \r\n");
      out.write("            </tr>\r\n");
      out.write("            ");

               		}//end for
					//소수점 제거
					BigDecimal big = new BigDecimal(sum);
			
      out.write("\r\n");
      out.write("            <tr>\r\n");
      out.write("            \t<th></th>\r\n");
      out.write("            \t<th></th>\r\n");
      out.write("            \t<!-- 총액 : 금액의 합계 -->\r\n");
      out.write("            \t<th>총액</th>\r\n");
      out.write("            \t<th>");
      //  fmt:formatNumber
      org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_005fformatNumber_005f2 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
      boolean _jspx_th_fmt_005fformatNumber_005f2_reused = false;
      try {
        _jspx_th_fmt_005fformatNumber_005f2.setPageContext(_jspx_page_context);
        _jspx_th_fmt_005fformatNumber_005f2.setParent(null);
        // /cart.jsp(104,17) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatNumber_005f2.setValue(big);
        // /cart.jsp(104,17) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_fmt_005fformatNumber_005f2.setPattern("#,###");
        int _jspx_eval_fmt_005fformatNumber_005f2 = _jspx_th_fmt_005fformatNumber_005f2.doStartTag();
        if (_jspx_th_fmt_005fformatNumber_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005ffmt_005fformatNumber_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatNumber_005f2);
        _jspx_th_fmt_005fformatNumber_005f2_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatNumber_005f2, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatNumber_005f2_reused);
      }
      out.write("</th>\r\n");
      out.write("            \t<th></th>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");
 
               }//end if
            
      out.write("\r\n");
      out.write("         </table>\r\n");
      out.write("         <a href=\"products.jsp\" class=\"btn btn-secondary\">&laquo;쇼핑 계속하기</a>\r\n");
      out.write("      </div>      \r\n");
      out.write("      <!-- 장바구니 출력 끝 -->\r\n");
      out.write("   </div>\r\n");
      out.write("   <!-- ------------- 장바구니 상세 내용 끝-------------- -->\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   <!-- 끝맺음 -->\r\n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
