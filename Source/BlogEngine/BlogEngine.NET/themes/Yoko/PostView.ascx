<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>

<article class="post" id="post<%=Index %>">

<div class="entry-details">
	<p><%=Post.DateCreated.ToString("d. MMMM yyyy HH:mm") %><br>
		by <a href="<%=VirtualPathUtility.ToAbsolute("~/") + "author/" + Post.Author %>.aspx"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a><br>
		<a rel="nofollow" href="<%=Post.RelativeLink %>#comment"><%=Post.ApprovedComments.Count %> <%=Resources.labels.comments %></a>
		</p>
        
        <div style="width:85%; height:40px; float:left;"  >
            <div class="fb-like" data-href="http://jobodesigns.com<%=Post.RelativeLink %>" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false"></div>
            <div style="padding-top:5px;"><a href="https://twitter.com/share" class="twitter-share-button" data-url="http://jobodesigns.com<%=Post.RelativeLink %>" data-text="<%=Server.HtmlEncode(Post.Title) %>">Tweet</a></div>
        </div>

</div>

<header class="entry-header">
	<h2 class="entry-title"><a href="<%=Post.RelativeLink %>" class="taggedlink"><%=Server.HtmlEncode(Post.Title) %></a></h2>
<div class="single-entry-details">
	<p><%=Post.DateCreated.ToString("d. MMMM yyyy HH:mm") %> by <a href="<%=VirtualPathUtility.ToAbsolute("~/") + "author/" + Post.Author %>.aspx"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a> | <a rel="nofollow" href="<%=Post.RelativeLink %>#comment"><%=Post.ApprovedComments.Count %> <%=Resources.labels.comments %></a></p>

    <div style="width:100%; height:40px; float:left;"  >
        <div style="float:left;" class="fb-like" data-href="http://jobodesigns.com<%=Post.RelativeLink %>" data-send="false" data-layout="button_count" data-width="80" data-show-faces="false"></div>
        <div style="float:left;"><a href="https://twitter.com/share" class="twitter-share-button">Tweet</a></div>
    </div>
</div>

<%--<div style="width:85%; height:40px; float:left;"  >


    <script type="text/javascript">
        console.log('http://jobodesigns.com<%=Post.RelativeLink %>');
    </script>

    <div class="fb-like" data-href="http://jobodesigns.com<%=Post.RelativeLink %>" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false"></div>

List of Posts - Dynamic URL
<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://example.com">Tweet</a>
<script>    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } } (document, "script", "twitter-wjs");</script>

List of Post - Dynamic Title
<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://example.com" data-text="Example">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


</div>--%>


</header>
<div class="entry-content">
	<asp:PlaceHolder ID="BodyContent" runat="server" />
	<footer class="single-entry-meta">
	<p>	Categories: <%=CategoryLinks(" , ") %> | Tags: <%=TagLinks(", ") %> | <%=AdminLinks %><a rel="bookmark" href="<%=Post.PermaLink %>">Permalink</a></p>
</footer>
</div>

</article>
<div class="clear"></div>