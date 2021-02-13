package com.dev.clothedb.Util;

import java.sql.Connection;
import java.sql.DriverManager;

public abstract class AbstractConnect {
    public Connection connect() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/clothe_shop";
        String username = "root";
        String password = "zero0";
        return DriverManager.getConnection(url, username, password);
    }
}
