function doCheckBoxSubmit()
{
	setValueForHiddenField();
	document.formOrganisationListCheckBoxIsChecked.submit();
}

function setValueForHiddenField()
{
	document.getElementById('checkBoxInActive').value='1';
}

function createButtonIsSubmitted()
{
		document.formCreateButtoneIsSubmitted.submit();
}