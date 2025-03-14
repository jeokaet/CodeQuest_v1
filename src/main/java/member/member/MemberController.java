package member.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import board.board.BoardDAO;
import board.board.BoardDAOImpl;
import board.board.BoardDTO;
import board.viewcount.ViewCountDAO;
import board.viewcount.ViewCountDAOImpl;
import board.viewcount.ViewCountDTO;
import game.playtime.PlaytimeDAO;
import game.playtime.PlaytimeDAOImpl;
import game.playtime.PlaytimeDTO;
import service.blacklist.BlackListDAO;
import service.blacklist.BlackListDAOImpl;
import service.qna.QnADAO;
import service.qna.QnADAOImpl;
import service.qna.QnADTO;
import service.qnareply.QnAReplyDAO;
import service.qnareply.QnAReplyDAOImpl;
import service.qnareply.QnAReplyDTO;
import utils.EmailUtil;
import utils.SecurityUtil;

@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	Gson g = new Gson();
	private MemberDAO dao = MemberDAOImpl.INSTANCE;
	private BoardDAO boardDao = BoardDAOImpl.INSTANCE;
	private BlackListDAO blackListDao = BlackListDAOImpl.INSTANCE;
	private PlaytimeDAO playtimeDao = PlaytimeDAOImpl.INSTANCE;
	private QnADAO qnaDao = QnADAOImpl.INSTACNE;
	private ViewCountDAO viewCountDao = ViewCountDAOImpl.INSTANCE;
	QnAReplyDAO qnaReplyDao = QnAReplyDAOImpl.INSTANCE;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String cmd = request.getRequestURI();
			if (cmd.equals("/member/addForm.do")) {
				request.getRequestDispatcher("/WEB-INF/views/member/signup.jsp").forward(request, response);

			} else if(cmd.equals("/member/valueCheck.do")) { //비동기 중복체크
				String value = request.getParameter("value");
				String field = request.getParameter("field");
				String column = null;
				if ("login_id".equals(field)) {
					column = "login_id";
				} else if ("nickname".equals(field)) {
					column = "nickname";
				} else if ("email".equals(field)) {
					column = "email";
				} else if ("phone".equals(field)) {
					column = "phone";
				}
				if (column != null) {
					boolean result = dao.isDuplicate(column, value);
					if(result == true) {
						response.getWriter().append("exist");
					}
				}
				
			} else if (cmd.equals("/member/mypage.do")) { //마이페이지
				MemberDTO member = (MemberDTO) request.getSession().getAttribute("member");
				if (member == null) {
					response.sendRedirect("/");
					return;
				}
				int memberId = member.getMemberId();
				//최근 작성한 게시글
				List<BoardDTO> recentPost = boardDao.selectByMemberId(memberId);
				request.setAttribute("recentPost", recentPost);
				
			    //최근 본 게시글
			    List<ViewCountDTO> recentViewPost = viewCountDao.selectRecentByMemberId(memberId);
			    request.setAttribute("recentViewPost", recentViewPost);
				
				//최근 플레이한 게임
			    List<PlaytimeDTO> recentPlayTime = playtimeDao.selectRecentByMemberId(memberId);
			    request.setAttribute("recentPlayTime", recentPlayTime);
			    
			    //문의내역
			    List<QnADTO> recentQna = qnaDao.selectRecentByMemberId(memberId);
			    request.setAttribute("recentQna", recentQna);
				
				request.getRequestDispatcher("/WEB-INF/views/member/mypage.jsp").forward(request, response);
				
			} else if (cmd.equals("/member/logout.do")) {
				request.getSession().invalidate();
				response.sendRedirect("/");

			} else if (cmd.equals("/member/pwResetForm.do")) {
				request.getRequestDispatcher("/WEB-INF/views/member/pwResetForm.jsp").forward(request, response);
				
			} else if(cmd.equals("/member/outForm.do")) {
				request.getRequestDispatcher("/WEB-INF/views/member/outForm.jsp").forward(request, response);
				
			} else if (cmd.equals("/member/out.do")) { //회원 탈퇴
				int id = Integer.parseInt(request.getParameter("id"));
				MemberDTO member = (MemberDTO) request.getSession().getAttribute("member");
				if (member == null) {
					response.sendRedirect("/");
					return;
				} else if(id != member.getMemberId()) {
					response.sendRedirect("/");
					return;
				}
				int result = dao.deleteById(id);
				if (result > 0) {
					System.out.println("탈퇴성공!");
					request.getSession().invalidate();
					PrintWriter out = response.getWriter();
					out.println("<script>window.opener.location.href = '/'; window.close();</script>");
				}
				
			} else if (cmd.equals("/member/emailDuplCheck.do")) { //비밀번호 재설정 -> 간편로그인 유저 검증
				String email = request.getParameter("email");
				boolean result = dao.getMemberByEmail(email);
				if(result == true) {
					response.getWriter().append("true");
				}

			} else if(cmd.equals("/member/qna/detail.do")) { //마이페이지 내가 작성한 Q&A
				int qnaId = Integer.parseInt(request.getParameter("qnaId"));
				String response_yn = request.getParameter("response");
				
				QnADTO qnaDto = qnaDao.selectById(qnaId);
				request.setAttribute("qnaDto", qnaDto);
				
				if(response_yn.equals("Y")) {
					QnAReplyDTO qnaReplyDto = qnaReplyDao.selectByQnAId(qnaId);
					request.setAttribute("qnaReplyDto", qnaReplyDto);
				}
				request.getRequestDispatcher("/WEB-INF/views/member/qnaDetail.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String cmd = request.getRequestURI();
			if (cmd.equals("/member/add.do")) { //회원가입
				String id = request.getParameter("id");
				String pw = SecurityUtil.hashPassword(request.getParameter("pw"));
				String name = request.getParameter("name");
				String nickName = request.getParameter("nickName");

				String ssnFront = request.getParameter("ssnFront");
				String ssnBack = request.getParameter("ssnBack");
				String ssn = ssnFront + "-" + ssnBack + "******";
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");

				String postcodeStr = request.getParameter("postcode");
				int postcode = 0;
				if(postcodeStr != "") {
					postcode = Integer.parseInt(postcodeStr);
				} else if(postcodeStr == "") {
					postcode = 0;
				}
				String address1 = request.getParameter("address1");
				String address2 = request.getParameter("address2");

				int result = dao.insert(new MemberDTO(id,pw,name,nickName,ssn,email,phone,postcode,address1,address2,"user"));
				if(result > 0) {
					System.out.println("가입성공!");
				}
				response.sendRedirect("/");
				
			} else if (cmd.equals("/member/easySignup.do")) { //간편가입
				String name = request.getParameter("name");
				String nickName = request.getParameter("nickName");
				String ssnFront = request.getParameter("ssnFront");
				String ssnBack = request.getParameter("ssnBack");
				String ssn = ssnFront + "-" + ssnBack + "******";
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				String postcodeStr = request.getParameter("postcode");
				int postcode = 0;
				if(postcodeStr == "") {
					postcode = 0;
				} else if(postcodeStr == null) {
					postcode = 0;
				} else {
					postcode = Integer.parseInt(postcodeStr);
				}
				String address1 = request.getParameter("address1");
				String address2 = request.getParameter("address2");
				int memberAdd = dao.insert(new MemberDTO(null,null,name,nickName,ssn,email,phone,postcode,address1,address2,"user"));
				if(memberAdd > 0) {
					System.out.println("가입성공!");
				}
				response.sendRedirect("/");
				
			} else if (cmd.equals("/member/login.do")) { //로그인
				String id = request.getParameter("id");
				String pw = SecurityUtil.hashPassword(request.getParameter("pw"));

				MemberDTO member = dao.login(id, pw);
				if(member == null) {
					request.setAttribute("login", "failed");
					request.getRequestDispatcher("/index.jsp").forward(request, response);
					return;
				}
				// 밴 유저 검사후 결과 담기
				boolean banned = blackListDao.isBanned(member.getMemberId());
				member.setIsbanned(banned);
				request.getSession().setAttribute("member", member);
				
				response.sendRedirect("/");

			} else if (cmd.equals("/member/update.do")) { // 회원정보수정
				int memberId = Integer.parseInt(request.getParameter("memberId"));
				String loginId = request.getParameter("loginId");
				String nickName = request.getParameter("nickName");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String zipCodeStr = request.getParameter("zipCode");
				int postcode = 0;
				if(zipCodeStr.equals("입력된 정보가 없습니다.")) {
					postcode = 0;
				} else {
					postcode = Integer.parseInt(zipCodeStr);
				}
				String address = request.getParameter("address");
				String detailAddress = request.getParameter("detailAddress");

				int result = dao.update(new MemberDTO(memberId,loginId,nickName,email,phone,postcode,address,detailAddress));

				if(result > 0) {
					MemberDTO member = dao.selectById(memberId);
					boolean banned = blackListDao.isBanned(member.getMemberId());
					member.setIsbanned(banned); //밴유저가 수정한 경우에도 밴 세팅
					request.getSession().setAttribute("member", member);
				}
				response.sendRedirect("/member/mypage.do");

			} else if (cmd.equals("/member/sendResetEmail.do")) {
				String email = request.getParameter("email");
				String action = "reset";
				String member_out = request.getParameter("member_out");
				if(member_out != null) {
					action = "out";
				}
				int authCode = (int)(Math.random() * 900000) + 100000; 
				String codeStr = String.valueOf(authCode);
				System.out.println("컨트롤러 인증코드 : " + codeStr);

				request.setAttribute("authEmail", email);
				request.setAttribute("authCode", codeStr);

				boolean emailSent = EmailUtil.sendResetEmail(email, codeStr, action);
				
				if(emailSent) {
					System.out.println("메일전송");
				} else {
					System.out.println("메일전송 실패");
				}
				if("true".equals(member_out)) { //회원탈퇴시 이메일 처리
					request.getRequestDispatcher("/WEB-INF/views/member/outForm.jsp").forward(request, response);
					return;
				}
				
				request.getRequestDispatcher("/WEB-INF/views/member/pwResetForm.jsp").forward(request, response);

			} else if (cmd.equals("/member/pwReset.do")) { //패스워드변경
				String pw = SecurityUtil.hashPassword(request.getParameter("pw"));
				String email = request.getParameter("resetEmail");

				int result = dao.updatePw(email,pw);
				if(result > 0) {
					System.out.println("패스워드 변경 성공!");
					response.getWriter().write("<script>alert('패스워드 변경 성공!'); window.close();</script>");
				}
				
			} else if(cmd.equals("/member/qna/add.do")) { //Q&A작성
				String contents = request.getParameter("contents");
				int memberId = Integer.parseInt(request.getParameter("memberId"));
				
				int result = qnaDao.insert(new QnADTO(contents,memberId));
				if(result > 0) {
					System.out.println("QNA작성성공!");
				}
				response.sendRedirect("/");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}