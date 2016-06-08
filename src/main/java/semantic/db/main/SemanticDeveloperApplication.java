/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package semantic.db.main;

import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *
 * @author zuacaldeira
 */
@SpringBootApplication
public class SemanticDeveloperApplication {

    private static final String USER = "zua";
    private static final String PASSWORD = "unicidade";
    private static final String URL = "jdbc:mysql://localhost:3306/semantic?zeroDateTimeBehavior=convertToNull";

    public static void main2(String[] args) {
        System.out.println("SemanticDeveloperApplication.main()");
        //FlywayMigrations.migrate(URL, USER, PASSWORD);
        
        //ApplicationContext context = SpringApplication.run(SemanticDeveloperApplication.class, args);
    }
}
