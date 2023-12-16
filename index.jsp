<%-- 
    Document   : index
    Created on : 28-Nov-2023, 21:32:37
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style_1.css" rel="stylesheet" type="text/css" />
        <title>TOKO BARANG</title>
    </head>
    <body bgcolor="#808080">
        <%
            String menu="<br><b>Master Data</b><br>"
                    + "<a href=.>Nama barang</a><br>"
                    + "<a href=.>Kode barang</a><br><br>"
                    + "<b>Transaksi</b><br>"
                    + "<a href=.>Harga</a><br><br>"
                    + "<b>Laporan</b><br>"
                    + "<a href=.>Data masuk</a><br><br>"
                    + "<a href=LoginController>Login</a><br><br>";
            String topMenu="<nav><ul>"
                    +"<li><a href=.>Home</a></li>"
                    +"<li><a href=#>Master Data</a>"
                    +"<ul>"
                    +"<li><a href=.>Nama barang</a></li>"
                    +"<li><a href=.>Kode barang</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=#>Transaksi</a>"
                    +"<ul>"
                    +"<li><a href=.>Harga</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=#>Laporan</a>"
                    +"<ul>"
                    +"<li><a href=.>Data masuk</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=LoginController>Login</a></li>"
                    +"</ul>"
                    +"</nav>";
            String konten="<br><h1>Selamat Datang Di Toko Bahtera </h1>";
            String userName="";
            
            if (!session.isNew()){
                try {
                    userName = session.getAttribute("userName").toString();
                } catch (Exception ex) {}
                
                if (!((userName == null) || userName.equals(""))){
                    konten += "<h2>"+userName+"</h2>";
                    
                    try {
                        menu = session.getAttribute("menu").toString();
                    } catch (Exception ex){}
                    
                    try {
                        topMenu = session.getAttribute("topMenu").toString ();
                    } catch (Exception ex){}    
                        
                }
            }
            
        %>  


    <center>
        <table width="80%" bgcolor="#eeeeee">
            <tr>
                <td colspan="2" align="center">
                    <br>
                    <h2 Style="margin-bottom:0px; margin-top:0px;">
                        TOKO BAHTERA
                    </h2>
                    <h1 Style="margin-bottom:0px; margin-top:0px;">
                        KEBUTUHAN RUMAH TANGGA
                    </h1>
                    <h4 Style="margin-bottom:0px; margin-top:0px;">
                        Jl. Kesehatan no.4 ,Jakarta Selatan
                    </h4>
                    <br>
                </td>
            </tr>
            <tr height="400">
                <td width="200" align="center" valign="top" bgcolor="#eeffee">
                    <br>
                    <div id="menu">
                        <%=menu %>
                    </div>
                </td>
            
                <td align="center" valign="top" bgcolor="#ffffff">
                    <%=topMenu%>
                    <br>
                    <%=konten %>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" bgcolor="#eeeeff">
                    <small>
                        Copyright &copy; 2016 TOKO BAHTERA<br>
                        Jl. Kesehatan no.4 ,Jakarta Selatan<br>
                    </small>
                </td>
            </tr>
                
                </td>
            
                    </div>
                </td>
            </tr>
                </td>
            </tr>
        </table>
    </center>
        
    </body>
</html>