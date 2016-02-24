<#include "templates/mainTemplate.ftl"/>
<#macro body>
    <div class\"page-header">
        <h3><#escape x as x?html>${content.title}</#escape></h3>
    </div>

    <p>${content.body}</p>

    <hr/>
</#macro>
<@template title=(content.title) body=body/>