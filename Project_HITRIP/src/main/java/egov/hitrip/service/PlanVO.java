package egov.hitrip.service;

public class PlanVO {

	int planunq;			//	����unq
	int planyear;			//	�������� ��
	int planmonth;			//	�������� ��
	int planday;			//	�������� ��
	int planeyear;			//	�������� ��
	int planemonth;			//	�������� ��
	int planeday;			//	�������� ��
	String plantitle;		//	��������
	String plancontent;		//	��������
	String planopen;		//	������ ( Y or N )
	String userid;			//	�������̵�
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPlanopen() {
		return planopen;
	}
	public void setPlanopen(String planopen) {
		this.planopen = planopen;
	}
	public int getPlanunq() {
		return planunq;
	}
	public void setPlanunq(int planunq) {
		this.planunq = planunq;
	}
	public int getPlanyear() {
		return planyear;
	}
	public void setPlanyear(int planyear) {
		this.planyear = planyear;
	}
	public int getPlanmonth() {
		return planmonth;
	}
	public void setPlanmonth(int planmonth) {
		this.planmonth = planmonth;
	}
	public int getPlanday() {
		return planday;
	}
	public void setPlanday(int planday) {
		this.planday = planday;
	}	
	public int getPlaneyear() {
		return planeyear;
	}
	public void setPlaneyear(int planeyear) {
		this.planeyear = planeyear;
	}
	public int getPlanemonth() {
		return planemonth;
	}
	public void setPlanemonth(int planemonth) {
		this.planemonth = planemonth;
	}
	public int getPlaneday() {
		return planeday;
	}
	public void setPlaneday(int planeday) {
		this.planeday = planeday;
	}
	public String getPlantitle() {
		return plantitle;
	}
	public void setPlantitle(String plantitle) {
		this.plantitle = plantitle;
	}
	public String getPlancontent() {
		return plancontent;
	}
	public void setPlancontent(String plancontent) {
		this.plancontent = plancontent;
	}
	
}
