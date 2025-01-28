<script>
    <%@ page import = "java.sql.*,java.naming.*,java.util.*" %>
    <% 
    String name = request.getParameter("name");
    String password=request.getParameter("password");
    String cpassword=request.getParameter("cpassword");
    String gmail=request.getParameter("gmail");
    if(password!=cpassword)
    {
        System.out.println("Password did not match");
    }else{
        System.out.println("Password created successfully");
    }
    System.out.println(name+"    "+password+"    "+gmail);
    try{
    //Class.forName("oracle.jdbc.driver.OracleDriver");
    //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","7732000215");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","");

    Statement st = con.createStatement();
    //String q="select *from donorn where name='name' AND password='passsword'";
     String q = "insert into donorn values('"+name+"','"+password+"','"+cpassword+"','"+gmail+"')";
    //ResultSet r=st.executeQuery(q);
    response.sendRedirect("donor/donor.html"); 
    st.executeUpdate(q);
    st.close();
    con.close();
    
    }
    catch(Exception e ) {}
   
      
       %>
    </script>
    
    
    