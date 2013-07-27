<div id="RegisterLogin">
	<% if CurrentMember %>
		<p>
			<%t ForumLogin.ss.LOGGEDINAS %> <% if CurrentMember.Nickname %>$CurrentMember.Nickname<% else %><%t ForumLogin.ss.ANONYMOUS "Anonymous" %><% end_if %> |
			<a href="$ForumHolder.Link(logout)" title="<%t ForumLogin.ss.LOGOUTEXPLICATION "Click here to log out" %>"><%t ForumLogin.ss.LOGOUT "Log Out" %></a> |
			<a href="ForumMemberProfile/edit" title="<%t ForumLogin.ss.PROFILEEXPLICATION "Click here to edit your profile" %>"><%t ForumLogin.ss.PROFILE "Profile" %></a>
		</p>
	<% else %>
		<p>
			<a href="$ForumHolder.Link(login)" title="<%t ForumLogin.ss.LOGINEXPLICATION "Click here to login" %>"><%t ForumLogin.ss.LOGIN "Login" %></a> |
			<a href="Security/lostpassword" title="<%t ForumLogin.ss.LOSTPASSEXPLICATION "Click here to retrieve your password" %>"><%t ForumLogin.ss.LOSTPASS "Forgot password" %></a> |
			<a href="ForumMemberProfile/register" title="<%t ForumLogin.ss.REGEXPLICATION "Click here to register" %>"><%t ForumLogin.ss.REGISTER "Register" %></a>
			<% if OpenIDAvailable %> |
				<a href="ForumMemberProfile/registerwithopenid" title="<%t ForumLogin.ss.OPENIDEXPLICATION "Click here to register with OpenID" %>">Register with OpenID <%t ForumLogin.ss.OPENID "register with OpenID" %> <img src="sapphire/images/openid-small.gif" alt="<%t ForumLogin.ss.OPENIDEXPLICATION "Click here to register with OpenID" %>"/></a>
				(<a href="#" id="ShowOpenIDdesc"><%t ForumLogin.ss.WHATOPENID "What is OpenID?" %></a>)
			<% end_if %>
		</p>
		<div id="OpenIDDescription">
	  		<span><a href="#" id="HideOpenIDdesc">X</a></span>
			<h2><%t ForumLogin.ss.WHATOPENIDUPPER "What is OpenID?" %></h2>
			<p><%t ForumLogin.ss.OPENIDDESC1 "OpenID is an Internet-wide identity system that allows you to sign in to many websites with a single account." %></p>
			<p><%t ForumLogin.ss.OPENIDDESC2 "With OpenID, your ID becomes a URL (e.g. http://<strong>username</strong>.myopenid.com/). You can get a free OpenID for example from <a href=\"http://www.myopenid.com\">myopenid.com</a>." %></p>
			<p><%t ForumLogin.ss.OPENIDDESC3 "For more information visit the <a href=\"http://openid.net\">official OpenID site." %></a></p>
		</div>
	<% end_if %>
</div>
