package HandlerBean;


import Helper.ConnectionProvider;
import Helper.EbizUtil;

import Helper.Logger;

import java.io.Console;
import java.io.IOException;

import java.sql.Connection;


import java.sql.SQLException;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.faces.component.UIComponent;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import javax.faces.event.ActionEvent;

import javax.faces.event.ValueChangeEvent;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import oracle.adf.model.BindingContext;

import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.data.RichTable;
import oracle.adf.view.rich.component.rich.input.RichInputDate;

import oracle.adf.view.rich.component.rich.input.RichInputText;
import oracle.adf.view.rich.component.rich.layout.RichPanelFormLayout;
import oracle.adf.view.rich.component.rich.output.RichOutputLabel;

import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.apps.fnd.ext.common.AppsRequestWrapper;
import oracle.apps.fnd.ext.common.AppsSessionHelper;
import oracle.apps.fnd.ext.common.CookieStatus;
import oracle.apps.fnd.ext.common.EBiz;

import oracle.apps.fnd.ext.common.Session;

import oracle.apps.fnd.ext.common.State;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.domain.Date;
import oracle.jbo.domain.Timestamp;

import org.apache.myfaces.trinidad.event.AttributeChangeEvent;
import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;

public class HandlerBean {

    private RichOutputLabel ol1;
    private RichOutputLabel ol2;
    private RichInputText i1;
    private RichInputText i2;
    private RichInputDate idateInspection;
    private RichInputDate idateBooking;
    private RichInputDate id4;
    private RichInputText currentID;
    private RichInputText newId;
    private RichInputText program_id;
    private RichTable article_table;
    private RichTable size_table;
    private RichTable color_table;


    public HandlerBean() {
    }

    public BindingContainer getBindings() {
        return BindingContext.getCurrent().getCurrentBindingsEntry();
    }

