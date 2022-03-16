package config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import env.로그인확인자;

@Import(value={MyBatisConfig.class})
@Configuration
@EnableWebMvc
@ComponentScan(basePackages="anna.project")
public class MvcConfig implements WebMvcConfigurer {

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/views/",".jsp");
	
	}
	
	@Override
	   public void addResourceHandlers(final ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/img/**").addResourceLocations("/img/");
	   
	}
	/*   
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	registry.addInterceptor(new 로그인확인자())
	        .addPathPatterns("/**")
	        .excludePathPatterns("/main")
	        .excludePathPatterns("/boards")
	        .excludePathPatterns("/board/*")
	        .excludePathPatterns("/login")	
	        .excludePathPatterns("/id")	
	        .excludePathPatterns("/home")	
	        .excludePathPatterns("/member")	
	        .excludePathPatterns("/mypage")	
	        .excludePathPatterns("/img/*")
	        .excludePathPatterns("/update")
	        .excludePathPatterns("/update/*")
	        .excludePathPatterns("/album")
	        .excludePathPatterns("/delete")
	        .excludePathPatterns("/join")
	        .excludePathPatterns("/pictureInfo");		
	}*/
}

