package com.dev.clothedb;

import com.dev.clothedb.Main.DbTalker;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class ClothedbApplication {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(ClothedbApplication.class, args);
        DbTalker dbTalker = new DbTalker();


    }

}
