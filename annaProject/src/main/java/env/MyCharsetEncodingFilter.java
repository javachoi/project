package env;

import java.io.IOException;

import javax.servlet.*;

public class MyCharsetEncodingFilter implements Filter{
	   private String encoding;
	   
	   @Override
	   public void doFilter(ServletRequest request,
	                        ServletResponse response, 
	                        FilterChain chain)throws IOException,ServletException{
	     request.setCharacterEncoding(encoding);
	     chain.doFilter(request, response);
	   }
	   
	   @Override
	   public void init(FilterConfig fConfig)throws ServletException{
	     encoding = fConfig.getInitParameter("encoding");
	   }
	   
	   @Override
	   public void destroy( ) { }
	}