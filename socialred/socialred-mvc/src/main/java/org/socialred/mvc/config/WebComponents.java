package org.socialred.mvc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "org.socialred.mvc" })
public class WebComponents implements WebMvcConfigurer {
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();

		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");

		return resolver;
	}

	/*
	 * Por defecto el Servlet de Spring MVC sirve todos los recursos asociados a las
	 * peticiones
	 * 
	 * Para tener mejor rendimiento indicamos que los recursos estaticos (CSS, JS,
	 * imagenes,...) los sirva el servidor de aplicaciones directamente NO el
	 * Servlet
	 * 
	 * Colocamos todo bajo una carpeta /WEB-INF/xxxxx
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		/*
		 * Todo el contenido situado en la carpeta xxxxx de la app los sirve el servidor de aplicaciones
		 */
		registry.addResourceHandler("/xxxxx/**").addResourceLocations("/xxxxx/");
	}
}
