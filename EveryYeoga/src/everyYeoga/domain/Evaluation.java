package everyYeoga.domain;

public class Evaluation {

	private String evaluationId;
	private int stars;
	private String cons;    // 나쁜점
	private String pros;    // 좋은점
	
	private User traveler;
	private User guide;
	
	
	public String getEvaluationId() {
		return evaluationId;
	}
	public void setEvaluationId(String evaluationId) {
		this.evaluationId = evaluationId;
	}
	public int getStars() {
		return stars;
	}
	public void setStars(int stars) {
		this.stars = stars;
	}
	public String getCons() {
		return cons;
	}
	public void setCons(String cons) {
		this.cons = cons;
	}
	public String getPros() {
		return pros;
	}
	public void setPros(String pros) {
		this.pros = pros;
	}
	public User getTraveler() {
		return traveler;
	}
	public void setTraveler(User traveler) {
		this.traveler = traveler;
	}
	public User getGuide() {
		return guide;
	}
	public void setGuide(User guide) {
		this.guide = guide;
	}
	
	
}
