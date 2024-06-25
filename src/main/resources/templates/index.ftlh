[#ftl]
[#import '/_imports/common.ftlh' as c]

[@c.page]
    <h1>Blog</h1>
[#list seznamBlogovychPostu.content]
<div class="seznam">
    [#items as blogPost]
[#--    <a href="/vizitka/${vizitka.id}">--]
        <div class="vizitka">
            <form method="post" action="/delete"><input type="hidden" name="id" value="${blogPost.id}"/>
                <div class="vymazat">
                    <button class="btn btn-primary"><i class="bi bi-trash"></i></button>
                </div>
            </form>
            <h2>${blogPost.title}</h2>
            <div class="jmeno">${blogPost.author}</div>
            <div class="firma">${blogPost.perex}</div>
            <div class="udaje">
                <div class="adresa">
[#--                    <div>${blogPost.published?date}</div>--]
                </div>
            </div>
        </div>
[#--    </a>--]
    [/#items]

    <a href="/novaVizitka">
        <div class="vizitka vizitka--nova">
            <svg width="100" height="100">
                <rect width="20" height="100" x="40" y="0" fill="white"/>
                <rect width="100" height="20" x="0" y="40" fill="white"/>
            </svg>
        </div>
    </a>
</div>
[/#list]
[/@c.page]
