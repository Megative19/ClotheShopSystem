<%@ page import="com.dev.clothedb.Dao.Entity.TulleContrastTshirt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mahammad Yusifov
  Date: 24.12.2020
  Time: 21:45
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
            background-color: black;
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
            color: rgb(255, 255, 255);
            font: bold 100px Centaur;
            margin: 0 0 10px 0;
            padding: 0 0 0 250px;
        }

        .sekil {
            height: 505px;
            width: 720px;
            float: left;
        }

        .sekil2 {
            height: 505px;
            width: 720px
        }

        .form {
            height: 500px;
            width: 550px;
            float: left;
            border: 0px solid white
        }

        .size {
            display: block;
            background: rgb(255, 255, 255);
            width: 115px;
            height: 33px;
            padding: 9px 0 0 70px;
            font: 20px rockwell;
            float: left;
            margin: 40px 0 0 0;
        }

        .size ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .size ul li {
            background: rgb(255, 245, 245);
            width: 60px;
        }

        .size ul li ul {
            display: none;
            position: absolute;
        }

        .size ul li:hover ul {
            display: block
        }


        .color {
            display: block;
            background: rgb(255, 255, 255);
            width: 124px;
            height: 33px;
            padding: 9px 0 0 65px;
            font: 20px rockwell;
            float: left;
            margin: 40px 0 0 10px;
        }

        .color ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .color ul li {
            background: rgb(255, 255, 255);
            width: 100px;
        }

        .color ul li ul {
            display: none;
            position: absolute;
        }

        .color ul li:hover ul {
            display: block;
        }

        .yazi {
            border: 0px solid white;
            width: 500px;
            height: 50px;
        }

        .sebet {
            width: 775px;
            height: 40px;
            background: #000;
            color: white;
            font: bold 30px Centaur;
            float: left;
            margin: 90px 0 0 0;
            padding: 10px 0 0 600px
        }

        .sebet a {
            text-decoration: solid;
            color: white
        }

        #button {
            width: 385px;
            height: 37px;
            border: 2px solid #ffffff;
            color: rgb(0, 0, 0);
            background-color: #ffffff;
            margin: 10px 0 0 0;
            font: bold 20px rockwell;
        }

        #button:hover {
            color: #ffffff;
            background-color: #000000;
        }
    </style>

    <script>
        function getValue(radio) {
            document.getElementById("currentsizevalue").innerHTML = radio + "$";
        }

    </script>
