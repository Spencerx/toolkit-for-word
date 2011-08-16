xquery version "1.0-ml";
declare namespace search="http://marklogic.com/openxml/search";

let $r := xdmp:set-response-content-type("text/html; charset=utf-8") 
let $doctype := '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'
return ( 
 $doctype,

<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SlideTunes - MarkLogic</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/> 
	<link href="css/reset.css" type="text/css" rel="stylesheet" media="screen, print"/>	
	<link href="css/jquery.hoverscroll.css" type="text/css" rel="stylesheet" media="screen" />
	<link href="css/style.css" type="text/css" rel="stylesheet" media="screen, print"/>	
	
    <script src="js/jquery-1.6.2.min.js?rand={xdmp:random()}" type="text/javascript"></script>
    <script src="js/jquery-ui-1.8.15.custom.min.js?rand={xdmp:random()}" type="text/javascript"></script>
    <script src="js/jquery.hoverscroll.js?rand={xdmp:random()}" type="text/javascript" ></script>
    <script src="js/slidetunes.js?rand={xdmp:random()}" type="text/javascript"></script>
    <script src="js/MarkLogicPowerPointAddin.js?rand={xdmp:random()}">//</script>
</head>
<body>
	<div id="deck-viewer">
		<div id="deck-viewer-arrow"></div>
		<div id="deck-viewer-contents">
			<div id="deck-viewer-header">Deck Preview</div>
			<div id="deck-viewer-slides">
				<div id="deck-viewer-slide-previous"></div>
				<div id="deck-viewer-list">				
					<ul>
						<li><img src="images/slide-placeholder-lg.png" title="" /></li>
						<li><img src="images/slide-placeholder-lg.png" title="" /></li>
						<li class="med"><img src="images/slide-placeholder-red-lg.png" title="" /></li>
						<li class="lg"><img src="images/slide-placeholder-lg.png" title="" /></li>
						<li class="med"><img src="images/slide-placeholder-red-lg.png" title="" /></li>
						<li><img src="images/slide-placeholder-lg.png" title="" /></li>
						<li><img src="images/slide-placeholder-lg.png" title="" /></li>
					</ul>
				</div>
			<div id="deck-viewer-slide-next"></div>
			</div>
		</div>

	</div>
	<div id="header">
			<div id="logo">
				<h1>SlideTunes</h1>
			</div>
			<div id="view-controls">
				<img src="images/view-controls-placeholder.jpg" title="" />
			</div>
	</div>
	<div id="wrapper">
		<div id="container">
                        <div class="vmenu">
                              <div class="first_li"><span>Open in Playlist</span></div>
	                      <div class="second_li"><span>Open in Workspace</span></div>
                        </div>

			<div id="deck-container">				
				<div id="deck-lists">
					<div class="library">Library</div>	
					<div class="filter-box">
						<div class="filter">
							<label id="deck-filter-label" for="deck-filter">
								<em>filter</em>
								<input id="deck-filter" type="text"/>
							</label>
						</div>					
						<div class="gear-btn" title="Browse database documents">
							<p><img src="images/gear.png" /></p>
						</div>
					</div>
					<div id="header-mydecks" class="deck-title">
						<div class="library-deck-btn"></div>
						<div class="name">My Decks</div>
					</div>
					<ul id="deck-mydecks">
<!--
						<li>
                                                      <div id="test">
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">Deck # 1</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>	
                                                      </div>							
						</li>
						<li>
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">/paven/AvenExcelingWithMarkLogicandtheToolkitsForOffice.pptx</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>								
						</li>
						<li>
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">Deck # 3</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>								
						</li>
						<li>
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">Deck # 4</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>								
						</li>
-->
					</ul>
					
					
					<div id="header-myplaylists" class="deck-title">
						<div class="library-deck-btn"></div>
						<div class="name">My Playlists</div>
					</div>
					<ul id="deck-myplaylists">
<!--
						<li>
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">Deck # 1</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>								
						</li>
						<li>
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">Deck # 2</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>								
						</li>
						<li>
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">Deck # 3</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>								
						</li>
						<li>
							<div class="deck-thumb"><img src="images/slide-placeholder-sm.png" /></div>
							<div class="deck-details">
								<p class="name">Deck # 4</p>		
								<p class="date">mm/dd/yyyy</p>		
							</div>								
						</li>

-->
					</ul>

				</div>					
				<div id="deck-view">
					<div id="deck-header">
						<div id="deck">
							<p>
								<span class="name">MyPlaylist</span>
								<span class="commands">commands</span>
							</p>
						</div>
						<!--<div class="filter">
							<label id="playlist-filter-label" for="playlist-filter">
								<em>filter</em>
								<input id="playlist-filter" type="text">
							</label>
						</div>-->
					</div>
					<div id="deck-playlist">
						<ul class="connect">
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-med.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-med.png" title="" /></li>
						</ul>
					</div>
					<div id="deck-slide-view"></div>
					<div id="deck-search-results">
						<ul class="connect">
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-red-lg.png" title="" /></li>
							<li><img src="images/slide-placeholder-lg.png" title="" /></li>
						</ul>						
					</div>
				</div>
			</div>
		</div>		
	</div>
</body>
</html>
)
