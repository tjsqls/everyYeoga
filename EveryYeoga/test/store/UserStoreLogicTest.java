package store;

import static org.junit.Assert.*;

import java.util.Calendar;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.User;
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
		Date today = new Date(Calendar.getInstance().getTimeInMillis());

	String date = store.retrieveAcessBlockedDate("1");

	assertTrue(date.toString().equals(today.toString()));
		
		

	}

}
