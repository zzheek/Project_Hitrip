package egov.hitrip.service;

public class NoticeVO {

	private int noticeunq;			//	������unq
	private String noticetitle;		//	������ ����
	private String noticepass;		//	������ ��ȣ
	private String noticename;		//	�ۼ���
	private String noticecontent;	//	������ ����
	private int noticehits;			//	������ ��ȸ��
	private String noticerdate;		//	������ �����
	private String noticeemps;		//	�߿���� ( Y or N )
	
	public int getNoticeunq() {
		return noticeunq;
	}
	public void setNoticeunq(int noticeunq) {
		this.noticeunq = noticeunq;
	}
	public String getNoticetitle() {
		return noticetitle;
	}
	public void setNoticetitle(String noticetitle) {
		this.noticetitle = noticetitle;
	}
	public String getNoticepass() {
		return noticepass;
	}
	public void setNoticepass(String noticepass) {
		this.noticepass = noticepass;
	}
	public String getNoticename() {
		return noticename;
	}
	public void setNoticename(String noticename) {
		this.noticename = noticename;
	}
	public String getNoticecontent() {
		return noticecontent;
	}
	public void setNoticecontent(String noticecontent) {
		this.noticecontent = noticecontent;
	}
	public int getNoticehits() {
		return noticehits;
	}
	public void setNoticehits(int noticehits) {
		this.noticehits = noticehits;
	}
	public String getNoticerdate() {
		return noticerdate;
	}
	public void setNoticerdate(String noticerdate) {
		this.noticerdate = noticerdate;
	}
	public String getNoticeemps() {
		return noticeemps;
	}
	public void setNoticeemps(String noticeemps) {
		this.noticeemps = noticeemps;
	}
}
