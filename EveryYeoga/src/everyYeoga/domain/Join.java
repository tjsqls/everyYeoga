package everyYeoga.domain;

import java.util.List;

public class Join {

	private String joinId;
	private String travelArea;
	private String speakingAbility;
	private String guideExperience;
	private String selfIntroduction;
	private String joinReason;
	private String guideGrade;
	
	private User guide;
	private List<Evaluation> evaluations;
	private List<GuideHistory> guideHistories;
	private List<Report> reports;
	
	
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
	public User getGuide() {
		return guide;
	}
	public void setGuide(User guide) {
		this.guide = guide;
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
	
	
}
