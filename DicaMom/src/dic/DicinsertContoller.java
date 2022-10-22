package dic;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DicinsertContoller
 */
@WebServlet("/insert.do")
public class DicinsertContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String dicId = request.getParameter("dicId");
		String dicPw = request.getParameter("dicPw");
		String dicPw1 = request.getParameter("dicPw1");
		String dicName = request.getParameter("dicName");
		String dicNic = request.getParameter("dicNic");
		String dicBir = request.getParameter("dicBir");
		String dicAddr = request.getParameter("dicAddr");
		String dicAddr2 = request.getParameter("dicAddr2");
		String dicPh = request.getParameter("dicPh");
		String dicMail = request.getParameter("dicMail");
		
		request.setAttribute("chkId", dicId);

		DicService dicService = DicServiceImple.getInstance();
		// 3. 회원정보 등록하기
		DicVO vo = new DicVO();

		vo.setDicId(dicId);
		vo.setDicPw(dicPw);
		vo.setDicName(dicName);
		vo.setDicNic(dicNic);
		vo.setDicBir(dicBir);
		vo.setDicAddr(dicAddr);
		vo.setDicAddr2(dicAddr2);
		vo.setDicPh(dicPh);
		vo.setDicMail(dicMail);

		int cnt = dicService.insertMember(vo);

		String msg = "";
		if (cnt > 0) {
			// 성공
			msg = "성공";

		} else {
			// 실패
			msg = "실패";

		}
		System.out.println(msg);
		
		response.getWriter().write(msg);


		// request.getRequestDispatcher("/view/dic/insertForm.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String dicId = request.getParameter("dicId");
		String dicPw = request.getParameter("dicPw");
		String dicPw1 = request.getParameter("dicPw1");
		String dicName = request.getParameter("dicName");
		String dicNic = request.getParameter("dicNic");
		String dicBir = request.getParameter("dicBir");
		String dicAddr = request.getParameter("dicAddr");
		String dicAddr2 = request.getParameter("dicAddr2");
		String dicPh = request.getParameter("dicPh");
		String dicMail = request.getParameter("dicMail");
		
		request.setAttribute("chkId", dicId);

		DicService dicService = DicServiceImple.getInstance();
		// 3. 회원정보 등록하기
		DicVO vo = new DicVO();

		vo.setDicId(dicId);
		vo.setDicPw(dicPw);
		vo.setDicName(dicName);
		vo.setDicNic(dicNic);
		vo.setDicBir(dicBir);
		vo.setDicAddr(dicAddr);
		vo.setDicAddr2(dicAddr2);
		vo.setDicPh(dicPh);
		vo.setDicMail(dicMail);

		int cnt = dicService.insertMember(vo);

		String msg = "";
		if (cnt > 0) {
			// 성공
			msg = "성공";

		} else {
			// 실패
			msg = "실패";

		}
		System.out.println(msg);

		HttpSession session = request.getSession();
		session.setAttribute("msg", msg);

		// 4. 목록 조회 화면으로 이동
		// req.getRequestDispatcher("/member/list.do").forward(req, resp);

		String redirectUrl = request.getContextPath();
		response.sendRedirect(redirectUrl);
//		//
	}

}
