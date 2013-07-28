<% with ForumHolder %>
	<div class="forum-footer">
		<p>
			<strong><%t ForumFooter_ss.CURRENTLYON "Currently Online:") %></strong>
			<% if CurrentlyOnline %>
				<% loop CurrentlyOnline %>
					<% if Link %>
						<a href="$Link" title="<% if Nickname %>$Nickname<% else %>Anon<% end_if %><%t ForumFooter_ss.ISONLINE "is online" %>"><% if Nickname %>$Nickname<% else %>Anon<% end_if %></a>
					<% else %>
						<span>Anon</span><% end_if %><% if Last %><% else %>,<% end_if %>
				<% end_loop %>
			<% else %>
				<span><%t ForumFooter_ss.NOONLINE "There is nobody online" %></span>
			<% end_if %>
		</p>
		<p>
			<strong><%t ForumFooter_ss.LATESTMEMBER "Welcome to our latest member:" %></strong>
			<% if LatestMembers(1) %>
				<% loop LatestMembers(1) %>
					<% if Link %>
						<a href="$Link" <% if Nickname %>title="$Nickname<%t ForumFooter_ss.ISONLINE %>"<% end_if %>><% if Nickname %>$Nickname<% else %>Anon<% end_if %></a>
						<% if Last %>
						<% else %>,
						<% end_if %>
					<% else %>
						<span>Anon</span><% if Last %><% else %>,<% end_if %>
					<% end_if %>
				<% end_loop %>
			<% end_if %>
		</p>
	</div><!-- forum-footer. -->
<% end_with %>