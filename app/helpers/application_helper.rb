# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def embeded_code(website_placement)
    <<-EOF
      <script type='text/javascript' language='javascript'>function adclick() { var httpRequest;
  	    if (window.XMLHttpRequest) {httpRequest = new XMLHttpRequest();if (httpRequest.overrideMimeType) {httpRequest.overrideMimeType('text/xml');
  	    } }  else if (window.ActiveXObject) { try {httpRequest = new ActiveXObject('Msxml2.XMLHTTP');} catch (e) {try {httpRequest = new ActiveXObject('Microsoft.XMLHTTP'); } catch (e) {} } } if (!httpRequest) { alert('Giving up :( Cannot create an XMLHTTP instance'); return false; } httpRequest.onreadystatechange = function() { alertContents(httpRequest); };httpRequest.open('GET', '#{HOSTNAME}/websiteplacements/click/#{website_placement.id}', true); httpRequest.send(''); }</script><a href='http://#{website_placement.placement.url}' target='_blank'><img alt='#{website_placement.placement.name}' src='#{website_placement.placement.image}' height='100' width='100' Onclick='adclick()' /></a>
  	EOF
  end
end
