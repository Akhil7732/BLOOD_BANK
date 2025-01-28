<script>
    <%@ page import = "java.sql.*,java.naming.*,java.util.*" %>
    <% 
    //String name = request.getParameter("name");
    String bloodgroup=request.getParameter("bloodgroup");
    String pincode=request.getParameter("pincode");
    String dpincode=request.getParameter("dpincode");
    String num=request.getParameter("num");
    String gmail=request.getParameter("gmail");
    //System.out.println(name+"    "+password+"    "+gmail);
    try{
  
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","");

    Statement st = con.createStatement();
    //String q="select *from donorn where name='name' AND password='passsword'";
     String q = "insert into donors values('"+bloodgroup+"','"+pincode+"','"+dpincode+"','"+num+"','"+gmail+"')";
    //ResultSet r=st.executeQuery(q);
    st.executeUpdate(q);
    response.sendRedirect("donorf.html"); 
    st.close();
    con.close();
    
    }
    catch(Exception e ) {}
   
      
       %>
      </script>
    