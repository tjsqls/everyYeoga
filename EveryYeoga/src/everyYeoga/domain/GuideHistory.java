package everyYeoga.domain;

import java.util.Date;

public class GuideHistory {

	private String guideHistoryId;
	private String travelEndStatus;
	private String travelerName;
	private String travelArea;
	private String theme;
	private String startDate; // 2017.12.04 Date -> String 변경 선빈
	private String endDate;// 2017.12.04 Date -> String 변경 선빈
	
	private User guide; 
	

	public String getGuideHistoryId() {
		return guideHistoryId;
	}

	public void setGuideHistoryId(String guideHistoryId) {
		this.guideHistoryId = guideHistoryId;
	}

	public String getTravelEndStatus() {
		return travelEndStatus;
	}

	public void setTravelEndStatus(String travelEndStatus) {
		this.travelEndStatus = travelEndStatus;
	}

	public String getTravelerName() {
		return travelerName;
	}

	public void setTravelerName(String travelerName) {
		this.travelerName = travelerName;
	}

	public String getTravelArea() {
		return travelArea;
	}

	public void setTravelArea(String travelArea) {
		this.travelArea = travelArea;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public User getGuide() {
		return guide;
	}

	public void setGuide(User guide) {
		this.guide = guide;
	}
	

	
	
}
