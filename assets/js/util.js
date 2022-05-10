function removeDiacritics(value) {
    var resultValue = '';
    if (value != null) {
        var c = null;
        value = value.toLowerCase();
        for (var i = 0; i < value.length; i++) {
            c = value.charAt(i);
            if (c == 'á' || c == 'à' || c == 'ä')
                resultValue += 'a';
            else if (c == 'é' || c == 'è' || c == 'ë')
                resultValue += 'e';
            else if (c == 'í' || c == 'ì' || c == 'ï')
                resultValue += 'i';
            else if (c == 'ó' || c == 'ò' || c == 'ö')
                resultValue += 'o';
            else if (c == 'ú' || c == 'ù' || c == 'ü')
                resultValue += 'u';
            else
                resultValue += c;
        }
    }
    return resultValue;
}

function replaceAll(value, find, replace) {
    let index = value.indexOf(find);
    while (index >= 0) {
        value = value.replace(find, replace);
        index = value.indexOf(find);
    }
    return value;
}

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

function getQueryStringValue(paramName) {
    var results = this.getQueryStringParam(paramName);
    if (results == null)
        return null;
    else
        return decodeURIComponent(results[1].replace(/\+/g, ' '));
}

function hasQueryStringParam(paramName) {
    var results = this.getQueryStringParam(paramName);
    return results != null;
}

function getQueryStringParam(paramName) {
    paramName = paramName.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
    var regex = new RegExp(`[\\?&]${paramName}=([^&#]*)`);
    return regex.exec(location.search);
}