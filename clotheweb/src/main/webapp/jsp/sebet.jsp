<%@ page import="static com.comp.clotheweb.Controller.HomeController.sebetModelList" %>

<%@ page import="com.comp.clotheweb.Models.SebetModel" %>
<%@ page import="static com.comp.clotheweb.Controller.HomeController.clearList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mahammad Yusifov
  Date: 24.12.2020
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<header>
    <title>
        Obtenpero
    </title>
    <style type="text/css">
        /***** RESET *****/
        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp,
        small, strike, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            /*font-size: 100%;
            vertical-align: baseline;*/

        }

        html, body {
            height: 100%;
        }

        body {
            line-height: 1;
        }

        ol, ul {
            list-style: none;
        }

        blockquote, q {
            quotes: none;
        }

        blockquote:before, blockquote:after, q:before, q:after {
            content: '';
            content: none;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        textarea {
            overflow: auto;
        }

        /***** RESET *****/
        .all {
            width: 1348px;
            height: 2700px;
            padding: 50px 0 0 0;
            background-color: rgb(255, 255, 255);
        }

        .c {
            width: 1348px;
            height: 700px;
            margin: 100px 0 0 70px;
            align: center;
        }

        .basliq {
            width: 1300px;
            height: 100px;
            position: fixed;
            color: rgb(0, 0, 0);
            font: bold 100px Centaur;
            margin: 0 0 10px 0;
            padding: 0 0 0 250px;
        }

        .c {
            width: 900px;
            height: 400px;
            border: 0px solid black;
            float: left;
        }

        .sebet {
            width: 300px;
            height: 400px;
            float: left;
            margin: 100px 0 0 20px
        }


        #button {
            width: 300px;
            height: 37px;
            border: 2px solid #000000;
            color: rgb(255, 255, 255);
            background-color: #000000;
            font-weight: bold;
        }

        #button:hover {
            color: #000000;
            background-color: #ffffff;
        }

        td a {
            display: block;
            border: 1px solid black;
            padding: 16px;
        }

        .ch:hover {
            background: gray;
        }
    </style>

    <script>

        function sayThanks() {

            alert("Thanks for shopping")
        }
    </script>
</header>
<body>
<div class="basliq">O B T E N P E R O</div>
<div class="all">
    <div class="c">
        <table border="0" width="900" height="200">
            <tr align="center" bgcolor="black" height="18">

                <td><font color="white"><b>Category</b></font></td>
                <td><font color="white"><b>Name</b></font></td>
                <td><font color="white"><b>Color</b></font></td>
                <td><font color="white"><b>Size</b></font></td>
                <td><font color="white"><b>Price</b></font></td>

            </tr>

            <c:forEach items="${sebetModelList}" var="sebet">
                <tr class="ch" align="center" height="18">
                    <a href="">
                        <td>${sebet.category}</td>
                        <td>${sebet.name}</td>
                        <td>${sebet.color}</td>
                        <td>${sebet.size}</td>
                        <td>${sebet.price}$</td>
                    </a>
                </tr>
            </c:forEach>

        </table>
    </div>

    <div class="sebet">
        <div style="width: 210px; height: 29px; color:white; background: #000; padding:10px 0 0 90px ">
            <b><font size="4">Shopping bag</font></b></div>
        <table border="0" width="300" ; height="200">

            <%
                int subTotal = 0;
                int cargoValue=0;
                String discount = "";
                if(!sebetModelList.isEmpty()){
                    cargoValue=12;
                    discount="5%";
                }
                for (SebetModel s : sebetModelList) {
                    subTotal += s.getPrice();
                }
            %>


            <tr>
                <td width="100" align="center"><font size="3"><b>Subtotal</b></font></td>
                <td><%= subTotal %> $</td>

            </tr>

            <tr>
                <td width="100" align="center"><font size="3"><b>Cargo</b></font></td>
                <td><%= cargoValue%>$</td>
            </tr>

            <tr>
                <td width="100" align="center"><font size="3"><b>Discount</b></font></td>
                <td><%=discount%></td>
            </tr>

            <%
                float total = (subTotal + cargoValue) - (((subTotal + cargoValue) * 5) / 100);
            %>
            <tr>
                <td width="100" align="center"><font size="6"><b>Total</b></font></td>
                <td><%=total %> $</td>
            </tr>

        </table>

        <div class="button">
<%--                        <input type="button" onclick=""  value="Confirm Order" id="">--%>
            <form:form action="clearList" method="get">
                <div class="form-group">
                        <div class="col-sm-2">
                        <input type="submit" onclick="alert('Thanks for shopping')" value="Confirm" id="button">
                    </div>
                </div>
            </form:form>
        </div>
    </div>

</div>
</div>
</body>
</html>
