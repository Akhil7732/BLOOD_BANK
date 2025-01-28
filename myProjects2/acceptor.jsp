<script>
    <%@page import="java.sql.*"%>
    <% 
    String un = request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    
    System.out.println(un+"    "+pwd+"    ");
    try{
    // Import the Packages
Class.forName("com.mysql.jdbc.Driver");
//Register the drivers using DriverManager
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","");
//Establish a connection using the Connection class object
    Statement st = con.createStatement();
    //Create a statement
    System.out.println("***"+un+" "+pwd);
    String q = "select * from acceptorn where name='"+un+"' and password='"+pwd+"'";
        //Execute the query
    ResultSet r = st.executeQuery(q);
    if(r.next()==false)
    response.sendRedirect("acceptor/accNewLogin.html"); 
    else{
        System.out.println("***");
    //request.getRequestDispatcher("donor/donor.html").forward(request,response);
    response.sendRedirect("acceptor/acceptors.html"); 
    }
    //Close the connections
    st.close();
    con.close();
    
    }
    catch(Exception e){}
     %>
    </script>
    