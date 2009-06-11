<tr class="$EvenOdd <% if IsSticky %>stickyPost<% end_if %>">
	<td class="topicName">
		<a class="topicTitle" href="$Link" title="<% sprintf(_t('Forum.ss.GOTOTHISTOPIC',"Go to the %s topic"),$Title.EscapeXML) %>">$Title</a>
		<p class="summary">
			<% _t('BY','By') %>
			<% control Author %>
				<% if Link %>
					<a href="$Link" title="<% _t('CLICKTOUSER','Click here to view') %>"><% if Nickname %>$Nickname<% else %>Anon<% end_if %></a>
				<% else %>
					<span>Anon</span>
				<% end_if %>
			<% end_control %>
			on $Created.Long
		</p>
	</td>
	<td class="count">
		$NumPosts
	</td>
	<td class="lastPost">
		<% control LatestPost %>
			<p class="userInfo">$Created.Ago</p>
			<p class="userInfo">
				<% _t('BY','by') %> <% control Author %><% if Link %><a href="$Link" title="<% _t('CLICKTOUSER') %> <% if Nickname %>$Nickname.EscapeXML<% else %>Anon<% end_if %><% _t('CLICKTOUSER2') %>"><% if Nickname %>$Nickname<% else %>Anon<% end_if %></a><% else %><span>Anon</span><% end_if %><% end_control %> <a href="$Link" title="<% sprintf(_t('GOTOFIRSTUNREAD',"Go to the first unread post in the %s topic."),$Title.EscapeXML) %>"><img src="forum/images/right.png" alt="" /></a>
			</p> 
		<% end_control %>
	</td>
</tr>