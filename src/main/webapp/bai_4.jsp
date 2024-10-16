<%-- 
    Document   : bai_4
    Created on : Oct 16, 2024, 8:55:32 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ĐỔI NGOẠI TỆ</h1>
        <form action="bai_4.jsp" method="POST">
             <table border="0">
            <tr>
                <td>Cho biết số tiền</td>
                <td><input type="text" name="sotien" value="" required=""/></td>
            </tr>
            <tr>
                <td>Chọn loại ngoại tệ</td>
                <td>   <select id="ngoaite" name="ngoaite">
                <option value="USD">USD</option>
                <option value="GBP">GBP</option>
                <option value="EUR">EUR</option>
                <option value="JPY">JPY</option>
                <option value="AUD">AUD</option>
            </select></td> 
              
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Đổi tiền" />
                    <input type="reset" value="Tiếp tục" /></td>
            </tr>
        </table>
        </form>
       
        <%
            String sotien = request.getParameter("sotien");
            String ngoaite = request.getParameter("ngoaite");
            if (ngoaite != null) {
                double tien = Double.parseDouble(sotien);
                double tienvnd = 0.0;
                switch (ngoaite) {
                    case "USD":
                        tienvnd = tien*21.380;
                        break;
                    case "GBP":
                        tienvnd =  tien*32622.80;
                        break;
                    case "EUR":
                        tienvnd = tien* 23555.67;
                        break;
                    case "JPY":
                        tienvnd =  tien*178.61;
                        break;
                    case "AUD":
                        tienvnd = tien* 16727.44;
                        break;
                }
              
        %>
        Số tiền đổi được:<%=tienvnd%>
        
        <%    
            }
        %>
    </body>
</html>
