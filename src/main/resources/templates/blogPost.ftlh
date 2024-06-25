[#ftl]
[#import '/_imports/common.ftlh' as c]
[@c.page title="Blogový článek"]
    <div class="detail">
        <div class="detail-blog_post">
            <div class="nazev_clanku">${post.title} </div>
            <div class="autor">${post.author}</div>
            <div class="uryvek">
                ${post.perex?no_esc}
                ${post.body?no_esc}
            </div>
        </div>
        [@c.back /]
    </div>
[/@c.page]
