/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package semantic.db.main;

import org.flywaydb.core.Flyway;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author zuacaldeira
 */
@RestController
public class FlywayMigrations {

    /**
     * Run the migrations for this project. The migration sql files can be found
     * on folder src/main/resources/db/migration/.
     *
     * @param url The underlying database url
     * @param username The username of an authorized db user
     * @param password The password of the authorized db user
     */
    public void migrate(String url, String username, String password) {
        Flyway flyway = new Flyway();
        flyway.setDataSource(url, username, password);
        flyway.migrate();
    }

}
