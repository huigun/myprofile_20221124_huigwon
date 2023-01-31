package com.huigwon.profile.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huigwon.profile.dao.IDao;
import com.huigwon.profile.dto.MemberDto;
import com.huigwon.profile.dto.QBoardDto;
import com.huigwon.profile.dto.QBoardRownum;

@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/profile")
	public String profile() {
		
		return "profile";
	}
	
	@RequestMapping(value="/contact")
	public String contact() {
		
		return "contact";
	}
	
	@RequestMapping(value="/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value="/join")
	public String join() {
		
		return "join";
	}
	
	@RequestMapping(value="/question")
	public String question(HttpSession session, Model model) {
		
		String mid = (String) session.getAttribute("memberid");
		String mname = (String) session.getAttribute("membername");
		String memail = (String) session.getAttribute("memberemail");
		if(mid==null) {
			model.addAttribute("mid", "GUEST");
			model.addAttribute("mname", "GUEST");
			model.addAttribute("memail", "GUEST");
		} else {
			model.addAttribute("mid", mid);
			model.addAttribute("mname", mname);
			model.addAttribute("memail", memail);
		}
		return "question";
	}
	
	@RequestMapping(value="/joinok")
	public String joinok(HttpServletRequest request, HttpSession session,Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlsession.getMapper(IDao.class);

		int joinFlag = dao.memberjoin(mid, mpw, mname, memail);
		
		if(joinFlag==1) {
			session.setAttribute("memberid", mid);
			session.setAttribute("membername", mname);
			model.addAttribute("mid", mid);
			model.addAttribute("mname", mname);
		
		return "joinOk";
		} else {
			return "joinfalse";
		}
		
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:index";
	}
	
	@RequestMapping(value="loginok")
	public String loginok(HttpSession session,HttpServletRequest request,Model model) {
		
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
		IDao dao = sqlsession.getMapper(IDao.class);
		int idcheck = dao.checkid(mid); // 1이면 유, 0이면 무
		
		if(idcheck==1) {
		MemberDto dto = dao.memberlogin(mid);
		if(mid.equals(dto.getMid())&&mpw.equals(dto.getMpw())) {
			session.setAttribute("memberid", dto.getMid());
			session.setAttribute("membername", dto.getMname());
			session.setAttribute("memberemail", dto.getMemail());
			model.addAttribute("idcheck", idcheck);
		} else { 
			idcheck=2; // 아이디는 있지만 비밀번호가 틀렸을경우
			model.addAttribute("idcheck", idcheck);	
			}
		} else {
			idcheck=0; // 아이디가 없는경우
			model.addAttribute("idcheck", idcheck);
		}
		return "loginOk";
	}
	
	@RequestMapping(value="memberModify")
	public String memberModify(HttpSession session,Model model) {
		String mid = session.getAttribute("memberid").toString();
		IDao dao = sqlsession.getMapper(IDao.class);
		
		MemberDto dto = dao.memberlogin(mid);
		model.addAttribute("dto", dto);
		return "membermodify";
	}
	
	@RequestMapping(value="memberModifyOk")
	public String memberModify(HttpServletRequest request, Model model) {
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlsession.getMapper(IDao.class);
		
		dao.membermodify(mid, mpw, mname, memail);
		
		MemberDto dto = dao.memberlogin(mid);
		model.addAttribute("dto", dto);
		
		return "membermodifyok";
	}
	
	@RequestMapping(value="questionok")
	public String questionok(HttpServletRequest request, Model model) {
		String qid = request.getParameter("qid");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		String qtitle = request.getParameter("qtitle");
		IDao dao = sqlsession.getMapper(IDao.class);
		dao.questionok(qid, qname, qtitle, qcontent, qemail);
		
		model.addAttribute("qid", qid);
		model.addAttribute("qname", qname);
		model.addAttribute("qcontent", qcontent);
		model.addAttribute("qemail", qemail);
		model.addAttribute("qtitle", qtitle);
		return "redirect:list";
	}
	
	@RequestMapping(value="list")
	public String list(HttpServletRequest request, Model model) {
		String pagesu = null;
		String pagepage = null;
		ArrayList<QBoardDto> dto = null;
		pagesu = request.getParameter("pagesu");
		IDao dao = sqlsession.getMapper(IDao.class);
		
		if(pagesu == null) {
			pagesu = "1";
			dto = dao.qlist(1,5);
			int intpagesu = Integer.parseInt(pagesu);
			
		} else {
			int pagesu2 = Integer.parseInt(pagesu);
			for(int i=0;i<pagesu2;i++) {
			int firstgl = i*5+1;
			int lastgl = i*5+5;
			dto = dao.qlist(firstgl,lastgl);
			}
		}
		
		ArrayList<QBoardRownum> rownum = dao.qbrownum();
		
		int lastsu = rownum.get(0).getRownum();
		// lastsu : 마지막 글 넘버
		System.out.println("lastsu = " + lastsu);
		int glnum = 0;
		int page = (lastsu/5)+1;
		// page : 한 페이지당 5개의 글일때, 페이지 수
		System.out.println("page = " + page);
		int glpage= 1;
		for(int i=0;i<lastsu;i++) {
			glnum = rownum.get(i).getRownum();			
			// i번째 글의 row num
			int glbunho = i+1;
//			System.out.println((i+1) +"번째 글 glbunho = " + glbunho);
			if(glbunho%5==1 && glbunho >5) {
				glpage = glpage+1;
//				System.out.println(glpage);
				}

		}
		
		int pagepage2 = 0;
		pagepage = request.getParameter("pagepage");
//		System.out.println(pagepage);
		if(pagepage == null) {
			int firstgl = 1;
			int lastgl =5;
			pagepage2 =1;
			model.addAttribute("firstgl", firstgl);
			model.addAttribute("lastgl", lastgl);
			model.addAttribute("pagesu", lastgl);
			model.addAttribute("pagepage", pagepage2);
		} else {
			pagepage2 = Integer.parseInt(pagepage);
			for(int i=0;i<pagepage2;i++) {
				
			int firstgl = i*5+1;
			int lastgl = i*5+5;
			model.addAttribute("firstgl", firstgl);
			model.addAttribute("pagesu", lastgl);
			model.addAttribute("lastgl", lastgl);
			model.addAttribute("pagepage", pagepage2);
			}
		}
		int pagepagesu = page/5;
		System.out.println("ppsu =" + pagepagesu);
		model.addAttribute("dto",dto);
		model.addAttribute("rownum", rownum);
		model.addAttribute("glnum", glnum);		
		model.addAttribute("page", glpage);
		model.addAttribute("ppsu", pagepagesu);
		model.addAttribute("checkpage", page);
		
		//
//		dto = dao.qlist();
//		model.addAttribute("dto", dto);
		return "list";
	}
	
	@RequestMapping(value="view")
	public String view(HttpServletRequest request, Model model) {
		IDao dao = sqlsession.getMapper(IDao.class);
		String qnum = request.getParameter("qnum");
		QBoardDto dto = dao.qview(qnum);
		model.addAttribute("dto", dto);
		return "view";
	}
	
	@RequestMapping(value="qdelete")
	public String qdelete(HttpServletRequest request) {
		IDao dao = sqlsession.getMapper(IDao.class);
		String qnum = request.getParameter("qnum");
		dao.qdelete(qnum);
		return "redirect:list";
	}
	
	@RequestMapping(value="qupdate")
	public String qupdate(HttpServletRequest request,Model model) {
		IDao dao = sqlsession.getMapper(IDao.class);
		String qnum = request.getParameter("qnum");
		QBoardDto dto = dao.qview(qnum);
		model.addAttribute("dto", dto);
		return "qupdate";
	}
	
	@RequestMapping(value="qupdateok")
	public String qupdateok(HttpServletRequest request, Model model) {
		IDao dao = sqlsession.getMapper(IDao.class);
		String qnum = request.getParameter("qnum");
		String qtitle = request.getParameter("qtitle");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		dao.qupdate(qnum, qtitle, qcontent, qemail);
		model.addAttribute("qnum", qnum);
		return "redirect:list";
	}
}