</header>
<body>
<div class="basliq">O B T E N P E R O</div>
<div class="all">
    <div class="c">
        <div class="sekil"><img height="500" src="otherImages/tt3.png">
            <img height="500" src="womanImages/tt3.2.png">
        </div>

        <form:form modelAttribute="sebetRequestModel" action="add" method="post">

        <div class="form-group">
                <%--            <label for="category">Category</label>--%>
            <div class="col-sm-10">
                <form:input path="category" type="hidden" value="${tulleContrastTshirt.category}"/>
            </div>


                <%--            <label for="name">Name</label>--%>
            <div class="col-sm-10   ">
                <form:input path="name" type="hidden" value="${tulleContrastTshirt.name}"/>
            </div>

                <%--            <label for="size">Size</label>--%>
            <div class="col-sm-10">
                <form:input path="size" type="hidden" value="${tulleContrastTshirt}"/>
            </div>

            <div class="col-sm-10">
                <form:input path="price" type="hidden" value="${tulleContrastTshirt.currentSizeValue}"/>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-2">
                <input type="submit" value="Add" id="button">
            </div>
        </div>


        <div class="form">
            <div class="yazi"><font color="white" size="6" face="Centaur"><b>TULLE CONTRAST T-SHIRT</b></font></div>
                <%--            <div class="yazi"><font color="white" size="5"--%>
                <%--                                    face="Centaur"><b id="currentsizevalue">${tulleContrastTshirt.currentSizeValue}$</b></font>--%>
                <%--            </div>--%>
            <div class="yazi"><font color="white" size="5"
                                    face="Centaur"><p type="text"
                                                      id="currentsizevalue">Please choose size to see price</p>
            </font>
            </div>
            <div class="yazi"><font color="white" size="4" face="Centaur"><b>Product code #000001</b></font></div>
            <div class="yazi"><font color="white" size="4" face="Centaur"><b>Round neck T-shirt with short sleeves.
                Contrast printed detail on the front. Pleated hem at the back.</b></font></div>
            <div class="yazi"><font color="white" size="4" face="Centaur"><b>Care for fiber: at least 75% organic
                cotton.</b></font></div>


                <%--            <div class="size">--%>
                <%--                <ul>--%>
                <%--                    <li>--%>
                <%--                        <b>Size</b>--%>
                <%--                        <ul>--%>
                <%--                            <li><input type="radio" name="1" value="${tulleContrastTshirt.s}" onchange="getValue(this)">S--%>
                <%--                            <li></li>--%>
                <%--                            <li><input type="radio" name="1" value="${tulleContrastTshirt.m}" onchange="getValue(this)">M--%>
                <%--                            <li></li>--%>
                <%--                            <li><input type="radio" name="1" value="${tulleContrastTshirt.l}" onchange="getValue(this)">L--%>
                <%--                            <li></li>--%>
                <%--                            <li><input type="radio" name="1" value="${tulleContrastTshirt.xl}"--%>
                <%--                                       onchange="getValue(this)">XL--%>
                <%--                            <li></li>--%>
                <%--                        </ul>--%>

                <%--                    </li>--%>
                <%--                </ul>--%>
                <%--            </div>--%>

            <div class="size">
                <ul>
                    <li>
                        <b>Size</b>
                        <ul>
                            <li><form:radiobutton path="size" name="XS" value="XS"
                                                  onchange="getValue(${tulleContrastTshirt.xs})"/>XS
                            </li>
                            <li></li>
                            <li><form:radiobutton path="size" name="S" value="S"
                                                  onchange="getValue(${tulleContrastTshirt.s})"/>S
                            </li>
                            <li></li>
                            <li><form:radiobutton path="size" name="M" value="M"
                                                  onchange="getValue(${tulleContrastTshirt.m})"/>M
                            </li>
                            <li></li>
                            <li><form:radiobutton path="size" name="L" value="L"
                                                  onchange="getValue(${tulleContrastTshirt.l})"/>L
                            </li>
                            <li></li>
                            <li><form:radiobutton path="size" name="XL" value="XL"
                                                  onchange="getValue(${tulleContrastTshirt.xl})"/>XL
                            </li>
                            <li></li>
                        </ul>

                    </li>
                </ul>
            </div>

            <div class="color">
                <ul>
                    <li><b>Color</b>
                        <ul>
                            <li><form:radiobutton path="color" name="1" value="black" onchange="getColor(this)"/>Black
                            </li>
                            <li></li>
                            <li><form:radiobutton path="color" name="2" value="white" onchange="getColor(this)"/>White
                            </li>
                            <li></li>
                            <li><form:radiobutton path="color" name="3" value="gray" onchange="getColor(this)"/>Gray
                            </li>
                            <li></li>
                            <li><form:radiobutton path="color" name="4" value="blue" onchange="getColor(this)"/>Blue
                            </li>
                            <li></li>
                        </ul>
                    </li>
                </ul>
            </div>


                <%--   FORMMMMMM--%>
            </form:form>

            <%--                        <div class="color">--%>
            <%--                            <ul>--%>
            <%--                                <li><b>Color</b>--%>
            <%--                                    <ul>--%>
            <%--                                        <li><input type="radio" name="2" value="black"  onchange="getColor(this)">Black--%>
            <%--                                        <li></li>--%>
            <%--                                        <li><input type="radio" name="2" value="white" onchange="getColor(this)">White--%>
            <%--                                        <li></li>--%>
            <%--                                        <li><input type="radio" name="2" value="gray" onchange="getColor(this)">Gray--%>
            <%--                                        <li></li>--%>
            <%--                                        <li><input type="radio" name="2" value="blue" onchange="getColor(this)">Blue--%>
            <%--                                        <li></li>--%>
            <%--                                    </ul>--%>
            <%--                                </li>--%>
            <%--                            </ul>--%>
            <%--                        </div>--%>


        </div>


        <div class="sekil2"><img height="500" src="womanImages/tt3.1.png">
            <img height="500" src="womanImages/tt3.3.png">
        </div>

    </div>

    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>

    <div class="sebet"><a href="sebet">Go to basket</a></div>
</div>
</body>

</html>