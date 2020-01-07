package co.pr.fi.advice;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class Advice {

	
	
	
	@Around("execution(* co.pr.fi..*Impl.*(..))")
	public Object AroundLog(ProceedingJoinPoint proceeding) throws Throwable {
		
		
		System.out.println("============================================");
		System.out.println("[AroundLog의 before] : 비즈니스 메서드 수행 전입니다.");
		
		
		
		Object result = proceeding.proceed(); // <-이게 메소드 대신 실행하는거임
		
		
		System.out.println("[Around Advice의 after] : 비즈니스 메서드 수행 후입니다.");
		System.out.println("============================================");
		org.aspectj.lang.Signature sig = proceeding.getSignature();
		
		System.out.printf("[Around Advice의 after] : %s.%s(%s) \n", proceeding.getTarget().getClass().getSimpleName(),
				sig.getName(), Arrays.toString(proceeding.getArgs()));
		
		
		System.out.println("[Around Advice 의 after] : " + proceeding.getTarget().getClass().getName());

		System.out.println("proceeding.proceed() 실행 후 반환값 : " + result);

		System.out.println("===========================================================");

		return result;
		
	
	}
	
	

	
	
	@AfterReturning(pointcut="execution(* co.pr.fi..*Impl.*(..))",returning="obj")
	 public void afterReturningLog(Object obj) {
	    System.out.println("========================");
	    System.out.println("[AfterReturningAdvice] obj");
	    if(obj != null)
	    System.out.println("return : " + obj.toString());
	    System.out.println("========================");
	 }
	
	@AfterThrowing(pointcut="execution(* co.pr.fi..*Impl.*(..))", throwing="exp")
	public void afterThrowingLog(Throwable exp) {
		System.out.println("=======================");
		System.out.println("[AfterThrowing] : 비즈니스 로직 수행중 오류가 발생하면 동작합니다.");
		System.out.println("error : " + exp.toString());
		System.out.println("=======================");
	}

}
