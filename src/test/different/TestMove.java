package test.different;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

public class TestMove {
	
	public void move(List<Animal> list) {
		for(Animal a : list) {
			a.move();
		}
		
	}
	
	@Test
	public void testAA() {
		List<Animal> list = new ArrayList<Animal>();
		list.add(new Bird());
		list.add(new Snake());
		move(list);
	}
}
