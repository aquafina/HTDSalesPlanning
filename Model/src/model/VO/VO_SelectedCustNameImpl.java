package model.VO;

import HandlerBean.PageListener;

import HandlerBean.UserInfo;

import javax.faces.context.FacesContext;

import javax.servlet.http.HttpServletRequest;

import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Apr 04 02:49:47 UZT 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class VO_SelectedCustNameImpl extends ViewObjectImpl {
    /**
     * This is the default constructor (do not remove).
     */
     
    public VO_SelectedCustNameImpl() {
        
    }

    /**
     * Returns the bind variable value for u.
     * @return bind variable value for u
     */
    public String getu() {
        //return (String)getNamedWhereClauseParam("u");
        
        
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest req =
        (HttpServletRequest)fctx.getExternalContext().getRequest();
        //System.out.println("GETU: "+req.getSession().getAttribute("userID")+" , "+PageListener.userID);
        String u = (String)req.getSession().getAttribute("userID");
        return u.trim();
       // return (String)req.getSession().getAttribute("userID");
        //return new UserInfo().getUserID();
    }

    /**
     * Sets <code>value</code> for bind variable u.
     * @param value value to bind as u
     */
    public void setu(String value) {
        setNamedWhereClauseParam("u", value);
    }

    /**
     * Returns the bind variable value for rsp_id.
     * @return bind variable value for rsp_id
     */
    public String getrsp_id() {
        //return PageListener.responsibiltyID;
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest req =
        (HttpServletRequest)fctx.getExternalContext().getRequest();
        return (String)req.getSession().getAttribute("respID");
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
        //return PageListener.responsibility;
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest req =
        (HttpServletRequest)fctx.getExternalContext().getRequest();
        return (String)req.getSession().getAttribute("resp");
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
