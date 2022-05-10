function sendOrderCompleted(url) {
    var id = getQueryStringValue('sale_id');
    if (id) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {      
            try {
                if (this.readyState == 4) {

                    if (this.status == 200) {
                        var response = JSON.parse(this.responseText);
                        showSendOrderCompletedResult(response.value);                
                    }
                    else {
                        var error = JSON.parse(this.responseText);
                        showSendOrderCompletedResult(null, error.message);            
                    }
                }    
            }  
            catch (e) {
                showSendOrderCompletedResult(null, e);
            }
        };
            
        xhttp.open('POST', `${url}/${id}`, true);
        xhttp.send();
    }
}

function showSendOrderCompletedResult(value, error) {
    document.getElementById('orderCompletedWaiting').style.display = 'none';
    if (error) {
        document.getElementById('orderCompletedError').style.display = 'block';
        console.error(error);        
    }    
    else {
        const thanksElement = document.querySelector(".orderCompletedThanks");
        thanksElement.innerHTML = thanksElement.innerHTML.replace('{name}', value.firstName).replace('{productName}', value.productName)
        document.getElementById('responseKeyCode').innerHTML = JSON.stringify(JSON.parse(value.license.value), undefined, 2);
        document.getElementById('orderCompletedResult').style.display = 'block';
    }
}