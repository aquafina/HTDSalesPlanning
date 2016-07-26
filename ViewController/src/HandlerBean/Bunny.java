package HandlerBean;

import org.apache.myfaces.trinidad.event.AttributeChangeEvent;

public class Bunny {
    private String name="Guest";
    public static String userID = "100";
    public Bunny() {
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

//    public static void setUserID(String userID) {
//        Bunny.userID = userID;
//    }
//
//    public static String getUserID() {
//        return userID;
//    }
}
