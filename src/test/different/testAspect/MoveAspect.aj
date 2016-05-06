package test.different.testAspect;

import test.different.Animal;
import test.different.TestMove;

public aspect MoveAspect {
	
	//1. pointcut MoveAspect() : call(* move(..));
	
	//2. pointcut MoveAspect() : call(* move(..)) && target(Animal);
	
	//3. pointcut MoveAspect() : call(* move(..)) && this(Animal);
	
	//4. pointcut MoveAspect() : call(* move(..)) && this(TestMove);
	
	//5. pointcut MoveAspect() : execution(* move(..)) && within(Animal);
	
	//6. pointcut MoveAspect() : execution(* move(..)) && within(Snake);
	
	//7. pointcut MoveAspect() : call(* move(..)) && target(Animal) && this(TestMove);
	
	pointcut MoveAspect(Animal a, TestMove t) : call(* move(..)) && target(a) && this(t);
	
	/*1 - 7
	before() : MoveAspect() {
		System.out.println("Entering " + thisJoinPoint.getSourceLocation());
	}*/
	
	before(Animal a, TestMove t) : MoveAspect(a,t) {
		System.out.println("Entering " + thisJoinPoint.getSourceLocation() + "target:" + a + " this:" + t);
	}
}
