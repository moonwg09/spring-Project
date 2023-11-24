package com.vam.VO;

public class PageDTO {

	// ������ ���� ��ȣ
	private int pageStart;
	
	// ������ �� ��ȣ
	private int pageEnd;
		
	// ����, ���� ��ư ���� ����
	private boolean next, prev;
		
	// �� ��ü ����
	private int total;
		
	// ���� ������ ��ȣ(pageNum), �� ǥ�� ��(amount), �˻� Ű����(keyword), �˻� ����(type)
	private Criteria cri;
	
	// ������(Ŭ���� ȣ�� �� �� ���� �� �ʱ�ȭ)
	 public PageDTO(Criteria cri, int total) {
		 
		 // cri, total �ʱ�ȭ
		 this.cri = cri;
		 this.total = total;
		 
		 // ������ �� ��ȣ
		 this.pageEnd = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
		 
		 // ������ ���� ��ȣ
		 this.pageStart = this.pageEnd - 9;
		 
		 // ��ü ������ ������ ��ȣ
		 int realEnd = (int)(Math.ceil(total*1.0/cri.getAmount()));
		 
		 // ������ �� ��ȣ ��ȿ�� üũ
		 if(realEnd < pageEnd) {
			 this.pageEnd = realEnd;
		 }
		 
		 // ���� ��ư �� �ʱ�ȭ
		 this.prev = this.pageStart > 1;
		 
		 // ���� ��ư �� �ʱ�ȭ
		 this.next = this.pageEnd < realEnd;
		 
		 
		 
	 }

	public int getPageStart() {
		return pageStart;
	}

	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}

	@Override
	public String toString() {
		return "PageDTO [pageStart=" + pageStart + ", pageEnd=" + pageEnd + ", next=" + next + ", prev=" + prev
				+ ", total=" + total + ", cri=" + cri + "]";
	}
		
	
		
}
