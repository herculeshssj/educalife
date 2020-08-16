package br.com.hslife.educalife.action;

import org.openxava.actions.*;

public class HideShowPropertyAction extends ViewBaseAction {

	private boolean hide;
    private String property;
 
    public void execute() throws Exception {                    // 2
        getView().setHidden(property, hide);                    // 3
        System.out.println("Comando executado!!!!!");
    }
 
    public boolean isHide() {
        return hide;
    }
 
    public void setHide(boolean b) {
        hide = b;
    }
 
    public String getProperty() {
        return property;
    }
 
    public void setProperty(String string) {
        property = string;
    }

}
