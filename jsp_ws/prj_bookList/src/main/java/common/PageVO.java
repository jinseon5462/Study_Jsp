package common;

import java.util.ArrayList;

import lombok.Data;
@Data
public class PageVO {
	private int startPage; // 게시글 화면에 보여질 첫번째 번호
	private int endPage;	// 게시글 화면에 보여질 마지막 번호
	private boolean back, next;	// 이전버튼, 다음버튼 활성화여부
	private int pageNum;	// 현제 조회중인 페이지 번호
	private int amount = 10;	// 화면에 출력
	private int total;	// 전체 게시글수
}
