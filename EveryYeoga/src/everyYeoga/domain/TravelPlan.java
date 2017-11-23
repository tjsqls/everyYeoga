package everyYeoga.domain;

import java.util.Date;

public class TravelPlan {

	private String travelPlanId;
	private String speakingAbility;
	private String travelArea;
	private String numberOfVisits;
	private String theme;
	private String numberOfTraveler;
	private String preferGuide;
	private String selfIntroduction;
	private String gatheringStatus;
	private Date startDate;
	private Date endDate;
	
	private User traveler;
	
	

	public String getTravelPlanId() {
		return travelPlanId;
	}

	public void setTravelPlanId(String travelPlanId) {
		this.travelPlanId = travelPlanId;
	}

	public String getSpeakingAbility() {
		return speakingAbility;
	}

	public void setSpeakingAbility(String speakingAbility) {
		this.speakingAbility = speakingAbility;
	}

	public String getTravelArea() {
		return travelArea;
	}

	public void setTravelArea(String travelArea) {
		this.travelArea = travelArea;
	}

	public String getNumberOfVisits() {
		return numberOfVisits;
	}

	public void setNumberOfVisits(String numberOfVisits) {
		this.numberOfVisits = numberOfVisits;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getNumberOfTraveler() {
		return numberOfTraveler;
	}

	public void setNumberOfTraveler(String numberOfTraveler) {
		this.numberOfTraveler = numberOfTraveler;
	}

	public String getPreferGuide() {
		return preferGuide;
	}

	public void setPreferGuide(String preferGuide) {
		this.preferGuide = preferGuide;
	}

	public String getSelfIntroduction() {
		return selfIntroduction;
	}

	public void setSelfIntroduction(String selfIntroduction) {
		this.selfIntroduction = selfIntroduction;
	}

	public String getGatheringStatus() {
		return gatheringStatus;
	}

	public void setGatheringStatus(String gatheringStatus) {
		this.gatheringStatus = gatheringStatus;
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
