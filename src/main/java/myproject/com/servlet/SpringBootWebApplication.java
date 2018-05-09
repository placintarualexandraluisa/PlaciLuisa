package myproject.com.servlet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
/*aici trebuie sa adaug pachetele pe care le mai pun */
@SpringBootApplication
@ComponentScan({"myproject.com.model","myproject.com.web"})
public class SpringBootWebApplication extends SpringBootServletInitializer {

	@Override
	public SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SpringBootWebApplication.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(SpringBootWebApplication.class, args);
		
//		AnnotationConfigApplicationContext context;
//		context=new AnnotationConfigApplicationContext();
//		DatabaseConnectionService service=context.getBean(DatabaseConnectionService.class);
//		service.addDatabase(getHost(),)
	}

}