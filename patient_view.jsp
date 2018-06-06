<%@ page import="java.util.Hashtable,java.sql.*,javax.naming.*,javax.sql.*" %>
<html>
<head><title>Patient's  List</title></head>
<body>
<div class="heading">Patient's  Details </div>
<div class="list-container">
    <div class="row head">

	
<% Statement stmt = null;
    ResultSet rs = null;
    ResultSetMetaData rsm = null;
Connection conn = null ;
try
{
 Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://52.229.54.24/demo", "apporbit", "apporbit123");
    String sql = "select * from patient";
             stmt = conn.createStatement( );//create a java.sql.Statement
             //execute a SQL statement,generating  a ResultSet
             rs = stmt.executeQuery(sql);
             rsm = rs.getMetaData( );
             int colCount =  rsm.getColumnCount( );
             //print column names
             for (int i = 1; i <=colCount; ++i) { %>
               <div class="item"><%=rsm.getColumnName(i)%> </div>
          <%  } %>
           </div>
           <div class="item-list">
              <% while( rs.next( )){ %>
                    <div class="row">
                <%     for (int i = 1;  i <=colCount; ++i) { %>
                    <div class="item">    <%= rs.getString(i) %> </div>
                <%} %>
                    </div>
              <%}
          
  } catch (Exception e) {
           throw new JspException(e.getMessage( ));
  } finally {
      try{
          stmt.close( );
          conn.close( );
      } catch (SQLException sqle){ }
              }                 %>
			</div>	
			</div>
</body>
</html>