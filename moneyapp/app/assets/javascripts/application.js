
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function summ (array) {
   	 	var summation = 0;
    	for (var i=0; i<array.length ; i++){
    		summation += array[i];
   		}
	return summation;
}

function selector (name,namearray){
	var counter = 0;
	var nameid = [];
	for (var i=0; i<namearray.length ; i++){
		counter += 1;
		if (namearray[i].charAt(0) == name.charAt(0)){
			nameid.push(counter);
		}
	}
	return(nameid);
}

function valueofperson (selectorarray,valuearray){
	uservaluearray = [];
	var counter = 0;
	for (var i=0; i<valuearray.length ; i++){
		counter += 1;
		if (selectorarray.indexOf(counter) != -1){
			uservaluearray.push(valuearray[i]);
		}
	}
	return uservaluearray
}

function showsum (name){
	var walvalues = gon.wallets_values;
	var walnames = gon.wallets_names;
	var walreasons = gon.wallets_reasons;
    var waldecp = gon.wallets_decp;
    var actval =[];
	for (var i=0; i<walvalues.length ; i++){
	actval[i]=walvalues[i]+(0.01*waldecp[i]);
	}
	
	var selectorsforname = selector(name,walnames);
	var intsforname = summ(valueofperson(selectorsforname,actval));
	return intsforname; 	
}

function howmuchowed (name){
	var Tom = showsum("Tom");
	var Ed = showsum("Ed");
	var Ias = showsum("Ias");
	var total = (Tom+Ed+Ias)/3;
	var difference = total - showsum(name);
	return difference;
}

function ed (){
	var testval1 = howmuchowed("Ed");
	document.getElementById("tableone").innerHTML=testval1;

	var testval2 = howmuchowed("Tom");
	document.getElementById("tabletwo").innerHTML=testval2;

	var testval3 = howmuchowed("Ias");
	document.getElementById("tablethree").innerHTML=testval3;
}