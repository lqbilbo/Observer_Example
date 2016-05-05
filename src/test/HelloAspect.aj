/**
 * 
 */
package test;

/**
 * @author luoqi
 *
 */
public aspect HelloAspect {
	
	pointcut HelloWorldPointCut() : execution(* main(..)) && !within(HelloAspectDemo);
	
	before() : HelloWorldPointCut(){
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());
	}
}