    public String cb6_action() {
        // Add event code here...
        System.out.println("here in action listener");
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding =
            bindings.getOperationBinding("Commit");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public void id1_validator(FacesContext facesContext,
                              UIComponent uIComponent, Object object) {
        // Add event code here...
        System.out.println("class " + object.getClass());

        //this.idateBooking.setValue(object);

        //        this.idateInspection.setValue(object);
        //        this.idateBooking.setValue(object);

        //this.idateInspection.setValue(object);

        //this.idateBooking.setValue(object);
        //        Date old = (Date)object;
        //        //        Date newDate = (Date)old.addJulianDays(-14, 0);
        //        Date d1 = new Date(old);
        //        Date d2 = new Date(old);
        //        if (this.id3.getValue() == null) {
        //            this.id3.setValue(new Timestamp(d1.getValue()));
        //            this.i1.setValue(d1.addJulianDays(-14, 0));
        //        }
        //        if (this.id5.getValue() == null) {
        //            this.id5.setValue(new Timestamp(d2.getValue()));
        //            this.i2.setValue(d2.addJulianDays(-14, 0));
        //        }


        Timestamp tim;
        tim = (Timestamp)object;
        //tim = new Timestamp(((Date)object).getValue());
        //System.out.println(tim);

        //convert Timestamp to Date
        Date dat = new Date(tim.getValue());

        //Subtract 14 days from EX_MILL
        dat.addJulianDays(-14, 0);


        //convert Date to Timestamp
        Timestamp newTime = new Timestamp(dat.getValue());
        Timestamp ts3;
        Timestamp ts5;
        ts3 = (Timestamp)this.idateBooking.getValue();
        ts5 = (Timestamp)this.idateInspection.getValue();

        if (ts3 == null) {
            this.idateBooking.setValue(newTime);
        }
        if (ts5 == null) {
            this.idateInspection.setValue(newTime);
        }

    }


    public void setOl1(RichOutputLabel ol1) {
        this.ol1 = ol1;
    }

    public RichOutputLabel getOl1() {
        return ol1;
    }

    public void setOl2(RichOutputLabel ol2) {
        this.ol2 = ol2;
    }

    public RichOutputLabel getOl2() {
        return ol2;
    }


    public void setI1(RichInputText i1) {
        this.i1 = i1;
    }

    public RichInputText getI1() {
        return i1;
    }

    public void setI2(RichInputText i2) {
        this.i2 = i2;
    }

    public RichInputText getI2() {
        return i2;
    }


    public void setIdateInspection(RichInputDate idateInspection) {
        this.idateInspection = idateInspection;
    }

    public RichInputDate getIdateInspection() {
        return idateInspection;
    }

    public void setIdateBooking(RichInputDate idateBooking) {
        this.idateBooking = idateBooking;
    }

    public RichInputDate getIdateBooking() {
        return idateBooking;
    }

    public void pt_gl1_attributeChangeListener(AttributeChangeEvent attributeChangeEvent) {
        System.out.println("In Method");

        //        FacesContext fctx = FacesContext.getCurrentInstance();
        //        HttpServletRequest request =
        //            (HttpServletRequest)fctx.getExternalContext().getRequest();
        //        HttpServletResponse response =
        //            (HttpServletResponse)fctx.getExternalContext().getResponse();
        //        CookieStatus icxCookieStatus = null;
        //        try {
        //
        //
        //            Connection EBSconn = ConnectionProvider.getConnection();
        //            EBiz instance = EbizUtil.getEBizInstance();
        //            AppsRequestWrapper wrappedRequest =
        //                new AppsRequestWrapper(request, response, EBSconn, instance);
        //            //Double checking wrappedRequest
        //            if (wrappedRequest != null) {
        //                // runJavaScriptCode("alert(\"wrappedRequest is not null\");");
        //            } else {
        //                //runJavaScriptCode("alert(\"wrappedRequest is null :-(\");");
        //            }
        //
        //            Session session = wrappedRequest.getAppsSession();
        //            session.setCurrentState(State.INVALID_SSO_EXPIRED_ICX);
        //
        //
        //        } catch (Exception ob) {
        //
        //            ob.printStackTrace();
        //            //runJavaScriptCode("alert(\"EXceptioN\"+);");
        //            try {
        //                response.sendRedirect("http://ebstest.nctex.com:8002");
        //
        //            } catch (IOException e) {
        //
        //            }
        //
        //        }
    }

    public String pt_cb1_action() {
        System.out.println("In Method");

        return null;
    }

    private void logOff() {

        //int sID = PageListener.session.getSessionId();

        //System.out.println("Session id: "+sID);
        //        try{
        //            ConnectionProvider.getConnection();
        //            PageListener.session.invalidate();
        //        }catch(Exception e){
        //            System.out.println("Usman: "+e.getMessage());
        //        }
        //        System.out.println("Log off method");
        //        FacesContext fctx = FacesContext.getCurrentInstance();
        //        HttpServletRequest request =
        //            (HttpServletRequest)fctx.getExternalContext().getRequest();
        //        HttpServletResponse response =
        //            (HttpServletResponse)fctx.getExternalContext().getResponse();
        //
        //        Session session = PageListener.session;
        //
        //        if (session == null) {
        //            System.out.println("Session is null");
        //        }else{
        //            System.out.println("Session is not null");
        //        }
        //        System.out.println((PageListener.wrappedRequest == null)?"is null":"wrapped request is not null");
        //
        //        System.out.println((PageListener.wrappedRequest.getConnection() == null)?"is null":"connection is not null");
        //        AppsSessionHelper helper =
        //            new AppsSessionHelper(PageListener.wrappedRequest.getEbizInstance());
        //        System.out.println((helper == null)?"is null":"helper is not null");
        //        System.out.println((PageListener.wrappedRequest.getEbizInstance() == null)?"is null":"ebiz is not null");
        //        //helper.destroyAppsSession(session, request, response);
        //        //session.invalidate();
        //        System.out.println("Usman: "+session.getCurrentState().toString());
        //
        //        System.out.println((session == null)?"is null":"session is not null");
        //        if (helper.destroyAppsSession(session,request,response)) {
        //            if (session.invalidate()) {
        //                try {
        //                    PageListener.response.sendRedirect("http://prodapp.nctex.com:8000/");
        //                    fctx.responseComplete();
        //                } catch (Exception e) {
        //                    e.printStackTrace();
        //                }
        //
        //            }else{
        //                System.out.println("Unable to invalidate session");
        //            }
        //        }else{
        //            System.out.println("Unable to destroy app session");
        //        }
    }

    private void logout() {
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
            (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
            (HttpServletResponse)fctx.getExternalContext().getResponse();
        CookieStatus icxCookieStatus = null;
        try {
            Connection EBSconn = ConnectionProvider.getConnection();
            EBiz instance = EbizUtil.getEBizInstance();
            AppsRequestWrapper wrappedRequest =
                new AppsRequestWrapper(request, response, EBSconn, instance);

            //Double checking wrappedRequest
            if (wrappedRequest != null) {
                // runJavaScriptCode("alert(\"wrappedRequest is not null\");");
            } else {
                //runJavaScriptCode("alert(\"wrappedRequest is null :-(\");");
            }

            int numberOfCookies = request.getCookies().length;
            Cookie[] cookies = request.getCookies();

            System.out.println("Before: " + numberOfCookies);
            for (int i = 0; i < numberOfCookies; i++) {
                Cookie cookie = cookies[i];

                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }


            System.out.println("now: " + request.getCookies().length);
            Session session = wrappedRequest.getAppsSession();
            AppsSessionHelper helper =
                new AppsSessionHelper(wrappedRequest.getEbizInstance());
            session.setCurrentState(State.INVALID_SSO_INVALID_ICX);
            if (helper.destroyAppsSession(session, request, response)) {
                if (session.invalidate()) {
                    wrappedRequest.getConnection().close();
                    response.sendRedirect("http://prodapp.nctex.com:8000/");
                    fctx.responseComplete();
                }
            }

            if (session == null) {
                System.out.println("Session is null");
            } else {
                System.out.println("Session is not null");
            }
            System.out.println("Usman: " +
                               session.getCurrentState().toString());


        } catch (Exception ob) {

            ob.printStackTrace();
            //runJavaScriptCode("alert(\"EXceptioN\"+);");
            try {
                response.sendRedirect("errorPage.jsp");

            } catch (IOException e) {

            }

        }
    }

    private void logout2() {
        FacesContext fc = FacesContext.getCurrentInstance();
        ExternalContext ectx = fc.getExternalContext();
        HttpSession session = (HttpSession)ectx.getSession(false);
        if (session == null) {
            System.out.println("Session is null");
        }
        try {
            session.invalidate();
            ectx.redirect("http://prodapp.nctex.com:8000/");
            fc.responseComplete();
        } catch (Exception exp) {
            exp.printStackTrace();

        }
    }


    public Timestamp getCurrentDateTime() { /*
        String ins_date;
        //ins_date=sor1.getValue();*/
        //System.out.println("output o fradio "+sor1.getValue());
        // System.out.println("output o fradio ");

        return new Timestamp(System.currentTimeMillis());
    }


    public void setId4(RichInputDate id4) {
        this.id4 = id4;
    }

    public RichInputDate getId4() {
        return id4;
    }

    public Object pt_cl1_action() {
        // Add event code here...
        return null;
    }

    public void pt_cl1_action(ActionEvent actionEvent) {
        // Add event code here...

        logout();
        //logOff();
        //logout2();
    }

    public String cb1_action() {
        BindingContainer bc =
            BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding operation = bc.getOperationBinding("updateRecords");
        List list = bc.getOperationBindings();
        //System.out.println(new.getValue().toString());

        if (operation != null) {
            System.out.println("Operation is not null");
            operation.getParamsMap().put("lineValues",
                                         new String[] { currentID.getValue().toString(),
                                                        newId.getValue().toString() });
            operation.execute();
        } else {
            System.out.println("Operation is nulll");
        }
        return null;
    }

    public void setCurrentID(RichInputText currentID) {
        this.currentID = currentID;
    }

    public RichInputText getCurrentID() {
        return currentID;
    }

    public void setNewId(RichInputText newId) {
        this.newId = newId;
    }

    public RichInputText getNewId() {
        return newId;
    }

    public String save_budget_lines() {
        boolean program_entered = this.program_id.getValue() != null;
        boolean article_entered = this.article_table.getRowCount() > 0;
        boolean size_entered = this.size_table.getRowCount() > 0;
        boolean color_entered = this.color_table.getRowCount() > 0;

        //runJavaScriptCode("alert(\"Program: "+program_entered+" Article: "+article_entered+" Size: "+article_entered+" Color: "+color_entered+"+\");");
        if (program_entered && article_entered && size_entered &&
            color_entered) {

            BindingContainer bindings = getBindings();
            OperationBinding operationBinding =
                bindings.getOperationBinding("Commit");
            Object result = operationBinding.execute();
            //runJavaScriptCode("alert(\"Committed\");");
            if (!operationBinding.getErrors().isEmpty()) {
                return null;
            }
            BindingContainer bc =
                BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding operation =
                bc.getOperationBinding("make_budget_lines");
            List list = bc.getOperationBindings();

            if (operation != null) {
                System.out.println("Operation is not null");
                operation.getParamsMap().put("pid",
                                             Integer.parseInt(this.program_id.getValue().toString()));
                operation.execute();
                //runJavaScriptCode("alert(\"Lines Generated\");");
            } else {
                System.out.println("Operation is nulll");
            }
            return null;
        }
        if (program_entered && !article_entered && !size_entered &&
            !color_entered) {
            //runJavaScriptCode("alert(\"Atleast one Article,size and color is required in order to continue\");");
            BindingContainer bindings = getBindings();
            OperationBinding operationBinding =
                bindings.getOperationBinding("Commit");
            Object result = operationBinding.execute();
            if (!operationBinding.getErrors().isEmpty()) {
                return null;
            }
            return null;
        }
        if (!program_entered && !article_entered && !size_entered &&
            !color_entered) {
            //runJavaScriptCode("alert(\"Just Commit\");");
            BindingContainer bindings = getBindings();
            OperationBinding operationBinding =
                bindings.getOperationBinding("Commit");
            Object result = operationBinding.execute();
            if (!operationBinding.getErrors().isEmpty()) {
                return null;
            }
            return null;
        }


        return null;


    }

    public void setProgram_id(RichInputText program_id) {
        this.program_id = program_id;
    }

    public RichInputText getProgram_id() {
        return program_id;
    }

    public void setArticle_table(RichTable article_table) {
        this.article_table = article_table;
    }

    public RichTable getArticle_table() {
        return article_table;
    }

    public void setSize_table(RichTable size_table) {
        this.size_table = size_table;
    }

    public RichTable getSize_table() {
        return size_table;
    }

    public void setColor_table(RichTable color_table) {
        this.color_table = color_table;
    }

    public RichTable getColor_table() {
        return color_table;
    }

    public static void runJavaScriptCode(String javascriptCode) {
        FacesContext facesCtx = FacesContext.getCurrentInstance();

        ExtendedRenderKitService service =
            Service.getRenderKitService(facesCtx,
                                        ExtendedRenderKitService.class);

        service.addScript(facesCtx, javascriptCode);
    }

    public void onSizeChange(ValueChangeEvent valueChangeEvent) {
        // Add event code here...
        System.out.println("Usman is on Weed");
        UIComponent component = findComponentInRoot("it12");
        refreshComponent(component);
    }

    private static UIComponent findComponentInRoot(String pComponentID) {
        UIComponent component = null;
        FacesContext facesContext = FacesContext.getCurrentInstance();
        if (facesContext != null) {
            UIComponent root = facesContext.getViewRoot();
            component = findComponent(root, pComponentID);
        }
        return component;
    }


    // Refresh the Component

    private static void refreshComponent(UIComponent component) {
        if (component != null) {
            AdfFacesContext.getCurrentInstance().addPartialTarget(component);
        }
    }

    private static UIComponent findComponent(UIComponent root, String id) {
        if (id.equals(root.getId()))
            return root;

        UIComponent children = null;
        UIComponent result = null;
        Iterator childrens = root.getFacetsAndChildren();
        while (childrens.hasNext() && (result == null)) {
            children = (UIComponent)childrens.next();
            if (id.equals(children.getId())) {
                result = children;
                break;
            }
            result = findComponent(children, id);
            if (result != null) {
                break;
            }
        }
        return result;
    }

    public String refresh() {
        // Add event code here...
        System.out.println("In Backing Bean Method");
        DCBindingContainer bindings =
            (DCBindingContainer)BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding iter =
            bindings.findIteratorBinding("VO_XXSalesPlanningHeaderMgt2Iterator");
        if (iter != null) {
            String rowkeyStr =
                iter.getCurrentRow().getKey().toStringFormat(true);
            iter.executeQuery();
            if (rowkeyStr != null) {
                System.out.println(rowkeyStr);
                iter.setCurrentRowWithKey(rowkeyStr);
            }
        } else {
            System.out.println("Iter is null");
        }
        return null;
    }

    public String saveAction() {
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("Saved Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        try {
            BindingContainer bindings = getBindings();
            OperationBinding operationBinding =
                bindings.getOperationBinding("Commit");
            Object result = operationBinding.execute();
            if (!operationBinding.getErrors().isEmpty()) {
                return null;
            }
        } catch (Exception ex) {
            System.out.println("EXceptioN: " + ex.getMessage());
        }

        return null;
    }


    public String logoutFromHTD() {
        // Add event code here...
        
        System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
        System.out.println(" Logout link pressed");
        System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
        
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
            (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
            (HttpServletResponse)fctx.getExternalContext().getResponse();
        Logger logger = new Logger();
        try{
            logger.logAction("Logout Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        try {
            
            fctx.responseComplete();
            response.sendRedirect("http://prodapp.nishat.net:8001/OA_HTML/OALogout.jsp?menu=Y");
        } catch (Exception ex) {
            System.out.println("**************************************************");
            System.out.println("HandlerBean.java: "+ex.getMessage());
            System.out.println("**************************************************");
        } finally {
            request.getSession().invalidate();
        }

        return null;
    }

    public String Delete() {
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("Saved Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        
        
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding = bindings.getOperationBinding("Delete");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public String viewSalesContractCancel() {
        
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("Cancel Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding = bindings.getOperationBinding("Rollback");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public String newSalesContractSearchAction() {


       
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("Search Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding = bindings.getOperationBinding("Execute");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public String newSalesContractSaveAction() {
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("Save Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding = bindings.getOperationBinding("Commit");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public String newSalesContractNewAction() {
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("New Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding = bindings.getOperationBinding("CreateInsert");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public String newSalesContractCancelAction() {
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("Cancel Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding = bindings.getOperationBinding("Rollback");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public String anotherSaveButton() {
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        
        Logger logger = new Logger();
        try{
            logger.logAction("Save Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding = bindings.getOperationBinding("Commit");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty()) {
            return null;
        }
        return null;
    }

    public String homeLink() {
        // Add event code here...
        
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
            (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
            (HttpServletResponse)fctx.getExternalContext().getResponse();
        Logger logger = new Logger();
        try{
            logger.logAction("Home Pressed by: "+request.getSession().getAttribute("userName").toString(), request.getSession().getAttribute("userName").toString()); 
        }catch(Exception ex){
            ex.printStackTrace();
        }
        try {
            
            fctx.responseComplete();
            response.sendRedirect("http://prodapp.nishat.net:8001/OA_HTML/OA.jsp?OAFunc=OAHOMEPAGE");
        } catch (Exception ex) {
            System.out.println("**************************************************");
            System.out.println("HandlerBean.java: "+ex.getMessage());
            System.out.println("**************************************************");
        } finally {
            request.getSession().invalidate();
        }
        
        return null;
    }
}
