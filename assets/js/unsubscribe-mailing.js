function unsubscribeMailing(url) {
    var id = getQueryStringValue('subscription-id');
    if (id) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {      
            try {
                if (this.readyState == 4) {

                    if (this.status == 200) {
                        showUnsubsribeResult();
                    }
                    else {
                        var error = JSON.parse(this.responseText);
                        showUnsubsribeResult(error.message);            
                    }
                }    
            }  
            catch (e) {
                showUnsubsribeResult(e);
            }
        };
            
        xhttp.open('DELETE', `${url}/${id}`, true);
        xhttp.send();
    }
}

function showUnsubsribeResult(error) {
    document.getElementById('unsubscribeWaiting').style.display = 'none';
    if (error) {
        document.getElementById('unsubcribeError').style.display = 'block';
        console.error(error);        
    }    
    else {
        document.getElementById('unsubcribeResult').style.display = 'block';
    }
}