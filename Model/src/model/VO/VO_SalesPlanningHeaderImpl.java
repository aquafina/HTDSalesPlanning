package model.VO;

import HandlerBean.PageListener;

import HandlerBean.UserInfo;

import javax.faces.context.FacesContext;

import javax.servlet.http.HttpServletRequest;

import oracle.jbo.domain.Number;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Thu Apr 03 23:28:42 UZT 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class VO_SalesPlanningHeaderImpl extends ViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
     
    public VO_SalesPlanningHeaderImpl() {
        
    }

    /**
     * Returns the variable value for Program_Name.
     * @return variable value for Program_Name
     */
    public String getProgram_Name() {
        return (String)ensureVariableManager().getVariableValue("Program_Name");
        //return "test2";
    }


    /**
     * Returns the variable value for Customer_Id.
     * @return variable value for Customer_Id
     */
    public Number getCustomer_Id() {
        return (Number)ensureVariableManager().getVariableValue("Customer_Id");
    }

    /**
     * Sets <code>value</code> for variable Customer_Id.
     * @param value value to bind as Customer_Id
     */
    public void setCustomer_Id(Number value) {
        ensureVariableManager().setVariableValue("Customer_Id", value);
    }

    /**
     * Returns the variable value for Cust_PO_NO.
     * @return variable value for Cust_PO_NO
     */
    public String getCust_PO_NO() {
        return (String)ensureVariableManager().getVariableValue("Cust_PO_NO");
    }

    /**
     * Sets <code>value</code> for variable Cust_PO_NO.
     * @param value value to bind as Cust_PO_NO
     */
    public void setCust_PO_NO(String value) {
        ensureVariableManager().setVariableValue("Cust_PO_NO", value);
    }

    /**
     * Returns the variable value for Sales_Contract_NO.
     * @return variable value for Sales_Contract_NO
     */
    public String getSales_Contract_NO() {
        return (String)ensureVariableManager().getVariableValue("Sales_Contract_NO");
    }

    /**
     * Sets <code>value</code> for variable Sales_Contract_NO.
     * @param value value to bind as Sales_Contract_NO
     */
    public void setSales_Contract_NO(String value) {
        ensureVariableManager().setVariableValue("Sales_Contract_NO", value);
    }

    /**
     * Returns the variable value for Dyeing_WO_NO.
     * @return variable value for Dyeing_WO_NO
     */
    public String getDyeing_WO_NO() {
        return (String)ensureVariableManager().getVariableValue("Dyeing_WO_NO");
    }

    /**
     * Sets <code>value</code> for variable Dyeing_WO_NO.
     * @param value value to bind as Dyeing_WO_NO
     */
    public void setDyeing_WO_NO(String value) {
        ensureVariableManager().setVariableValue("Dyeing_WO_NO", value);
    }

    /**
     * Returns the variable value for PO_Status.
     * @return variable value for PO_Status
     */
    public String getPO_Status() {
        return (String)ensureVariableManager().getVariableValue("PO_Status");
    }

    /**
     * Sets <code>value</code> for variable PO_Status.
     * @param value value to bind as PO_Status
     */
    public void setPO_Status(String value) {
        ensureVariableManager().setVariableValue("PO_Status", value);
    }

    /**
     * Returns the variable value for Greige_Contract_NO.
     * @return variable value for Greige_Contract_NO
     */
    public String getGreige_Contract_NO() {
        return (String)ensureVariableManager().getVariableValue("Greige_Contract_NO");
    }

    /**
     * Sets <code>value</code> for variable Greige_Contract_NO.
     * @param value value to bind as Greige_Contract_NO
     */
    public void setGreige_Contract_NO(String value) {
        ensureVariableManager().setVariableValue("Greige_Contract_NO", value);
    }


    /**
     * Sets <code>value</code> for variable Program_Name.
     * @param value value to bind as Program_Name
     */
    public void setProgram_Name(String value) {
        ensureVariableManager().setVariableValue("Program_Name", value);
    }

    /**
     * Returns the variable value for user_id.
     * @return variable value for user_id
     */
    public String getuser_id() {
        //return (String)ensureVariableManager().getVariableValue("user_id");
       // return PageListener.userID;
       FacesContext fctx = FacesContext.getCurrentInstance();
       HttpServletRequest req =
       (HttpServletRequest)fctx.getExternalContext().getRequest();
        return (String)req.getSession().getAttribute("userID");
        //return "4370";
        //return new UserInfo().getUserID();
    }

    /**
     * Sets <code>value</code> for variable user_id.
     * @param value value to bind as user_id
     */
    public void setuser_id(String value) {
        ensureVariableManager().setVariableValue("user_id", value);
    }


    /**
     * Returns the bind variable value for rsp_id.
     * @return bind variable value for rsp_id
     */
    public String getrsp_id() {
        //return (String)getNamedWhereClauseParam("rsp_id");
        //return PageListener.responsibiltyID;
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest req =
        (HttpServletRequest)fctx.getExternalContext().getRequest();
        return (String)req.getSession().getAttribute("respID");
        //return "1";
        //return new UserInfo().getRespID();
    }

    /**
     * Sets <code>value</code> for bind variable rsp_id.
     * @param value value to bind as rsp_id
     */
    public void setrsp_id(String value) {
        setNamedWhereClauseParam("rsp_id", value);
    }

    /**
     * Returns the bind variable value for resp.
     * @return bind variable value for resp
     */
    public String getresp() {
       // return PageListener.responsibility;
       FacesContext fctx = FacesContext.getCurrentInstance();
       HttpServletRequest req =
       (HttpServletRequest)fctx.getExternalContext().getRequest();
        return (String)req.getSession().getAttribute("resp");
        //return "0";
        //return new UserInfo().getResp();
    }

    /**
     * Sets <code>value</code> for bind variable resp.
     * @param value value to bind as resp
     */
    public void setresp(String value) {
        setNamedWhereClauseParam("resp", value);
    }
}
