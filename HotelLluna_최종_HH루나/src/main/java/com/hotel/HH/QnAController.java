package com.hotel.HH;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.HH.DTO.QnADTO;
import com.hotel.HH.Service.QnAService;
import com.hotel.HH.page.Pagination;

@Controller
@RequestMapping("/QnA/")
public class QnAController {

	@Autowired
	QnAService service;

	//공지사항 클릭 했을 경우 
		@RequestMapping(value = "/QnAList", method = RequestMethod.GET)
		public ModelAndView QnA(@RequestParam(value = "curPage", required = false, defaultValue = "1") int curPage,
				@RequestParam(value = "Search", required = false) String Search,
				@RequestParam(value = "Searchtext", required = false) String Searchtext) {
			ModelAndView mav = new ModelAndView();
			int count = service.SelectCount(Search, Searchtext);
			Pagination page = new Pagination(count, curPage);
			mav.setViewName("/QnA/QnAList2");
			int start = page.getPageBegin(); // 1
			int end = page.getPageScale(); //
			List<QnADTO> list = service.QnASelect(start, end, Search, Searchtext);

			mav.addObject("page", page);
			mav.addObject("list", list);
			mav.addObject("Search", Search);
			mav.addObject("Searchtext", Searchtext);
			return mav;
		}
		
		
		//기웅씨 추가
		@RequestMapping(value = "/QnAList2", method = RequestMethod.GET)
		public ModelAndView QnA2(
				@RequestParam(value = "section", required = false) String section,
				@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {
			int _section = Integer.parseInt(((section==null)? "1":section) );
			int _pageNum = Integer.parseInt(((pageNum==null)? "1":pageNum));
			Map pagingMap=new HashMap();
			pagingMap.put("section", _section);
			pagingMap.put("pageNum", _pageNum);
			
			Map qnasMap = service.qnAList2(pagingMap);
			qnasMap.put("section", _section);
			qnasMap.put("pageNum",_pageNum);
			
			ModelAndView mav = new ModelAndView("/QnA/QnAList2");
			mav.addObject("qnasMap", qnasMap);
			
			return mav;
		}

		@RequestMapping(value = "/QnAContent", method = RequestMethod.GET)
		public ModelAndView QnAContent(@RequestParam("q_no") int q_no, QnADTO dto) {
			ModelAndView mav = new ModelAndView();
			service.QnACountUpdate(q_no);
			dto = service.SelectQnA(q_no);
			mav.addObject("dto", dto);
			mav.setViewName("/QnA/QnAContent");
			return mav;
		}
		
		
		// 기웅씨 추가
		@ResponseBody
		@RequestMapping(value="/QnAModify", method = RequestMethod.POST)
		public String QnAModify(QnADTO dto) {
			service.QnAModify(dto);
			return "redirect:/QnA/QnAList2";
			
		}
		
		
		@ResponseBody
		@RequestMapping(value="/QnADelete",method=RequestMethod.GET)
		public int QnADelete(@RequestParam("q_no") int q_no) {
	      service.QnADelete(q_no);
	      return q_no;
		
		}
		
		@RequestMapping("/QnAWrite")
		public String QnAWrite() {
			return "/QnA/QnAWrite";
		}

		@RequestMapping(value = "/Write", method = RequestMethod.POST)
		public String QnAWrite(QnADTO dto) {
			service.QnAInsert(dto);
			return "redirect:/QnA/QnAList2"; // redirect 해줘야 한다

		}
	}