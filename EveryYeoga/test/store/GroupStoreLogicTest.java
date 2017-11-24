package store;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import everyYeoga.domain.Group;
import everyYeoga.store.GroupStore;
import everyYeoga.store.logic.GroupStoreLogic;

public class GroupStoreLogicTest {
	private GroupStore store;
	
	@Before
	public void setUp() throws Exception {
		store = new GroupStoreLogic();
	}
//
//	@Test
//	public void testUpdateGroupStatus() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testGroupOut() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testDeleteGroup() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testRetreiveJoiningGroup() {
//		Group group = store.retreiveJoiningGroup("1");
//		assertEquals("1", group.getGroupId());
//	}
//
//	@Test
//	public void testCreateGroup() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testCreateUserInGroup() {
//		store.createUserInGroup("1", "선빈");
//	}
//	@Test
//	public void testDeleteUserInGroup() {
//		store.deleteUserInGroup("1", "선빈");
//	}
}
