package com.tss.springmvc.poolsawat.easymock.runner;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

import com.tss.springmvc.poolsawat.easymock.test.MathApplicationTester;

public class TestRunner {
	public static void main(String[] args) {
		Result result = JUnitCore.runClasses(MathApplicationTester.class);

		for (Failure failure : result.getFailures()) {
			System.out.println(failure.toString());
		}

		System.out.println(result.wasSuccessful());
		/*
		 * เรียนถึงหน้านี้ url :: http://www.tutorialspoint.com/easymock/easymock_expecting_calls.htm
		 */
	}
}
