package everyYeoga.domain;

import java.util.Date;

public class GuideHistory {

	private String guideHistoryId;
	private String travelEndStatus;
	private String travelerName;
	private String travelArea;
	private String theme;
	private Date startDate;
	private Date endDate;
	
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

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public User getGuide() {
		return guide;
	}

	public void setGuide(User guide) {
		this.guide = guide;
	}
	

	
	
}
