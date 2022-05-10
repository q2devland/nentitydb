function selectSqlType(node) {
    var parent = node.parentElement;
    var index = 0;
    for (i = 0; i < parent.children.length; i++) {
        if (parent.children[i] != node) {
            parent.children[i].classList.remove('activeSqlLanguage');
        }
        else {
            index = i;
        }
    }
    node.classList.add('activeSqlLanguage');
    
    var preElement = parent.parentElement.nextElementSibling;
    for (i = 0; i < 7; i++) {
        if (preElement.tagName = 'pre') {
            if (i == index) {
                preElement.classList.remove('hide');
            }
            else {
                preElement.classList.add('hide');
            }
            preElement = preElement.nextElementSibling;
        }            
    }
}