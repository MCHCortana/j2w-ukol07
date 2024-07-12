[#ftl]

[#macro page title]
    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8">
        <title>${title}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet"
              href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="icon" type="image/png" href="/images/favicon.png">
    </head>
    <body>
    [#nested]
    </body>
    </html>
[/#macro]

[#macro pagerLink page text active]
    [#if active]
        <span class="page active">${text}</span>
    [#else ]
        <a href="${createURL({"size": seznamBlogovychPostu.size, "page": page})}" class="page">${text}</a>
    [/#if]
[/#macro]

[#macro pager]
    <div class="pager">
        [@pagerLink page=0 active=false text="⇤" /]
        [@pagerLink page=seznamBlogovychPostu.number - 1 active=seznamBlogovychPostu.first text="←" /]
        [#list (0..!seznamBlogovychPostu.totalPages) as pageNumber]
            [@pagerLink page=pageNumber active=pageNumber==seznamBlogovychPostu.number text=pageNumber + 1 /]
        [/#list]
        [@pagerLink page=seznamBlogovychPostu.number + 1 active=seznamBlogovychPostu.last text="→" /]
        [@pagerLink page=seznamBlogovychPostu.totalPages - 1 active=false text="⇥" /]
    </div>
[/#macro]

[#macro totalCount]
    <div class="totalCount">
        [#if seznamBlogovychPostu.totalElements == 1]
            Celkem nalezen <strong>${seznamBlogovychPostu.totalElements}</strong> záznam.
        [#elseif seznamBlogovychPostu.totalElements <= 4]
            Celkem nalezeny <strong>${seznamBlogovychPostu.totalElements}</strong> záznamy.
        [#else ]
            Celkem nalezeno <strong>${seznamBlogovychPostu.totalElements}</strong> záznamů.
        [/#if]
    </div>

[/#macro]

[#macro back]
    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>
[/#macro]
