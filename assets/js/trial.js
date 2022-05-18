function sendTrial(url) {
    const btnSend = document.querySelector("#btnSend");    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {      
      try {
        if (this.readyState == 4) {
          document.body.style.cursor = 'default';

          if (this.status == 200) {
              var response = JSON.parse(this.responseText);
              if (response && response.errors && response.errors.length > 0) {
                showTrialIssues(response.errors);
              }
              else {
                showSendTrialSuccess(response.value);                
              }
          }
          else {
            var error = JSON.parse(this.responseText);
            showSendTrialError(error.message);            
          }
        }    
      }  
      catch (e) {
        showSendTrialError(e);
      }
      finally {
        btnSend.disabled = false;
      }
    };
        
    var trial = getTrialData();

    if (trial.termsAccepted) {
      document.body.style.cursor = 'progress';
      resetTrialErrorsForm();

      xhttp.open('POST', url, true);
      xhttp.setRequestHeader('Content-Type', 'application/json');
      btnSend.disabled = true;
      xhttp.send(JSON.stringify(trial));
    }
    else {
      showTermsIssue();
    }
}

function getTrialData() {
  var firstName = document.getElementById('trialFirstName').value;
  var lastName = document.getElementById('trialLastName').value;
  var company = document.getElementById('trialCompany').value;
  var email = document.getElementById('trialEmail').value;
  var termsAccepted = document.getElementById('trialTerms').checked;

  return {
    firstName: firstName,
    lastName: lastName,
    company: company,
    email: email,
    termsAccepted: termsAccepted
  };
}

function resetTrialErrorsForm() {
  document.getElementById('firstNameError').innerText = '';
  document.getElementById('lastNameError').innerText = '';
  document.getElementById('companyError').innerText = '';
  document.getElementById('emailError').innerText = '';
  document.getElementById('termsError').innerText = '';
}

function showSendTrialSuccess(key) {
  document.getElementById('trialForm').style.display = 'none';
  document.getElementById('trialMain').style.maxWidth = '800px';
  document.getElementById('trialTitle').innerText = 'Your trial license key';
  document.getElementById('trialResponse').style.display = 'block';  
  document.getElementById('responseKeyCode').innerHTML = JSON.stringify(JSON.parse(key), undefined, 2);
}

function showSendTrialError(error) {
  document.getElementById('trialErrorMessage').innerText = error;
  document.getElementById('trialError').style.display = 'block';
  document.getElementById('trialTerms').checked = false;
  showPopupContainer();
}

function showPopupContainer() {
  document.getElementById('popupContainer').style.display = 'block';
}

function closeTrialPopup() {
  document.getElementById('popupContainer').style.display = 'none';
  document.getElementById('trialError').style.display = 'none';
}

function showTrialIssues(errors) {
  document.getElementById('trialTerms').checked = false;
  resetTrialErrorsForm();

  errors.forEach(error => {
    var errorId = null;
    switch (error.reference) {
      case 'FirstName':
        errorId = 'firstNameError';
        break;
      case 'LastName':
        errorId = 'lastNameError';
        break;
      case 'Company':
        errorId = 'companyError';
        break;
      case 'Email':
        errorId = 'emailError';
        break;
    }
    if (errorId != null) {
      document.getElementById(errorId).innerText = error.message;      
    }
  });
}

function showTermsIssue() {
    document.getElementById('termsError').innerText = 'Your consent is required';      
}