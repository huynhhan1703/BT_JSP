<%-- 
    Document   : bai_5
    Created on : Oct 16, 2024, 10:54:23 AM
    Author     : ADMIN
--%>

<%@page import="my.common.NewClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TRA CỨU</h1>
        <form action="bai_5.jsp" method="POST">
            Số báo danh<input type="text" name="sbd" value="" />
            Họ tên<input type="text" name="hoten" value="" />
            <button type="submit">Tra cứu </button>
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String hoten = request.getParameter("hoten");
            String sbd = request.getParameter("sbd");
            if (hoten != null || sbd != null) {
                Connection conn = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                conn = NewClass.getConnection();
                if (hoten != null && !hoten.isEmpty()) {
                    ps = conn.prepareStatement("select *from thisinh where hoten like ?");
                    ps.setString(1, "%" + hoten + "%");
                } else if (sbd != null && !sbd.isEmpty()) {
                    ps = conn.prepareStatement("select *from thisinh where sobd = ?");
                    ps.setString(1, sbd);
                }
                rs = ps.executeQuery();
        %>
        <table border="1">

            <tr>
                <th>Số báo danh</th>
                <th>Họ tên</th>
                <th>Địa chỉ</th>
                <th>Điểm toán</th>
                <th>Điểm lý</th>
                <th>Điểm hoá</th>
                <th>Tổng điểm</th>
            </tr>
            <%
                while (rs.next()) {
                    double tongdiem = rs.getFloat(4) + rs.getFloat(5) + rs.getFloat(6);

            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getFloat(4)%></td>
                <td><%=rs.getFloat(5)%></td>
                <td><%=rs.getFloat(6)%></td>
                <td><%=tongdiem%></td>
            </tr>

            <%            }
            %>
        </table>


        <%            }
        %>
    </body>
</html>
