<script type="text/javascript">var submitted=false;</script>
<iframe name="hidden_iframe" id="hidden_iframe" style="display:none;" onload="if(submitted) {window.location='http://localhost:8000/thanks';}"></iframe>
<section id="contact" class="main style3 secondary">
	<div class="content">
		<header>
			<h2>{{ $page->contact->title }}</h2>
			<p>{{ $page->contact->description }}</p>
		</header>
		<div class="box">
			<form action="https://docs.google.com/forms/d/e/1FAIpQLSfav6Qwgd6bzvPb3scf8gB5c54gzacnt1yVZJ4NP3fl1tTv3A/formResponse" method="post" target="hidden_iframe" onsubmit="submitted=true;">			
				<div class="field half first">
					<input type="text" name="entry.60973510" placeholder="Name" required="required" />
				</div>
				<div class="field half">
					<input type="email" name="entry.1631382841" placeholder="Email" required="required" />
				</div>
				<div class="field">
					<textarea name="entry.1710700279" placeholder="Message" rows="6" required="required"></textarea>
				</div>
				<ul class="actions">
					<li><input type="submit" value="Send Message" /></li>
				</ul>
			</form>
		</div>
	</div>
</section>