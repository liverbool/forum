<header>
	<nav class="navbar navbar-reverse" role="navigation">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		  {{ link_to('', 'Phosphorum', 'class': 'navbar-brand') }}
		</div>

		<div class="collapse navbar-collapse">
		  <ul class="nav navbar-nav navbar-right">
		  	{%- if session.get('identity') -%}
				<li>{{ link_to('post/discussion', 'Start a Discussion', 'class': 'btn btn-default btn-info', 'rel': 'nofollow') }}</li>
			{%- else -%}
				<li>{{ link_to('login/oauth/authorize', 'Log In with Github', 'class': 'btn btn-default btn-info', 'rel': 'nofollow') }}</li>
			{%- endif -%}
			<li>{{ link_to('', '<span class="glyphicon glyphicon-comment"></span>', 'title': 'Discussions') }}</li>
			<li>{{ link_to('activity', '<span class="glyphicon glyphicon-eye-open"></span>', 'title': 'Activity') }}</li>
			{% if session.get('identity') %}
			<li>{{ link_to('settings', '<span class="glyphicon glyphicon-cog"></span>', 'title': 'Activity') }}</li>
			<li>{{ link_to('logout', '<span class="glyphicon glyphicon-off"></span>', 'title': 'Logout') }}</li>
			{% endif %}
		  </ul>
		</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
</header>
