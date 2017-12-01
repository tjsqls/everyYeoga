package everyYeoga.domain;

public class Evaluation {

	private String evaluationId;
	private int stars;
	private String cons;    // 나쁜점
	private String pros;    // 좋은점
	
	private String travelerId;
	private String guideId;
	
	
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
	public String getTravelerId() {
		return travelerId;
	}
	public void setTravelerId(String travelerId) {
		this.travelerId = travelerId;
	}
	public String getGuideId() {
		return guideId;
	}
	public void setGuideId(String guideId) {
		this.guideId = guideId;
	}
	
	
}
