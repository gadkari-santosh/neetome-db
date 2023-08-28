package com.neetome.db;

import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@SpringBootApplication
@EnableAutoConfiguration
@EnableMongoRepositories(basePackages = "com.neetome.db.repository.nosql")
@ComponentScan(basePackages = {"db.migration","com.neetome.db"})
public class Application {

    @Autowired
    private Flyway flyway;

    public static void main(String[] args) {
        Flyway.configure()
                .ignoreMigrationPatterns("*:missing")
                .schemas("neetome")
                .load();
        SpringApplication.run(Application.class, args);
    }
}