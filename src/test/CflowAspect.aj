package test;

public aspect CflowAspect {
	
	pointcut barPoint() : execution(* bar(..));
	pointcut fooPoint() : execution(* foo(..));
	pointcut barCflow() : cflow(barPoint()) && !within(CflowAspect);
	pointcut fooInBar() : barCflow() && fooPoint();
	
	before() : fooInBar() {
		System.out.println("Enter : " + thisJoinPoint);
	}

}
