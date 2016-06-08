/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package semantic.db.main;

import java.io.File;
import javax.annotation.PostConstruct;
import javax.xml.bind.JAXB;
import org.jooq.util.GenerationTool;
import org.jooq.util.jaxb.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author zuacaldeira
 */
@RestController
@RequestMapping("/jooq")
public class SemanticJOOQGenerator {

    private Configuration configuration = null;

    @PostConstruct
    private void setUp() {
        configuration = JAXB.unmarshal(new File("src/main/resources/db/generator/generator.xml"), Configuration.class);
        configuration.getJdbc()
                .withUser("zua")
                .withPassword("unicidade");
    }

    @RequestMapping("/generate")
    public void generate() throws Exception {
        System.out.println("Generating classes...");

        GenerationTool.generate(configuration);
        System.out.println("\tClasses generated!");
    }

}
