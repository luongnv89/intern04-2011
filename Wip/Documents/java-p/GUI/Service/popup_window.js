// JavaScript Document
//show tab
var bool=0;
function showtab() {
		document.getElementById('tab4').className = 'link_active';
		document.getElementById('tab5').className = 'link_active';
		document.getElementById('tab6').className = 'link_active';
	}
//hien thi organisation popup	
function close_popup_organisation(){
		document.getElementById('popup_organisation').className="inactive";
	}
function open_popup_organisation(){
	document.getElementById('popup_organisation').className="active";
	}
//hien thi premises popup
function close_popup_premises(){
	document.getElementById('popup_premises').className="inactive";
	}
function open_popup_premises(){
	document.getElementById('popup_premises').className="active";
	}
function open_mark_inactive_service(){
		var rev;
		if(bool==0){
			rev=confirm('Do you want to mark this Service in-active?');
		}
		else{
			rev=confirm('This Service is already in use, do you want to make this in-active?');	
		}
		alert('ban da chon '+rev);
}
function set_condition(b){
		bool=b;
	}