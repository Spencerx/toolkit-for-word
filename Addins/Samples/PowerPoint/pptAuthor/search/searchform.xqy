xquery version "1.0-ml";
(:
Copyright 2008-2010 Mark Logic Corporation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
:)
import module namespace config = "http://marklogic.com/toolkit/word/author/config"  at "../config/config.xqy";
declare namespace search = "http://marklogic.com/openxml/search";
declare variable $search:bsv as xs:string external;
declare variable $search:bst as xs:string external;

let $searchval := if(fn:empty($search:bsv) or $search:bsv eq "") then "Search..." else $search:bsv
let $searchtype := if(fn:empty($search:bst) or $search:bst eq "") then "" else $search:bst
let $header:=
              <div id="searchhead" xmlns="http://www.w3.org/1999/xhtml"><!-- adds line -->
                   <div id="searchform">
                      <input type="text" id="searchbox" style="width:100px" value="{$searchval}" onkeypress="checkForEnter();"/>
		      <!--<input id="ML-Submit" type="submit" value="search"/>-->
                     
                      <a href="#"  id="sbtn" class="searchbtn" onmouseup="blurSelected(this);" onclick="searchAction();" >Search</a>
                      <a href="#" id="fbtn" class="filterbtn"> Filter </a>
                      <a href="#" id="ddbtn" class="dropdownbtn"> &nbsp; </a>
                      <br clear="all" /><br clear="all" />
                      {config:search-filters()}
                      <div id="searchtype">
                      {
                         if($searchtype eq "") then
                             <input type="radio" class="searchtype" name="search:bst" checked="checked" value="component" id="c"/>
                         else if($searchtype eq "component")
                         then
                            <input type="radio" class="searchtype" name="search:bst" checked="checked" value="component" id="c"/>
                         else
                            <input type="radio" class="searchtype" name="search:bst" value="component" id="c"/>
                         }Components
                         {
                         if($searchtype eq "slide")
                         then
                            <input type="radio" class="searchtype" name="search:bst" value="slide" checked="checked" id="s"/>
                         else
                            <input type="radio" class="searchtype" name="search:bst" value="slide" id="s"/>
                         }Slides
                         {
                         if($searchtype eq "pres")
                         then
                            <input type="radio" class="searchtype" name="search:bst" value="presentation" checked="checked" id="p"/>
                         else
                            <input type="radio" class="searchtype" name="search:bst" value="presentation" id="p"/>
                     }Presentations
		      
                       </div>
                   </div><!--<br clear="all" /><br clear="all" />-->
              </div>
return $header
