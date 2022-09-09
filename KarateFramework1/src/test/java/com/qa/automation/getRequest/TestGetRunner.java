package com.qa.automation.getRequest;

import org.junit.jupiter.api.Test;

import com.intuit.karate.junit5.Karate;

public class TestGetRunner {
	

    @Test
    public Karate Run() {
    	return Karate.run("getrequest").relativeTo(getClass());
    	
    	
    }
   @Test
   public void runclasspath() {
	   Karate.run("classpath:KarateFramework1/src/test/java/com/qa/automation/getRequest/responseMatch.feature");
	   
   }
    

}



