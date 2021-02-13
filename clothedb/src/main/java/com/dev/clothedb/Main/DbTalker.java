package com.dev.clothedb.Main;

import com.dev.clothedb.Dao.Entity.*;
import com.dev.clothedb.Util.AbstractConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DbTalker extends AbstractConnect {

    public HighNeckTshirt getHighNeckTshirtPrices() {
        HighNeckTshirt hnt = new HighNeckTshirt();
        Connection conn;
        try {
            conn = connect();
            Statement st = conn.createStatement();
            st.execute("SELECT * FROM high_neck_tshirt");
            ResultSet rs = st.getResultSet();
            while (rs.next()) {
                int xs = rs.getInt("XS");
                int s = rs.getInt("S");
                int m = rs.getInt("M");
                int l = rs.getInt("L");
                int xl = rs.getInt("XL");
                String category = rs.getString("category");
                String name = rs.getString("name");
                hnt = new HighNeckTshirt(xs, s, m, l, xl, category, name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hnt;
    }

    public SoftTouchSweatshirt getSoftTouchSweatShirt() {
        SoftTouchSweatshirt sts = new SoftTouchSweatshirt();
        Connection conn;
        try {
            conn = connect();
            Statement st = conn.createStatement();
            st.execute("SELECT * FROM soft_touch_sweatshirt");
            ResultSet rs = st.getResultSet();
            while (rs.next()) {
                int xs = rs.getInt("XS");
                int s = rs.getInt("S");
                int m = rs.getInt("M");
                int l = rs.getInt("L");
                int xl = rs.getInt("XL");
                String category = rs.getString("category");
                String name = rs.getString("name");
                sts = new SoftTouchSweatshirt(xs, s, m, l, xl, category, name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sts;
    }

    public TateArtSweatshirt getTateArtSweatshirt() {
        TateArtSweatshirt tat = new TateArtSweatshirt();
        Connection conn;
        try {
            conn = connect();
            Statement st = conn.createStatement();
            st.execute("SELECT * FROM tate_art_sweatshirt");
            ResultSet rs = st.getResultSet();
            while (rs.next()) {
                int xs = rs.getInt("XS");
                int s = rs.getInt("S");
                int m = rs.getInt("M");
                int l = rs.getInt("L");
                int xl = rs.getInt("XL");
                String category = rs.getString("category");
                String name = rs.getString("name");
                tat = new TateArtSweatshirt(xs, s, m, l, xl, category, name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tat;
    }

    public TulleContrastTshirt getTulleContrastTshirt() {
        TulleContrastTshirt tct = new TulleContrastTshirt();
        Connection conn;
        try {
            conn = connect();
            Statement st = conn.createStatement();
            st.execute("SELECT * FROM tulle_contrast_tshirt");
            ResultSet rs = st.getResultSet();
            while (rs.next()) {
                int xs = rs.getInt("XS");
                int s = rs.getInt("S");
                int m = rs.getInt("M");
                int l = rs.getInt("L");
                int xl = rs.getInt("XL");
                String category = rs.getString("category");
                String name = rs.getString("name");
                tct = new TulleContrastTshirt(xs, s, m, l, xl, category, name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tct;
    }

    public int getTulleContrastTshirtBySize(String size) {
        TulleContrastTshirt tct = new TulleContrastTshirt();
        Connection conn;
        int value =0;
        try {
            conn = connect();
            Statement st = conn.createStatement();
            st.execute("SELECT "+size+" FROM tulle_contrast_tshirt");
            ResultSet rs = st.getResultSet();
            while (rs.next()) {
                value = rs.getInt(size);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return value;
    }

    public ManGeneral getManGeneral() {
        ManGeneral mg = new ManGeneral();
        Connection conn;
        try {
            conn = connect();
            Statement st = conn.createStatement();
            st.execute("SELECT * FROM man_general");
            ResultSet rs = st.getResultSet();
            while (rs.next()) {
                int tshirt = rs.getInt("tshirt");
                int trousers = rs.getInt("trousers");
                int shoes = rs.getInt("shoes");
                int sweatshirt = rs.getInt("sweatshirt");
                int coat = rs.getInt("coat");
                int accessories = rs.getInt("accessories");
                mg = new ManGeneral(tshirt, trousers, shoes, sweatshirt, coat, accessories);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mg;
    }

    public WomanGeneral getWomanGeneral() {
        WomanGeneral wg = new WomanGeneral();
        Connection conn;
        try {
            conn = connect();
            Statement st = conn.createStatement();
            st.execute("SELECT * FROM woman_general");
            ResultSet rs = st.getResultSet();
            int trousers = rs.getInt("trousers");
            int shoes = rs.getInt("shoes");
            int coat = rs.getInt("coat");
            int accessories = rs.getInt("accessories");
            wg = new WomanGeneral(trousers, shoes, coat, accessories);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return wg;
    }
}

