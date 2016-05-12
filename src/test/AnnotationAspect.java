package test;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class AnnotationAspect {

	@Pointcut("execution(* test)")
	public void epAspectjPkg() {
		
	}
}
