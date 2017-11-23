package everyYeoga.domain;

import java.util.Date;
import java.util.List;

public class Group {

	private String groupId; //2017.11.23 필드 추가 선빈
	private Date regDate;//2017.11.23 필드 추가 선빈
	private String travelPlanId;//2017.11.23 필드 추가 선빈
	private User traveler;
	private List<User> guides;
	private List<Article> articles;
	
	
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getTravelPlanId() {
		return travelPlanId;
	}
	public void setTravelPlanId(String travelPlanId) {
		this.travelPlanId = travelPlanId;
	}
	public User getTraveler() {
		return traveler;
	}
	public void setTraveler(User traveler) {
		this.traveler = traveler;
	}
	public List<User> getGuides() {
		return guides;
	}
	public void setGuides(List<User> guides) {
		this.guides = guides;
	}
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	
	
}
