/**
 * @description       : 
 * @author            : sr.Oh
 * @group             : 
 * @last modified on  : 06-30-2021
 * @last modified by  : sr.Oh
 * Modifications Log 
 * Ver   Date         Author   Modification
 * 1.0   06-29-2021   sr.Oh   Initial Version
**/

@isTest
public with sharing class TemperatureConverterTest {
    public TemperatureConverterTest() {

    }

    @isTest 
    static void testWarmTemp() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11, celsius);
    }
    
    @isTest 
    static void testFreezingPoint() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0, celsius);
    }
    // @isTest 
    // static void testBoilingPoint() {
    //     Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);        
    //     System.assertEquals(100, celsius,'Boiling point temperature is not expected.');
    // } 
    
    @isTest 
    static void testNegativeTemp() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(-10);
        System.assertEquals(-23.33, celsius);
    }

    @isTest 
    static void testBoilingPoint() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);        
        // Simulate failure
        System.assertEquals(0,celsius,'Boiling point temperature is not expected.');
    }
}