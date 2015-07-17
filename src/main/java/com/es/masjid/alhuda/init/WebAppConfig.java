package com.es.masjid.alhuda.init;

import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan({"com.es"})
@PropertySource("classpath:application.properties")
public class WebAppConfig extends WebMvcConfigurerAdapter {

	@Resource
	private Environment env;
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/demos/**").addResourceLocations("/demos/");
        registry.addResourceHandler("/css/**").addResourceLocations("/css/");
        registry.addResourceHandler("/op-css/**").addResourceLocations("/op-css/");
        registry.addResourceHandler("/images/**").addResourceLocations("/images/");
        registry.addResourceHandler("/js/**").addResourceLocations("/js/");
        registry.addResourceHandler("/include/**").addResourceLocations("/include/");
        registry.addResourceHandler("/less/**").addResourceLocations("/less/");
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        registry.addResourceHandler("/client/**").addResourceLocations("/client/"); 
    }	

//	@Bean
//	public UrlBasedViewResolver setupViewResolver() {
//		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
//		resolver.setPrefix("/WEB-INF/");
//		resolver.setSuffix(".jsp");
//		resolver.setViewClass(JstlView.class);
//		return resolver;
//	}
	
	@Bean
	public ResourceBundleMessageSource messageSource() {
		ResourceBundleMessageSource source = new ResourceBundleMessageSource();
		source.setBasename(env.getRequiredProperty("message.source.basename"));
		source.setUseCodeAsDefaultMessage(true);
		return source;
	}
	
	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer tiles = new TilesConfigurer();
		tiles.setDefinitions(new String[] {
		"/WEB-INF/layout/tiles.xml"
		});
		tiles.setCheckRefresh(true);
		return tiles;
	}	
	
	@Bean
	public ViewResolver viewResolver() {
	return new TilesViewResolver();
	}	
	
	@Bean
	public JavaMailSenderImpl mailSender(){
		JavaMailSenderImpl ms = new JavaMailSenderImpl();
		ms.setHost("mail.masjidalhuda.org");
		ms.setPort(25);
		ms.setUsername("masjid@masjidalhuda.org");
		ms.setPassword("");
		
		Properties javaMailProperties= new Properties();
		javaMailProperties.put("mail.transport.protocol", "smtp");
		javaMailProperties.put("mail.smtp.auth", "true");
		javaMailProperties.put("mail.smtp.starttls.enable", "true");
		ms.setJavaMailProperties(javaMailProperties);
		return ms;
	}
	

}
