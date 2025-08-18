// This is my attempt to create Test Class on my own

@IsTest
public with sharing class MyVariablesDataTypesOperatorsTest {

    @IsTest
    static void testAddition() {
        Integer result = VariablesDataTypesOperators.addition(null, 7);
        Assert.areEqual(null, result, 'Incorrect null addition result.');
        result = VariablesDataTypesOperators.addition(8, null);
        Assert.areEqual(null, result, 'Incorrect null addition result.');
        result = VariablesDataTypesOperators.addition(null, null);
        Assert.areEqual(null, result, 'Incorrect null addition result.');
        result = VariablesDataTypesOperators.addition(10, 20);
        Assert.areEqual(30, result, 'Incorrect addition result.');
        result = VariablesDataTypesOperators.addition(1000000, 888888);
        Assert.areEqual(1888888, result, 'Incorrect large number addition result.');
        result = VariablesDataTypesOperators.addition(100, 0);
        Assert.areEqual(100, result, 'Incorrect addition with 0 result.');
        result = VariablesDataTypesOperators.addition(-5, 100);
        Assert.areEqual(95, result, 'Incorrect negative addition result.');        
    }

    @IsTest
    static void testSubtraction() {
        Integer result = VariablesDataTypesOperators.subtraction(null, 10);
        Assert.areEqual(null, result, 'Incorrect null subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(10, null);
        Assert.areEqual(null, result, 'Incorrect null subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(null, null);
        Assert.areEqual(null, result, 'Incorrect null subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(50, 20);
        Assert.areEqual(30, result, 'Incorrect subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(20, 50);
        Assert.areEqual(-30, result, 'Incorrect subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(-20, -10);
        Assert.areEqual(-10, result, 'Incorrect negative numbers subtraction result.');
    }

    @IsTest
    static void testMultiplication() {
        Integer result = VariablesDataTypesOperators.multiplication(25, 10);
        Assert.areEqual(250, result, 'Incorrect multiplication result.');
        result = VariablesDataTypesOperators.multiplication(25, -10);
        Assert.areEqual(-250, result, 'Incorrect negative multiplication result.');
        result = VariablesDataTypesOperators.multiplication(null, 10);
        Assert.areEqual(null, result, 'Incorrect null multiplication result.');
        result = VariablesDataTypesOperators.multiplication(25, null);
        Assert.areEqual(null, result, 'Incorrect null multiplication result.');
    }

    @IsTest 
    static void testDivision() {
        Double result = VariablesDataTypesOperators.division(100, 5);
        Assert.areEqual(20, result, 'Incorrect division result.');
        result = VariablesDataTypesOperators.division(100, 0);
        Assert.areEqual(0, result, 'Incorrect division by zero result.');
        result = VariablesDataTypesOperators.division(null, 5);
        Assert.areEqual(null, result, 'Incorrect null division result.');
        result = VariablesDataTypesOperators.division(5, null);
        Assert.areEqual(null, result, 'Incorrect null division result.');
    }

    @IsTest 
    static void testIsEven() {
        Boolean result = VariablesDataTypesOperators.isEven(10);
        Assert.areEqual(true, result, 'Incorrect isEven() result');
        result = VariablesDataTypesOperators.isEven(5);
        Assert.areEqual(false, result, 'Incorrect isEven() result');
        result = VariablesDataTypesOperators.isEven(null);
        Assert.areEqual(null, result, 'Expected null but got ' + result);
    }

    @IsTest 
    static void testIsPositive() {
        Boolean result = VariablesDataTypesOperators.isPositive(10);
        Assert.areEqual(true, result, 'Incorrect isPositive result.');
        result = VariablesDataTypesOperators.isPositive(-10);
        Assert.areEqual(false, result, 'Incorrect isPositive result.');
        result = VariablesDataTypesOperators.isPositive(null);
        Assert.areEqual(null, result, 'Incorrect isPositive null result.');
    }
}