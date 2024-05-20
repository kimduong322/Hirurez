// package com.duongdk.edu.Hiruez.config;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.security.authentication.AuthenticationProvider;
// import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
// import org.springframework.security.core.Authentication;
// import org.springframework.security.core.AuthenticationException;
// import org.springframework.security.core.userdetails.UserDetails;
// import org.springframework.stereotype.Component;

// import com.duongdk.edu.Hiruez.repository.UserRepository;
// import com.duongdk.edu.Hiruez.repository.UserRoleRepository;

// import lombok.RequiredArgsConstructor;

// @Component
// @RequiredArgsConstructor
// public class CustomIdentityAuthenticationProvider implements AuthenticationProvider {
// 	@Autowired
// 	private UserRepository userRepository;
//     @Autowired
// 	private UserRoleRepository userRoleRepository;
//     @Autowired
//     private CustomUserDetailsService customUserDetailsService;

// 	@Override
// 	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
// 		final String username = (authentication.getPrincipal() == null) ? "NONE_PROVIDED" : authentication.getName();
// 		if (StringUtils.isEmpty(username)) {
//             throw new BadCredentialsException("invalid login details");
//         }
// 		// get user details using Spring security user details service
//         UserDetails user = null;
//         try {
//             user = loadUserByUsername(username);

//         } catch (UsernameNotFoundException exception) {
//             throw new BadCredentialsException("invalid login details");
//         }
//         return createSuccessfulAuthentication(authentication, user);
// 	}
// 	private Authentication createSuccessfulAuthentication(final Authentication authentication, final UserDetails user) {

//         User dbUser = (User) userRepository.findByUsername(user.getUsername());
//         long roleId = dbUser.getRoles().getId();
//         Optional<UserRole> optionalUserRole = userRoleRepository.findById(roleId);
//         List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
//         if (optionalUserRole.isPresent()) {
//         	UserRole userRole = optionalUserRole.get();
//         	authorities.add(new SimpleGrantedAuthority(userRole.getName()));
//         }
//         Logger logger = LoggerFactory.getLogger(UserAuthenticationProvide.class);
//         logger.info("Logging object: {}", authorities);
//         UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(user.getUsername(), authentication.getCredentials(), authorities);
//         token.setDetails(authentication.getDetails());
//         return token;
//     }
// 	@Override
// 	public boolean supports(Class<?> authentication) {
// 		return authentication.equals(UsernamePasswordAuthenticationToken.class);
// 	}

// }
