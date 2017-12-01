package everyYeoga.service.logic;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.objenesis.instantiator.sun.MagicInstantiator;
import org.springframework.stereotype.Service;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import everyYeoga.domain.Evaluation;
import everyYeoga.domain.GuideHistory;
import everyYeoga.domain.Join;
import everyYeoga.domain.Report;
import everyYeoga.domain.TravelPlan;
import everyYeoga.domain.User;
import everyYeoga.service.TravelService;
import everyYeoga.store.GroupStore;
import everyYeoga.store.GuideStore;
import everyYeoga.store.HistoryStore;
import everyYeoga.store.ReportStore;
import everyYeoga.store.TravelStore;
import everyYeoga.store.UserStore;
import everyYeoga.store.logic.TravelStoreLogic;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:WebContent/WEB-INF/dispatcher-servlet.xml"})

@Service
public class TravelServiceLogic implements TravelService {

   @Autowired
   private UserStore userStore;
   @Autowired
   private TravelStore travelStore;
   @Autowired
   private GroupStore groupStore;
   @Autowired
   private GuideStore guideStore;
   @Autowired
   private HistoryStore historyStore;
   @Autowired
   private ReportStore reportStore;
   @Autowired
   private TravelService service;


   @Override//test완료
   public boolean registTravelPlan(TravelPlan travelPlan) {
      // 진휘
      return travelStore.createTravelPlan(travelPlan);
      
   }

   @Override//test완료
   public boolean registJoin(Join join, String travelPlanId) {
      // 진휘
      return guideStore.createJoin(join, travelPlanId);
   }


   @Override//test 완료
   public List<TravelPlan> searchTravelPlansByTravelPlan(String travelArea, String speakingAbility, String startDate) {
      // 진휘
      return travelStore.retrieveTravelPlanByTravelArea(travelArea);
   }

   @Override// test 완료
   public TravelPlan searchTravelPlan(String travelPlanId) {
      // 진휘
      return travelStore.retrieveTravelPlan(travelPlanId);
   }

   @Override//store test완료
   public boolean modifyTravelPlan(TravelPlan travelPlan) {
      // 진휘
      return travelStore.updateTravelPlan(travelPlan);
   }

   @Override//test 완료
   public boolean removeTravelPlan(String travelPlanId) {
      // 진휘
      return travelStore.deleteTravelPlan(travelPlanId);
   }
    
   @Override //test 완료
   public List<Join> searchGuide(String travelPlanId) {// 여행계획에 참여신청한 가이드 목록
      // 진휘
      List<Join> js = guideStore.retrieveGuide(travelPlanId);
      List<Join> list = new ArrayList<Join>();
   
      for (int i=0; i<js.size(); i++ ) {
         Join j = new Join();
         j=js.get(i);
         List<GuideHistory> cGs = historyStore.retrieveCheckedGuideHistory(j.getGuideId(), "확인");
         cGs.addAll(historyStore.retrieveUncheckedGuideHistory(j.getGuideId(), "미확인"));
         j.setGuideHistories(cGs);
         j.setReports(reportStore.retrieveReport(j.getGuideId()));
         j.setEvaluations(guideStore.retrieveEvaluation(j.getGuideId()));
         list.add(j);
      }//test완료

      return list;
   }

   @Override//해야함
   public Join searchJoinDetail(String joinId) {
      // 진휘
      Join j = guideStore.retrieveJoinDetail(joinId);
      j.setGuideId(joinId);

      List<GuideHistory> cGs = historyStore.retrieveCheckedGuideHistory(j.getGuideId(), "확인");
      cGs.addAll(historyStore.retrieveCheckedGuideHistory(j.getGuideId(), "미확인"));

      j.setGuideHistories(cGs);

      j.setReports(reportStore.retrieveReport(j.getGuideId()));

      j.setEvaluations(guideStore.retrieveEvaluation(j.getGuideId()));

      return j;
   }

   @Override//test 완료
   public boolean registEvaluation(Evaluation evaluation) {
      // 진휘
      return guideStore.createEvaluation(evaluation);
   }

   @Override//test 완료
   public List<Evaluation> searchEvaluation(String guideId) {
      // 진휘
      return guideStore.retrieveEvaluation(guideId);
   }

   @Override
   public List<TravelPlan> searchAllTravelPlans() {
      // TODO Auto-generated method stub
      return travelStore.retrieveAllTravelPlans();
   }

   @Override
   public TravelPlan searchTravelPlanByUserId(String userId) {
      // TODO Auto-generated method stub
      return travelStore.retrieveTravelPlanByUserId(userId);
   }



}