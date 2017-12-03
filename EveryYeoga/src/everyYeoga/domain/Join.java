package everyYeoga.domain;

import java.util.List;

public class Join {

	@Override
	public String toString() {
		return "Join [joinId=" + joinId + ", travelArea=" + travelArea + ", speakingAbility=" + speakingAbility
				+ ", guideExperience=" + guideExperience + ", selfIntroduction=" + selfIntroduction + ", joinReason="
				+ joinReason + ", guideGrade=" + guideGrade + ", guideId=" + guideId + ", evaluations=" + evaluations
				+ ", guideHistories=" + guideHistories + ", reports=" + reports + "]";
	}

	private String joinId;
	private String travelArea;
	private String speakingAbility;
	private String guideExperience;
	private String selfIntroduction;
	private String joinReason;
	private String guideGrade;
	private String travelPlanId; //2017.12.02 필드 추가 선빈
	private String guideId; // 2017.11.30 User guide를 String guideId로 변경
	private List<Evaluation> evaluations;
	private List<GuideHistory> guideHistories;
	private List<Report> reports;
	
	public int getNumberOfGuideHistories() {
		if(guideHistories == null) {
			return 0;
		}
		
		return guideHistories.size();
	}
	public int getNumberOfReports() {
		if(reports == null) {
			return 0;
		}
		
		return reports.size();
	}

	public String getJoinId() {
		return joinId;
	}

	public void setJoinId(String joinId) {
		this.joinId = joinId;
	}

	public String getTravelArea() {
		return travelArea;
	}

	public void setTravelArea(String travelArea) {
		this.travelArea = travelArea;
	}

	public String getSpeakingAbility() {
		return speakingAbility;
	}

	public void setSpeakingAbility(String speakingAbility) {
		this.speakingAbility = speakingAbility;
	}

	public String getGuideExperience() {
		return guideExperience;
	}

	public void setGuideExperience(String guideExperience) {
		this.guideExperience = guideExperience;
	}

	public String getSelfIntroduction() {
		return selfIntroduction;
	}

	public void setSelfIntroduction(String selfIntroduction) {
		this.selfIntroduction = selfIntroduction;
	}

	public String getJoinReason() {
		return joinReason;
	}

	public void setJoinReason(String joinReason) {
		this.joinReason = joinReason;
	}

	public String getGuideGrade() {
		return guideGrade;
	}

	public void setGuideGrade(String guideGrade) {
		this.guideGrade = guideGrade;
	}

	public String getGuideId() {
		return guideId;
	}

	public void setGuideId(String guideId) {
		this.guideId = guideId;
	}

	public List<Evaluation> getEvaluations() {
		return evaluations;
	}

	public void setEvaluations(List<Evaluation> evaluations) {
		this.evaluations = evaluations;
	}

	public List<GuideHistory> getGuideHistories() {
		return guideHistories;
	}

	public void setGuideHistories(List<GuideHistory> guideHistories) {
		this.guideHistories = guideHistories;
	}

	public List<Report> getReports() {
		return reports;
	}

	public void setReports(List<Report> reports) {
		this.reports = reports;
	}
	public String getTravelPlanId() {
		return travelPlanId;
	}
	public void setTravelPlanId(String travelPlanId) {
		this.travelPlanId = travelPlanId;
	}
	

}
