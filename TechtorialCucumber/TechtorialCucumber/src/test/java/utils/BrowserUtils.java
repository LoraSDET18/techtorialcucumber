package utils;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

public class BrowserUtils {


    public static void selectByIndex(WebElement element, int indexNumber){
        Select select=new Select(element);
        select.selectByIndex(indexNumber);
    }

    public static void selectByValue(WebElement element, String value){
        Select select=new Select(element);
        select.selectByValue(value);
    }

    public static void selectByText(WebElement element, String text){
        Select select=new Select(element);
        select.selectByVisibleText(text);
    }


}


