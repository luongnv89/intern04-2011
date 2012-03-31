
function validateForm_doLoginClientSideValidation() {

form = document.getElementById("doLoginClientSideValidation");

clearErrorMessages(form);

clearErrorLabels(form);

var errors = false;

// field name: account

// validator name: requiredstring

if (form.elements['account']) {

field = form.elements['account'];

var error = "Account is required";

if (field.value != null && (field.value == "" || field.value.replace(/^\s+|\s+$/g,"").length == 0)) {

addError(field, error);

errors = true;

}

}

// field name: password

// validator name: requiredstring

if (form.elements['password']) {

field = form.elements['password'];

var error = "Password is required";

if (field.value != null && (field.value == "" || field.value.replace(/^\s+|\s+$/g,"").length == 0)) {

addError(field, error);

errors = true;

}

}

return !errors;

}
