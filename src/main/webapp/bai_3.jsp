<%-- 
    Document   : bai_3
    Created on : Oct 16, 2024, 8:46:07 AM
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
        <h1>DIỆN TÍCH - CHU VI HÌNH TRÒN</h1>
        <form action="bai_3.jsp" method="POST">
            <table border="0">
                <tr>
                    <td>Hãy nhập bán kính</td>
                    <td><input type="text" name="bankinh" value="" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính toán" />
                        <input type="reset" value="Tiếp tục" /></td>
                </tr>
            </table>
            <%
                String bankinh = request.getParameter("bankinh");
                if (bankinh != null) {
                    double r = Double.parseDouble(bankinh);
                    double dt = Math.PI * Math.pow(r, 2);
                    double cv = 2 * Math.PI * r;
            %>
            Diện tích:<%=dt%><br>
            Chu vi:<%=cv%>
            <%
                }
            %>

        </form>
    </body>
</html>
