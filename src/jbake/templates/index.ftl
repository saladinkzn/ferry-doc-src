<#include "templates/mainTemplate.ftl"/>
<#macro body>
    <div class="page-header">
        <h1>Sala Blog</h1>
    </div>
    <#list posts as post>
        <#if (post.status == "published")>
        <a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
        <p>${post.date?string("dd MMMM yyyy")}</p>
        <p>${post.body}</p>
        </#if>
    </#list>
    <hr />
</#macro>

<@template title="Ferry documentation" body=body/>