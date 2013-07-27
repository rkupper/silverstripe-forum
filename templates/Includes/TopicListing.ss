<tr class="<% if IsSticky || IsGlobalSticky %>sticky<% end_if %> <% if IsGlobalSticky %>global-sticky<% end_if %>">
	<td class="topicName">
		<a class="topic-title" href="$Link">$Title</a>
		<p class="topic-summary">
			<%t TopicListing.ss.BY "By" %>
			<% with FirstPost %>
				<% with Author %>
					<% if Link %>
						<a href="$Link" title="<%t TopicListing.ss.CLICKTOUSER "Click here to view" %>"><% if Nickname %>$Nickname<% else %>Anon<% end_if %></a>
					<% else %>
						<span>Anon</span>
					<% end_if %>
				<% end_with %>
				<%t TopicListing.ss.ON "on" %> $Created.Long
			<% end_with %>
		</p>
	</td>
	<td class="count">
		$NumPosts
	</td>
	<td class="last-post">
		<% with LatestPost %>
			<p class="">$Created.Ago</p>
			<p class="">
				<%t TopicListing.ss.BY "by" %>
				<% with Author %>
					<% if Link %>
						<a href="$Link" title="<%t TopicListing.ss.CLICKTOUSER %> <% if Nickname %>$Nickname.XML<% else %>Anon<% end_if %><%t TopicListing.ss.CLICKTOUSER2 %>">
							<% if Nickname %>$Nickname<% else %>Anon<% end_if %>
						</a>
					<% else %>
						<span>Anon</span>
					<% end_if %>
				<% end_with %> 
				<a href="$Link" title="<%t TopicListing.ss.GOTOFIRSTUNREAD "Go to the first unread post in the {title} topic." title = $Title.XML) %>"><img src="forum/images/right.png" alt="" /></a>
			</p> 
		<% end_with %>
	</td>
</tr>