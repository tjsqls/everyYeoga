package store;


import static org.junit.Assert.assertTrue;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;

import everyYeoga.store.UserStore;
import everyYeoga.store.logic.UserStoreLogic;

public class UserStoreLogicTest {

	private UserStore store;

	@Before
	public void setUp() {
		store = new UserStoreLogic();
	}

	@Test
	public void testretrieveAccessBlockedDate() {
//
//		Calendar cal = Calendar.getInstance();
//	    cal.setTime(new Date());
//		SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");
//
//			Date blocekdDate = store.retrieveAccessBlockedDate("1");
//			
//			String blockedDate = sdf.format(cal.getTime());
//			blockedDate.se
//			cal.add(Calendar.DATE, 30);
//			System.out.println(blockedDate);
//			
		
			
//			Date blocked = store.retrieveAccessBlockedDate("1");
//		
//			Date date = new Date(Calendar.getInstance().getTimeInMillis());
//			Calendar cal = Calendar.getInstance();
//			cal.setTime(date);
//			cal.add(Calendar.DATE, -1);
//			
//			
//			Date check = new Date(cal.getTimeInMillis());
//
//			if(blocked.after(check)){
//				store.deleteAccessBlockedDate("1");
//			}


	}

}
