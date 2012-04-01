function doSubmit()
{
	if(document.getElementById('checkBoxInActive').checked==true){
		document.formOrganisationListCheckBoxIsChecked.submit();
	}
	
	else{
		document.formOrganisationListByActiveWhenCheckBoxIsUnChecked.submit();
	}
}

function setCheckBoxIsChecked()
{
	document.getElementById('checkBoxInActive').checked=true;
}


function setCheckBoxIsUnChecked()
{
	document.getElementById('checkBoxInActive').checked=false;
}
