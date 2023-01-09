package org.kabart.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Aspect
@Log4j
@Component

public class LogAdvice {
	
	@Before( "execution(* org.kabart.service.*.*(..))")
	public void logBefore() {
		
		log.info("========================");
	}
	
	@AfterThrowing(pointcut = "execution(* org.kabart.service.*.*(..))", throwing = "exception")
	public void logException(Exception exception) {
		
		log.info("Exception ,,,,,,,,,,,,");
		log.info("Exception : " + exception);
	}
	
	@Around( "execution(* org.kabart.service.*.*(..))")
	public Object logTime(ProceedingJoinPoint pjp) {
		
		long start = System.currentTimeMillis();
		
		log.info("Target : " + pjp.getTarget());
		log.info("Param : " + Arrays.toString(pjp.getArgs()));
		
		Object result = null;
		
		try {
			result = pjp.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		long end = System.currentTimeMillis();
		
		log.info("TIME : " + (end - start));
		
		return result;
	}
}
