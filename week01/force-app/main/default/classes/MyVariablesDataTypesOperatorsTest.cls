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
        Assert.areEqual(null, result, 'Incorrent null subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(10, null);
        Assert.areEqual(null, result, 'Incorrent null subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(null, null);
        Assert.areEqual(null, result, 'Incorrent null subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(50, 20);
        Assert.areEqual(30, result, 'Incorrent subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(20, 50);
        Assert.areEqual(-30, result, 'Incorrent subtraction result.');
        
        result = VariablesDataTypesOperators.subtraction(-20, -10);
        Assert.areEqual(-10, result, 'Incorrent negative numbers subtraction result.');
    }
}