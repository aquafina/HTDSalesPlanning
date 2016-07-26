package Helper;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.apps.fnd.ext.common.EBiz;
public class EbizUtil {
    private static final Logger logger =Logger.getLogger(EbizUtil.class.getName());
    private static EBiz INSTANCE = null;
    static {
        Connection connection = null;
        
        try {
            connection = ConnectionProvider.getConnection();
            //INSTANCE =new EBiz(connection,"F519F3D075AAEF3FE040A8C01F000C2036302360731828489716984983536247");
//            INSTANCE =new EBiz(connection,"FC80501DB5EAE8BAE040A8C01F002D2912809212932505775566247623187520");
            //INSTANCE =new EBiz(connection,"1A5E8445027E892AE050980A220D316826942222898481975378818338241528");
            
            INSTANCE =new EBiz(connection,"1B713AE1DB76742DE050A8C01F0044FF15026417822445607976106053743325");
           
        } catch (SQLException e) {
            logger.log(Level.SEVERE,"SQLException while creating EBiz instance -->",e);
            throw new RuntimeException(e);
        } catch (Exception e) {
            logger.log(Level.SEVERE,"Exception while creating EBiz instance -->",e);
            throw new RuntimeException(e);
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.out.println("EbixUtil.java: Connection Closed , Usage: Getting EBIZ Instance");
                }
            }
        }
    }
    public static EBiz getEBizInstance() {
        return INSTANCE;
    }
}