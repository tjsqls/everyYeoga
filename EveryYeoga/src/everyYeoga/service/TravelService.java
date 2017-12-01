package everyYeoga.service;

import java.util.Date;
import java.util.List;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.Join;
import everyYeoga.domain.TravelPlan;

public interface TravelService {
   public boolean registTravelPlan(TravelPlan travelPlan);
   public boolean registJoin(Join join, String travelPlanId);//파라미터 수정
   //여행지역, 언어구사능력, 날짜로 여행계획 목록 검색
   public List<TravelPlan> searchTravelPlansByTravelPlan(String travelArea, String speakingAbility, String startDate);//2017.11.24 Date타입 파라미터 String으로 변경 진휘
   public TravelPlan searchTravelPlan(String travelPlanId);//여행계획 아이디로 여행계획 검색
   public boolean modifyTravelPlan(TravelPlan travelPlan);//2017.11.24 객체로 변경 진휘
   public boolean removeTravelPlan(String travelPlanId);
   public List<Join> searchGuide(String travelPlanId);
   public Join searchJoinDetail(String joinId);//2017.11.27 reportedUserId 파라미터 삭제 진휘
   public boolean registEvaluation(Evaluation evaluation);
   public List<Evaluation> searchEvaluation(String guideId);

   public List<TravelPlan> searchAllTravelPlans();
   public TravelPlan searchTravelPlanByUserId(String userId);

}