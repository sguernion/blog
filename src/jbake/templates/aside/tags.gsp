<% if (!content.tags_desc){ %><h4><a href="tags.html" >Tags</a></h4><hr/><%}%>
<ol class="list-unstyled" style="margin-left: 0px">
                    <%
                        // alltags : list de tags (String)
                        alltags.collect { tag ->
                            [
                                tag,
                                published_posts.findAll { post ->
                                    post.tags.contains(tag)
                                }.size()
                            ]
                        } .sort { tag ->
                            String.format("%03d%s", 1000 - tag[1], tag[0].toLowerCase())
                        } .each { tagWithCount ->
                    %>
                        <blog-tag link="tags/${tagWithCount[0]}.html" tag="${tagWithCount[0]}" nb="${tagWithCount[1]}" ></blog-tag>
                    <%}%>
                 </ol>