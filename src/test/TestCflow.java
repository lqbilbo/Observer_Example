package test;

import org.junit.Test;

public class TestCflow {
	
	public static void foo() {
		System.out.println("foo......");
	}
	
	public static void bar() {
		foo();
		System.out.println("bar......");
	}
	
	@Test
	public void testMethod() {
		bar();
		foo();
	}
}
