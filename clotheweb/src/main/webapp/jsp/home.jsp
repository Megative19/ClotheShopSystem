<%--
  Created by IntelliJ IDEA.
  User: Mahammad Yusifov
  Date: 23.12.2020
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.dev.clothedb.Main.DbTalker"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<header>
    <title>
        Obtenpero
    </title>
    <style type="text/css">
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
    table {border-collapse: collapse;border-spacing: 0;}
    textarea {overflow:auto;}
    /***** RESET *****/
    .all {width:1348px; height: 2700px; padding: 130px 0 0 0;}
    .basliq {width: 1300px; height: 100px; position:fixed; color: rgb(0, 0, 0);
        font:bold 100px Centaur; margin: 0 0 10px 0; padding: 0 0 20px 310px;}
    .a {position:absolute; display:block;  top:440px; font:bold 50px tahoma;
        left:600px;}
    .a a{text-decoration: solid; color:white}
    .a a:hover{color:rgb(238, 236, 236)}

    .b {position:absolute; display:block;  top:515px; font:bold 50px tahoma;
        left:720px;}
    .b a{text-decoration: solid; color:white}
    .b a:hover{color:rgb(238, 236, 236)}
    .form{float: left;}
    .sebet { width: 775px; height: 40px; background: #000; color:white; font:bold 30px Centaur; float: left;
        margin: 20px 0 0 0; padding:10px 0 0 600px   }
    .sebet a{text-decoration: solid; color:white}

</style>
</header>
<body>
<div class="basliq">O B T E N P E R O </div>

<div class="all">

    <div class="a";><a href="woman">W<br>O<br>M<br>A<br>N</a></div>

    <div class="b"><a href="man">M<br>A<br>N</a></div>

    <div class="frame">
        <iframe height="1000" width="1380" name="1" src="otherImages/photos.html" scrolling="no"></iframe>
    </div>

    <div class="sebet"><a href="sebet">Go to basket</a></div>

</div>
</body>
</html>
