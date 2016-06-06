/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package semantic.db.main;

import org.flywaydb.core.Flyway;

/**
 *
 * @author zuacaldeira
 */
public class Migrate {

    private static final String USER = "zua";
    private static final String PASSWORD = "unicidade";
    private static final String URL = "jdbc:mysql://localhost:3306/semantic?zeroDateTimeBehavior=convertToNull";

    public static void main(String[] args) {
        System.out.println("Migrate.main()");
        Flyway flyway = new Flyway();
        flyway.setDataSource(URL, USER, PASSWORD);
        flyway.migrate();
    }
}
