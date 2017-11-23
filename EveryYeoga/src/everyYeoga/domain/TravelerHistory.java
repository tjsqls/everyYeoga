package everyYeoga.domain;

import java.util.Date;

public class TravelerHistory {

	private String travelerHistoryId;
	private String travelArea;
	private String theme;
	private String guideName;
	private Date startDate;
	private Date endDate;
	
	private User traveler;
	

	public String getTravelerHistoryId() {
		return travelerHistoryId;
	}

	public void setTravelerHistoryId(String travelerHistoryId) {
		this.travelerHistoryId = travelerHistoryId;
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

	public String getGuideName() {
		return guideName;
	}

	public void setGuideName(String guideName) {
		this.guideName = guideName;
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

	public User getTraveler() {
		return traveler;
	}

	public void setTraveler(User traveler) {
		this.traveler = traveler;
	}
	
}
