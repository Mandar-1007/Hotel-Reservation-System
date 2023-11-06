
package others;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DatabaseConnection 

{
    public static Connection getConnection()
    {
       
        try 
        {
            Context ctx=new InitialContext();
            DataSource ds=(DataSource)ctx.lookup("jdbc/myDatasource");
            return ds.getConnection();
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    return null;
    }
}
