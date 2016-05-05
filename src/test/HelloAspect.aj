/**
 * 
 */
package test;

/**
 * @author luoqi
 *
 */
public aspect HelloAspect {
	
	pointcut HelloWorldPointCut(int x) : execution(* main(int)) && !within(HelloAspectDemo) && args(x);
	
//	before() : HelloWorldPointCut(){
//		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());
//	}
	
	int around(int x) : HelloWorldPointCut(x) {
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());
		int newValue = proceed(x*3);
		return newValue;
	}
}
