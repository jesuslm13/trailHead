/**
 * @description       : 
 * @author            : sr.Oh
 * @group             : 
 * @last modified on  : 06-29-2021
 * @last modified by  : sr.Oh
 * Modifications Log 
 * Ver   Date         Author   Modification
 * 1.0   06-29-2021   sr.Oh   Initial Version
**/
public with sharing class TemperatureConverter {
    public TemperatureConverter() {

    }

    public static Decimal FahrenheitToCelsius(Decimal fh) {
        Decimal cs = (fh - 32) * 5/9;
        
        return cs.setScale(2);
    }
}