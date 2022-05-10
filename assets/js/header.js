function toggleMenu() {   
    var contextMenuDiv = document.getElementsByClassName('contextMenu')[0];
    var icon = document.getElementsByClassName('menuButton')[0].getElementsByTagName('i')[0];
    if (window.getComputedStyle(contextMenuDiv).display == 'none') {
        icon.classList.add('ms-Icon--ChromeClose');
        icon.classList.remove('ms-Icon--ChevronDownMed');        
        contextMenuDiv.style.display = 'block';
    }
    else {
        icon.classList.remove('ms-Icon--ChromeClose');
        icon.classList.add('ms-Icon--ChevronDownMed');        
        contextMenuDiv.style.display = 'none';
    }    
}

function toggleMenuCheck() {
    var contextMenuDiv = document.getElementsByClassName('contextMenu');    
    if (contextMenuDiv.length > 0) {
        contextMenuDiv[0].style.display = 'none';

        var icon = document.getElementsByClassName('menuButton')[0].getElementsByTagName('i')[0];
        if (icon.classList.contains('ms-Icon--ChromeClose')) {
            icon.classList.remove('ms-Icon--ChromeClose');
            icon.classList.add('ms-Icon--ChevronDownMed');  
        }
    }
  }
  
var matchMediaToggleMenu = window.matchMedia('(max-width: 500px)');
matchMediaToggleMenu.addListener(toggleMenuCheck);

window.addEventListener('load', function(event) {
    toggleMenuCheck();
}, false);