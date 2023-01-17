package com.douzone.guestbook01.dao.test;

import java.util.List;

import com.douzone.guestbook01.dao.GuestbookDao;
import com.douzone.guestbook01.vo.GuestbookVo;

public class GuestbookDaoTest {



	public static void main(String[] args) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("둘리");
		vo.setPassword("호이호이");
		vo.setMessage("안녕하세용");
//		testInsert(vo);
		testDeleteByNo(3L, "123123");
		testFindAll();
	}

	private static void testDeleteByNo(Long no, String password) {
		new GuestbookDao().deleteByNo(no, password);
	}

	private static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void testInsert(GuestbookVo vo) {
		new GuestbookDao().insert(vo);
	}

}
