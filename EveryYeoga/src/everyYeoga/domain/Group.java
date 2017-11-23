package everyYeoga.domain;

import java.util.List;

public class Group {

	
	private User traveler;
	private List<User> guides;
	private List<Article> articles;
	
	
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
