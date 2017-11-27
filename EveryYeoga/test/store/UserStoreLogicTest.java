package store;

import static org.junit.Assert.*;

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
	public void testUpdateReportedNumber() {

		store.updateBlockedNumber("1");


	}

}
