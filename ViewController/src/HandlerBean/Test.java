package HandlerBean;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;

import oracle.adf.view.rich.component.rich.input.RichInputDate;

public class Test {
    private RichInputDate id3;
    private RichInputDate id5;

    public Test() {
    }

    public void idV(FacesContext facesContext, UIComponent uIComponent,
                    Object object) {
        // Add event code here...
        System.out.println("Test: "+object.getClass());
        this.id3.setValue(object);
    }

    public void setId3(RichInputDate id3) {
        this.id3 = id3;
    }

    public RichInputDate getId3() {
        return id3;
    }

    public void setId5(RichInputDate id5) {
        this.id5 = id5;
    }

    public RichInputDate getId5() {
        return id5;
    }
}
