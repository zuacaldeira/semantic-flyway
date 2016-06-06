/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package semantic.db.main;

import static org.testng.Assert.*;
import org.testng.annotations.Test;

/**
 *
 * @author zuacaldeira
 */
public class MigrateNGTest {
    
    public MigrateNGTest() {
    }

    /**
     * Test of main method, of class Migrate.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        try {
            Migrate.main(args);
            System.out.println("Migration TEST success".toUpperCase());
        } catch(Throwable t) {
            fail("Flyway Migration execution failed", t);
        }
    }
    
}
