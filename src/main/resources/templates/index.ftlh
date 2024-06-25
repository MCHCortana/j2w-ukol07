[#ftl]
[#import '/_imports/common.ftlh' as c]

[@c.page title="Seznam blogových postů"]
    [#list seznamBlogovychPostu.content]
        <div class="seznam">
            [#items as blogPost]
                <a href="/blog-clanek/${blogPost.slug}">
                    <div class="blog_post">
                        <h2 class="nazev_clanku">${blogPost.title}</h2>
                        <div class="autor">${blogPost.author}</div>
                        <div class="uryvek">${blogPost.perex?no_esc}</div>
                        <div class="udaje">
                            <div class="adresa">
                                <div>Publikováno:${blogPost.getPublished()?date}</div>
                            </div>
                        </div>
                    </div>
                </a>
            [/#items]
        </div>
    [/#list]
[/@c.page]
