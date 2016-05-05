package test;

public aspect CflowAspect {
	
	pointcut barPoint() : execution(* bar(..));
	pointcut fooPoint() : execution(* foo(..));
	pointcut barCflow() : cflow(barPoint());
	pointcut fooInBar() : barCflow() && fooPoint();
	
	before() : barCflow() {
		System.out.println("Enter : " + thisJoinPoint);
	}
}
