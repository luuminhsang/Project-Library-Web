package com.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.service.Unauthorized;
import com.service.UserService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	UserService userService;

	@Override
	@Bean
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder encrypt = new BCryptPasswordEncoder();
		return encrypt;
	}

	@Autowired
	private Unauthorized unauthorized;

	@Autowired
	private CustomAuthenticationSuccessHandler authenticationSuccessHandler;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService).passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.httpBasic();
		http.csrf().disable();
		http.authorizeRequests()
				.antMatchers("/", "/home", "/login", "/register", "/forgot-password", "/validate-email",
						"/validate-login", "/validate-password", "/validate-username", "/validate-confirm-password").permitAll()//
				.antMatchers("/templates/**", "/data/**").permitAll()//
				.antMatchers("/dashboard", "/table", "/statistics").access("hasRole('ROLE_ADMIN')")//
				.antMatchers("/book", "/video", "/blog", "/cart", "/details", "/contact")
				.access("hasAnyRole('ROLE_VIEWER', 'ROLE_POSTER')")//
				.anyRequest().authenticated();
		http.exceptionHandling().authenticationEntryPoint(unauthorized);

		http.authorizeRequests().and().formLogin()
			
				.loginProcessingUrl("/login") 
				.loginPage("/login")//
				.successHandler(authenticationSuccessHandler).failureUrl("/login?error=true")//
				.usernameParameter("userName")
				.passwordParameter("password")

				.and().logout().logoutUrl("/log-out").deleteCookies("JSESSIONID").invalidateHttpSession(true)
				.logoutSuccessUrl("/login");
	}
}
