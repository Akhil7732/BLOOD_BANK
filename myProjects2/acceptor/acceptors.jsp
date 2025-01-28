
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
  // Class.forName("oracle.jdbc.driver.OracleDriver");
  // Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","7732000215");
  Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","");

   Statement st = con.createStatement();
   //String q="select *from donorn where name='name' AND password='passsword'";
    String q = "insert into acceptors values('"+bloodgroup+"','"+pincode+"','"+dpincode+"','"+num+"','"+gmail+"')";
   //ResultSet r=st.executeQuery(q);
   st.executeUpdate(q);
    q = "select *from donors where bloodgroup = '"+bloodgroup+"'";
   ResultSet r = st.executeQuery(q);
   while(r.next())
   {
     out.println("<html> <body>");
       out.println("We found your blood!!");
       out.println("Blood group:");
          out.println(r.getString(1)+"<br>");
          out.println("Area pin code:");
          out.println(r.getString(2)+"<br>");
          out.println("Area district pin code:");
          out.println(r.getString(3)+"<br>");
          out.println("Mobile number:");
          out.println(r.getString(4)+"<br>");
          out.println("Gmail:");
          out.println(r.getString(5)+"<br>");
          out.println("<br><br>");
      //     System.out.println("</body> </html>");
   } 
   //response.sendRedirect("acceptorf.html"); 
   st.close();
   con.close();
   
   }
   catch(Exception e ) {}
  
     
      %>
     
   
   
   