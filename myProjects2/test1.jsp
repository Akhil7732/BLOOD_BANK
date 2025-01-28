<script>
<%@page import="java.sql.*"%>
<% 
String un = request.getParameter("uname");
String pwd=request.getParameter("pwd");

System.out.println(un+"    "+pwd+"    ");
try{
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","7732000215");
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","");

Statement st = con.createStatement();
System.out.println("***"+un+" "+pwd);
String q = "select * from donorn where name='"+un+"' and password='"+pwd+"'";
ResultSet r = st.executeQuery(q);
if(r.next()==false)
response.sendRedirect("donor/donorNewLogin.html"); 
else{
    System.out.println("***");
//request.getRequestDispatcher("donor/donor.html").forward(request,response);
response.sendRedirect("donor/donors.html"); 
}
st.close();
con.close();

}
catch(Exception e){}
 %>
</script>
