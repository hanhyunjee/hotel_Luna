package com.hotel.HH;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.HH.DTO.NoticeDTO;
import com.hotel.HH.Service.NoticeService;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

	@Autowired
	NoticeService service;

	//공지사항 클릭 했을 경우 
	/*
		@RequestMapping(value = "/NoticeList", method = RequestMethod.GET)
		public ModelAndView Notice(@RequestParam(value = "curPage", required = false, defaultValue = "1") int curPage,
				@RequestParam(value = "Search", required = false) String Search,
				@RequestParam(value = "Searchtext", required = false) String Searchtext) {
			ModelAndView mav = new ModelAndView();
			int count = service.SelectCount(Search, Searchtext);
			Pagination page = new Pagination(count, curPage);
			mav.setViewName("/notice/NoticeList");
			int start = page.getPageBegin(); // 1
			int end = page.getPageScale(); //
			List<NoticeDTO> list = service.NoticeSelect(start, end, Search, Searchtext);

			mav.addObject("page", page);
			mav.addObject("list", list);
			mav.addObject("Search", Search);
			mav.addObject("Searchtext", Searchtext);
			return mav;
		}
	*/
		
		
		//기웅씨 추가
		@RequestMapping(value = "/NoticeList", method = RequestMethod.GET)
		public ModelAndView Notice(
				@RequestParam(value = "section", required = false) String section,
				@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {
			int _section = Integer.parseInt(((section==null)? "1":section) );
			int _pageNum = Integer.parseInt(((pageNum==null)? "1":pageNum));
			Map pagingMap=new HashMap();
			pagingMap.put("section", _section);
			pagingMap.put("pageNum", _pageNum);
			
			Map noticeMap = service.NoticeList(pagingMap);
			noticeMap.put("section", _section);
			noticeMap.put("pageNum",_pageNum);
			
			ModelAndView mav = new ModelAndView("/notice/NoticeList");
			mav.addObject("noticeMap", noticeMap);
			
			return mav;
		}

		@RequestMapping(value = "/NoticeContent", method = RequestMethod.GET)
		public ModelAndView NoticeContent(@RequestParam("b_no") int b_no, NoticeDTO dto) {
			ModelAndView mav = new ModelAndView();
			service.NoticeCountUpdate(b_no);
			dto = service.SelectNotice(b_no);
			mav.addObject("dto", dto);
			mav.setViewName("/notice/NoticeContent");
			return mav;
		}
		
		@RequestMapping(value="/WriteModifiy",method = RequestMethod.POST)
		public String WriteModifiy(NoticeDTO dto) {
			service.NoticeModify(dto);
			return "redirect:/notice/NoticeList";
			
		}
		
		
		@ResponseBody
		@RequestMapping(value="/NoticeDelete",method=RequestMethod.GET)
		public int NoticeDelete(@RequestParam("b_no") int b_no) {
	      service.NoticeDelete(b_no);
	      return b_no;
		
		}
		
		@RequestMapping("/NoticeWrite")
		public String NoticeWrite() {
			return "/notice/NoticeWrite";
		}

		@RequestMapping(value = "/Write", method = RequestMethod.POST)
		public String NoticeWrite(NoticeDTO dto) {
			service.NoticeInsert(dto);
			return "redirect:/notice/NoticeList"; // redirect 해줘야 한다

		}
	}