package HandlerBean;

import Helper.ConnectionProvider;
import Helper.EbizUtil;

import java.sql.Connection;

import java.util.Map;

import javax.faces.context.FacesContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.apps.fnd.ext.common.AppsRequestWrapper;
import oracle.apps.fnd.ext.common.CookieStatus;
import oracle.apps.fnd.ext.common.EBiz;
import oracle.apps.fnd.ext.common.Session;
import oracle.apps.fnd.ext.common.ProfileDirectory;

public class UserInfo {
    private String userID;
    private String userName;
    private String respID;
    private String resp;
    private String profile;
    private String serverID = "6122";
    private String Application_id= "20003";
    private AppsRequestWrapper wrappedRequest;
    
    private static UserInfo _INSTANCE;
    
    public static UserInfo getInstance(){
        if(_INSTANCE == null){
            _INSTANCE = new UserInfo();
            System.out.println("#####################");
            System.out.println("New UserInfo Created");
            System.out.println("#####################");
        }
        return _INSTANCE;
    }
    public UserInfo() {
        //get user info from session
        FacesContext fctx = FacesContext.getCurrentInstance();
        HttpServletRequest request =
                (HttpServletRequest)fctx.getExternalContext().getRequest();
        HttpServletResponse response =
                (HttpServletResponse)fctx.getExternalContext().getResponse();
        CookieStatus icxCookieStatus = null;
        try {
            
            Connection EBSconn = ConnectionProvider.getConnection();
           // print(ConnectionProvider.connectionState());
           
            
            
            EBiz instance = EbizUtil.getEBizInstance();
            wrappedRequest =
                    new AppsRequestWrapper(request, response, EBSconn,
                                           instance);
            Session session = wrappedRequest.getAppsSession();
            
            if (session != null) {
                
                icxCookieStatus =
                        session.getCurrentState().getIcxCookieStatus();
                String agent = wrappedRequest.getEbizInstance().getAppsServletAgent();
                if (!icxCookieStatus.equals(CookieStatus.VALID)) {
                    response.sendRedirect(agent + "AppsLocalLogin.jsp");
                    return;
                }
                setUserName(session.getUserName());
                session.validate();
                setUserID( session.getUserId());
                Map columns = session.getInfo();
                String rId = (String)columns.get("RESPONSIBILITY_ID");
                
                if (rId.equals("52071") || rId.equals("52070") || rId.equals("52050")) {
                    setRespID("1");
                }else{
                    setRespID("0");
                }
                
                ProfileDirectory pd = new ProfileDirectory();
                String profileName = pd.getSpecificProfile("XX_HTD_SALES_PLANNING_ACCESS_LEVEL", null, Application_id, rId, "", serverID, wrappedRequest.getConnection());
                setProfile(profileName);
                System.out.println("----------------------------------------------");
                System.out.println("       UserID= "+getUserID()+"  Username="+getUserName()+" respID= "+getRespID()+"  Profile= "+getProfile());
                System.out.println("----------------------------------------------");
            } else {
                response.sendRedirect("http://prodapp.nishat.net:8001");
            }
        } catch (Exception ob) {
                //runJavaScriptCode("alert(\"Error Occured,Please Contact M.I.S Department\"+);");
                
        }finally{
            try{
                wrappedRequest.getConnection().close();
                if (wrappedRequest.getConnection().isClosed()) {
                    
                }
            }catch(Exception e){
            }
        }
    }


    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setRespID(String respID) {
        this.respID = respID;
    }

    public String getRespID() {
        return respID;
    }

    public void setResp(String resp) {
        this.resp = resp;
    }

    public String getResp() {
        return "1";
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getProfile() {
        return profile;
    }
}
