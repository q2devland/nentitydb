function renderBreadcrumbs() {
    if ($('#breadcrumbs').length > 0) {
        var breadcrumbs = [];
        $('#toc a.active').each(function (i, e) {
            var href = e.href;
            if (!href) {
                var urlAttribute = e.attributes.getNamedItem('members-section-url');
                if (urlAttribute) {
                    href = urlAttribute.value;
                }
            }
            breadcrumbs.push({
                href: href,
                name: e.innerHTML
            });
        });

        var items = [breadcrumbs[0]];
        for (var i = 1; i < breadcrumbs.length; i++) {
            if (breadcrumbs[i].name !== breadcrumbs[i - 1].name) {
                items.push(breadcrumbs[i]);
            }
        }

        var html = createList(items, 'breadcrumb');
        $('#breadcrumbs').html(html);
    }
}

function createList(items, classes) {
    var level = 1;
    var model = {
        items: items
    };
    var cls = [].concat(classes).join(" ");
    return getList(model, cls);

    function getList(model, cls) {
        if (!model || !model.items) return null;
        var l = model.items.length;
        if (l === 0) return null;
        var html = '<ul class="level' + level + ' ' + (cls || '') + '">';
        level++;
        for (var i = 0; i < l; i++) {
            var item = model.items[i];
            var href = item.href;
            var name = item.name;
            if (!name) continue;
            html += href ? '<li><a href="' + href + '">' + name + '</a>' : '<li>' + name;
            html += getList(item, cls) || '';
            html += '</li>';
        }
        html += '</ul>';
        return html;
    }
}

function setSelectedToc() {
    if ($('#toc').length > 0) {
        var page = location.pathname.split("/").slice(-1);
        if (page.length > 0) {
            var anchor = $('#toc').find(`[href='${page[0]}'][is-referenced!='true']`);
            if (anchor.length === 1) {
                $(anchor[0]).parent().addClass('selectedToc');
            }
        }
    }

    var tocFilterInput = $('#toc_filter_input');
    tocFilterInput.on('input', function (e) {
        if (e.originalEvent) {
            setTimeout(() => {
                $('#toc li>a').filter(function (i, e) {
                    return $(e).siblings().length > 0;
                }).each(function (i, anchor) {
                    var parent = $(anchor).parent();
                    if (parent.find('li.show').length > 0) {
                        parent.addClass('in');
                    } else {
                        parent.removeClass('in');
                    }
                }, 100);
            });
        }
    });
}

setSelectedToc();
setTimeout(() => renderBreadcrumbs(), 50);

function getCodeText(element) {
    var headerElement = element.parentElement.parentElement;
    var preElement = headerElement.nextElementSibling;
    var codeElement = preElement.firstElementChild;
    return codeElement.innerText;
}

function copyCodeToClipboard(element) {
    copyToClipboard(getCodeText(element));
    element.classList.add('clipboardDone');
    setTimeout(() => {
        element.classList.remove('clipboardDone');
    }, 1000);
}

function copyToClipboard(text) {
    const hideElement = document.createElement('textarea');
    hideElement.value = text;
    hideElement.setAttribute('readonly', '');
    hideElement.style.position = 'absolute';
    hideElement.style.left = '-9999px';
    document.body.appendChild(hideElement);
    hideElement.select();
    document.execCommand('copy');
    document.body.removeChild(hideElement);
}

