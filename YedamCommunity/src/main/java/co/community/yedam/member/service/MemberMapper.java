package co.community.yedam.member.service;

import java.util.List;



public interface MemberMapper {
	// service랑 같게 하되 넘기는 값에 따라 달라짐
	List<MemberVO> memberSelectList(); //리스트, 전체목록 가져오기
	MemberVO memberSelect(MemberVO vo); // 한명의 정보가져올때 vo에다 담는것, 로그인 시 사용
	int memberInsert(MemberVO vo); // 데이터 추가
	int memberUpdate(MemberVO vo); // 데이터 갱신
	int memberDelete(MemberVO vo); // 데이터 삭제
	
	boolean isIdCheck(String id); // 아이디 중복체크, 존재하면 false, 존재하지 않으면 ture

	
	// 매개변수가 2개일때는 각각 앞에 @Param을 붙여줘야함.
	// List<SampleVO> SampleSearchList(@Param("key") String key, @Param("val") String val);
	
}
