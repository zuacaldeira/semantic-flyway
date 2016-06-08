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
     * Test of main method, of class SemanticDeveloperApplication.
     */
    @Test
    public void testMain2() {
        System.out.println("Test main".toUpperCase());
        String[] args = new String[]{};
        try {
            SemanticDeveloperApplication.main2(args);
        } catch(Throwable t) {
            fail("Flyway Migration execution failed", t);
        }
    }
    
}
