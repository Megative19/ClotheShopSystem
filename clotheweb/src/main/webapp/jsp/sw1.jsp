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
    </title><style type="text/css">
    /***** RESET *****/
    html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code,del, dfn, em, font, img, ins, kbd, q, s, samp,
    small, strike, sub, sup, tt, var, b, u, i, center,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr {
        margin: 0;
        padding: 0;
        border: 0;
        outline: 0;
        /*font-size: 100%;
        vertical-align: baseline;*/

    }
    html, body {height:100%;}
    body {line-height: 1;}
    ol, ul {list-style: none;}
    blockquote, q {quotes: none;}
    blockquote:before, blockquote:after, q:before, q:after {content: '';content: none;}
    table {border-collapse: collapse;border-spacing:0;}
    textarea {overflow:auto;}
    /***** RESET *****/
    .all {width:1348px; height: 2700px; padding: 50px 0 0 0; }
    .c {  width: 1348px; height: 700px;margin: 100px 0 0 70px; align:center;  }
    .basliq {width: 1300px; height: 100px; position:fixed;color: rgb(0, 0, 0); font:bold 100px Centaur; margin: 0 0 10px 0; padding: 0 0 0 250px;}
    .sekil {height:505px; width: 720px; float: left;}

    .form {height: 500px; width:450px; float: left;}
    .size {display:block; background-color: #000000; width: 115px; height: 33px; padding:9px 0 0 70px; font: 20px rockwell; float: left; margin:40px 0 0 0;}
    .size ul {margin: 0; padding: 0; list-style: none; }
    .size ul li { background-color: #000000; width: 60px;}
    .size ul li ul {display: none; position: absolute;}
    .size ul li:hover ul{display:block}


    .color {display:block; background-color: #000000; width: 124px; height: 33px; padding:9px 0 0 65px; font: 20px rockwell; float: left; margin:40px 0 0 10px;}
    .color ul {margin: 0; padding: 0; list-style: none; }
    .color ul li { background-color: #000000; width: 100px;}
    .color ul li ul {display: none; position: absolute;}
    .color ul li:hover ul{display:block}
    .yazi {border:0px solid black; width: 500px; height: 50px;}
    .sebet { width: 775px; height: 40px; background: #000; color:white; font:bold 30px Centaur; float: left;
        margin: 20px 0 0 0; padding:10px 0 0 600px   }
    .sebet a{text-decoration: solid; color:white}
    #button { width:385px; height: 37px; border:2px solid #000; color:white; background-color:#000; margin:10px 0 0 0; font:bold 20px rockwell; }
    #button:hover{ color:#000; background-color: #fff;}
</style>
</header>
<body>
<div class="basliq">O B T E N P E R O </div>
<div class="all">
    <div class="c" >
        <div class="sekil"><img height="500" src="otherImages/sw1.png">
            <img height="500" src="womanImages/sw1.1.PNG">
        </div>


        <div class="form">
            <div class="form">
                <div class="yazi"><font color="#000000" size="6" face="Centaur"><b>SOFT-TOUCH SWEATSHIRT WITH ELASTIC HEM</b></font></div><br></br>
                <div class="yazi"><font color="#000000" size="5" face="Centaur"><b>25.00$</b></font></div>
                <div class="yazi"><font color="#000000" size="4" face="Centaur"><b>Product code #000003</b></font></div>
                <div class="yazi"><font color="#000000" size="4" face="Centaur"><b>Soft-touch cropped sweatshirt with an elastic hem, a round neckline and long sleeves.</b></font></div>
                <br></br>
                <div class="yazi"><font color="#000000" size="4" face="Centaur"><b>Care for fiber: at least 50% cotton.</b></font></div>
                <div class="size" >
                    <ul>
                        <li><font color="white"><b>Size</b></font>
                            <ul>
                                <li><input type="radio" name="1" value="XS"><font color="white">XS</font><li></li>
                                <li><input type="radio" name="1" value="S"><font color="white">S</font><li></li>
                                <li><input type="radio" name="1" value="M"><font color="white">M</font><li></li>
                                <li><input type="radio" name="1" value="L"><font color="white">L</font><li></li>
                                <li><input type="radio" name="1" value="XL"><font color="white">XL</font><li></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="color">
                    <ul>
                        <li><font color="white"><b>Color</b></font>
                            <ul>
                                <li><input type="radio" name="2" value="black"><font color="white">Black</font><li></li>
                                <li><input type="radio" name="2" value="white"><font color="white">White</font><li></li>
                                <li><input type="radio" name="2" value="gray"><font color="white">Gray</font><li></li>
                                <li><input type="radio" name="2" value="blue"><font color="white">Blue</font><li></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class=""><input type="button" value="ADD" id="button"></div>
            </div>




        </div>
    </div>
    <div class="sebet"><a href="sebet">Go to basket</a></div>
</div>
</body>
</html>