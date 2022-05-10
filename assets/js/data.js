function setChapters(chapters) {
    this.getData().chapters = JSON.parse(decodeURIComponent(chapters));
}

function getChapters() {
    return this.getData().chapters;
}

function getSearchTopics(text) {
    var chapters = this.getChapters();
    var words = text ? text.split(' '): null;    
    var result = [];
    if (chapters && words) {    
        words.forEach(word => {
            words[words.indexOf(word)] = removeDiacritics(word);
        });
        chapters.forEach(chapter => {
            if (chapter.topics) {
                chapter.topics.forEach(topic => { 
                    var match = true;
                    words.forEach(word => {
                        if (!matchTopic(topic, word))
                            match = false;
                    });
                    if (match) {
                        topic.chapter = chapter;
                        result.push(topic);
                    }
                });
            }
        });
    }
    return result;
}

function matchTopic(topic, word) {
    var match = false;
    match = removeDiacritics(topic.title).includes(word);
    if (!match && topic.tags) {
        var tags = topic.tags.split(',');
        tags.forEach(tag => {
            if (removeDiacritics(tag).includes(word))
            match = true;
        });
    }
    return match;
}

function getData() {
    if (!window._data)
        window._data = {};
    return window._data;
}