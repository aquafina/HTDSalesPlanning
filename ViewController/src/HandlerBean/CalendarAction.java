package HandlerBean;

import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.RichPopup;
import oracle.adf.view.rich.event.CalendarActivityEvent;
import oracle.adf.view.rich.model.CalendarActivity;

import oracle.binding.BindingContainer;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.RowSetIterator;

import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;

public class CalendarAction {
    private RichPopup detailPOPup;

    public CalendarAction() {
    }

    public void calActListener(CalendarActivityEvent calendarActivityEvent) {

        // Add event code here...
        CalendarActivity activity =
            calendarActivityEvent.getCalendarActivity();

        System.out.println(activity.getId());
        if (activity != null) {
            DCBindingContainer dcbindings =
                (DCBindingContainer)BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding iterator =
                dcbindings.findIteratorBinding("VOExmillCalander1Iterator");
            Key key = new Key(new Object[] { activity.getId() });
            RowSetIterator rsi = iterator.getRowSetIterator();
            Row row = rsi.findByKey(key, 1)[0];
            rsi.setCurrentRow(row);
        }
    }
    
    public void onCancel(ActionEvent actionEvent) {
        hidePopup(getDetailPOPup());
    }
    
    public void hidePopup(RichPopup popup) {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ExtendedRenderKitService service =
            Service.getRenderKitService(facesContext,
                                        ExtendedRenderKitService.class);
        service.addScript(facesContext,
                          "AdfPage.PAGE.findComponent('" + popup.getClientId(facesContext) +
                          "').hide();");
    }

    public BindingContainer getBindings() {
        return BindingContext.getCurrent().getCurrentBindingsEntry();
    }

    public void setDetailPOPup(RichPopup detailPOPup) {
        this.detailPOPup = detailPOPup;
    }

    public RichPopup getDetailPOPup() {
        return detailPOPup;
    }
}
