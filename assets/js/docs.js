function filterDocs(text) {
    var txtFilterDocs1 = document.getElementById('txtFilterDocs1');
    var txtFilterDocs2 = document.getElementById('txtFilterDocs2');
    var closeFilterIcons = document.getElementsByClassName('closeFilterIcon');
    var menuFilteredContents = document.getElementsByClassName('menuFilteredContent');
    var menuContents = document.getElementsByClassName('menuContent');

    if (txtFilterDocs1.value != text) {
        txtFilterDocs1.value = text;
    }
    if (txtFilterDocs2.value != text) {
        txtFilterDocs2.value = text;
    }
    if (text) {
        var list1 = menuFilteredContents[0].getElementsByTagName('ul')[0];
        var list2 = menuFilteredContents[1].getElementsByTagName('ul')[0];
        removeDocsFilterChildren(list1);      
        removeDocsFilterChildren(list2);      

        closeFilterIcons[0].style.display = 'block';
        closeFilterIcons[1].style.display = 'block';
        menuContents[0].style.display = 'none';
        menuContents[1].style.display = 'none';
        menuFilteredContents[0].style.display = 'block';
        menuFilteredContents[1].style.display = 'block';

        var topics = getSearchTopics(text);

        topics.forEach(topic => {
            var item = document.createElement('li');
            var link = document.createElement('a');
            link.href = getTopicUrl(topic);
            var topicTitle = document.createElement('div');
            topicTitle.innerText = topic.title;
            topicTitle.classList.add('topicTitleFiltered');
            var chapterTitle = document.createElement('div');
            chapterTitle.innerText = topic.chapter.title;
            chapterTitle.classList.add('chapterTitleFiltered');
            
            link.appendChild(topicTitle);
            link.appendChild(chapterTitle);
            item.appendChild(link);
            list1.appendChild(item);
            list2.appendChild(item.cloneNode(true));
        });
    }
    else {
        closeFilterIcons[0].style.display = 'none';
        closeFilterIcons[1].style.display = 'none';
        menuFilteredContents[0].style.display = 'none';
        menuFilteredContents[1].style.display = 'none';
        menuContents[0].style.display = 'block';
        menuContents[1].style.display = 'block';
    }
}

function getTopicUrl(topic) {
    return `/pages/docs/${replaceAll(topic.chapter.title.toLowerCase(), ' ', '-')}/${replaceAll(topic.title.toLowerCase(), ' ', '-')}.html`;
}

function removeDocsFilterChildren(list) {
    list.innerHTML = '';
}

function removeDocsFilter() {
    filterDocs('');
}

function focusFilterDocs(id) {
    document.getElementById(id).parentElement.classList.add('inputSearchActive');
}

function blurFilterDocs(id) {
    document.getElementById(id).parentElement.classList.remove('inputSearchActive');
}

function resetFilterDocs() {
    var txtFilterDocs1 = document.getElementById('txtFilterDocs1');
    var txtFilterDocs2 = document.getElementById('txtFilterDocs2');
    setTimeout(() => {
        txtFilterDocs1.value = '';
        txtFilterDocs2.value = '';            
    }, 10);
}

function setActiveTopic() {
    if (document.getElementsByClassName('indexTopics').length > 0) {
        var scrollOffset = document.documentElement.scrollTop;
        var docsContentDiv = document.getElementsByClassName('docsContent')[0];
        var sections = docsContentDiv.getElementsByTagName('h2');
        if (sections.length > 0) {
            var currentSection = 0;
            for (var i = 0; i < sections.length - 1; i++) {
                var offsetTop = sections[i + 1].offsetTop;
                if (scrollOffset > offsetTop)
                    currentSection = i + 1;
            };
            var indexTopicsDiv = document.getElementsByClassName('indexTopics')[0];
            var topics = indexTopicsDiv.getElementsByTagName('a');
            for (var i = 0; i < topics.length; i++) {
                topics[i].classList.remove('activeTopic');
            }
            if (topics.length >= currentSection) {
                topics[currentSection].classList.add('activeTopic');      
            }
        }
    }
}

function setDocsMenuHeight() {
    if (document.getElementsByClassName('docsMenu').length > 0) {
        var docsMenuDiv = document.getElementsByClassName('docsMenu')[0];
        var docsIndexDiv = document.getElementsByClassName('docsIndex')[0];        
        var height = Math.max(0, 59 - document.documentElement.scrollTop);
        var vh = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
        docsMenuDiv.style.maxHeight = (vh - (height >= 0 ? height: 0)) + 'px';    
        docsIndexDiv.style.maxHeight = (vh - (height >= 0 ? height: 0)) + 'px';    
    }
    if (document.getElementsByClassName('docsContextMenu').length > 0) {
        var docsContextMenuDiv = document.getElementsByClassName('docsContextMenu')[0];
        var height = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
        docsContextMenuDiv.style.maxHeight = height + 'px';
    }
}

document.addEventListener('scroll', function(event) {
    setActiveTopic();
    setDocsMenuHeight();
}, false);

function toggleChapter(chapterDiv) {       
    var icon = chapterDiv.getElementsByClassName('ms-Icon')[0];
    if (icon.classList.contains('ms-Icon--ChevronDownMed')) {
        icon.classList.remove('ms-Icon--ChevronDownMed');
        icon.classList.add('ms-Icon--ChevronRightMed');
        chapterDiv.parentElement.classList.remove('openedChapter');
    }
    else {
        icon.classList.remove('ms-Icon--ChevronRightMed');
        icon.classList.add('ms-Icon--ChevronDownMed');        
        chapterDiv.parentElement.classList.add('openedChapter');
    }
    setDocsMenuHeight();
}

function toggleMenuDocs() {   
    var docsContextMenuDiv = document.getElementsByClassName('docsContextMenu')[0];
    if (window.getComputedStyle(docsContextMenuDiv).display == 'none') {
        docsContextMenuDiv.style.display = 'block';
        document.body.style.position = 'fixed';
        var height = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
        docsContextMenuDiv.style.maxHeight = height + 'px';
    }
    else {
        docsContextMenuDiv.style.display = 'none';
        document.body.style.position = '';
    }
}

function toggleMenuDocsCheck(matchMedia) {
    var docsContextMenuDiv = document.getElementsByClassName('docsContextMenu');
    if (docsContextMenuDiv.length > 0) {
        if (matchMedia.matches) {
            docsContextMenuDiv[0].style.display = 'none';
        } 
        else {
            docsContextMenuDiv[0].style.display = 'block';
            document.body.style.position = '';
        }
    }
  }
  
var matchMediaToggleMenuDocs = window.matchMedia('(max-width: 800px)');
matchMediaToggleMenuDocs.addListener(toggleMenuDocsCheck);

window.addEventListener('load', function(event) {
    setDocsMenuHeight();
    toggleMenuDocsCheck(matchMediaToggleMenuDocs);
    const bodyObserver = new window.ResizeObserver(() => setDocsMenuHeight());
    bodyObserver.observe(document.body);
}, false);