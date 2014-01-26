// $(document).ready(function(){	
$(document).on('ready page:change', function(){


    //Set variables: i.e., textArea sizes
		  var colNo = 130;
		  var itemValS = 30;  var itemValL = 50;
	      var $Heading = 'Needs to be dynamically Entered'
		  $('#heading1').html($Heading);	  

	//++++   STYLES   ++++++++++++++++++++++++++
	
	   //MAIN HEADING	   
	   $('#heading1').addClass('head1') //Main Heading
	   //Toggle hide for main heading
	   $('#heading1').click(function(){
	   	  if ($('#noteList li').filter(':odd').hasClass('hidden')){
	   	  	$('#noteList li').filter(':odd').removeClass('hidden');
	   	}else{
	   		$('#noteList li').filter(':odd').addClass('hidden');
	   	}	
	   })
	  //  $('#heading1').toggle(function(){
	  //     $('#noteList li').filter(':odd').addClass('hidden');
		 // },function(){
		 //   $('#noteList li').filter(':odd').removeClass('hidden');
	  //  });
	   //Hover colors
	   $('#heading1').hover(function(){
	       $(this).addClass('heading1_hover');
		 },function(){
		  $(this).removeClass('heading1_hover');
	   });	   
	   //SUBHEADINGS i.e., all even li
	   $('#noteList li').filter(':even').addClass('head2');
	   //Show first non-header element and hide all other non-headers
	   //Hide all odd li elements
	   $('#noteList li').filter(':odd').addClass('hidden');	   
	   //Remove hidden ONLY from the second list item
	   $('#noteList li:eq(1)').removeClass('hidden');
	   
	   //Set up click function on headers (even li rows) to toggle non-header rows "odd"
	   $('#noteList li').filter(':even').click(function(){
	      if ($(this).next().hasClass('hidden')){
		     $(this).next().removeClass('hidden')
		  }else {$(this).next().addClass('hidden');}
		  });
	   	   
	   //Hover colors
	   $('#noteList li').filter(':even').hover(function(){
	       $(this).addClass('noteList_hover');
		 },function(){
		  $(this).removeClass('noteList_hover');
	   });
	   
	   //DIV
	    $('#picture').addClass('picture');
	   
	   //TEXTAREAS
	   $(':input[id^=taItemValue]').addClass('textArea1').attr({cols: colNo, rows: itemValS});
	   
	   //BUTTONS
	   $(':button[id^=bItemValue]').addClass('button9');
	   $(':button[id^=bSave]').addClass('button11');
	 
	   //SELECTS
	   $(':input[id^=select]').addClass('textArea1');
	 
	   //TEXTBOXES
	   $(':text').addClass('enterText1');
	 
	   //MESSAGE BOXES
	   //Message boxes (status of "saves"   
	   $('Input[id^=tempSave]').addClass('tempSave hidden');
	   $('Input[id^=permSave]').addClass('permSave hidden');

	   
	 //**********  DATE PICKERS   ************
     // Configure DatePickers (from custom library)
		  $('Input[id^=date]').datepicker(
			 {changeMonth: true, changeYear: true }
			);
		  

	//If date is entered make sure it is goodDate on blur	
		// $('#dateOrderDate').blur(function(){
		//     var $message1 = 'Please enter VALID date with format "mm/dd/yyyy"'
		//     if (!$('#dateOrderDate').mjm_validateDate(3,$message1)){return;}
		// });

       //Reset Buttons
	$('#bItemValue1Reset').click(function(){
	    //openWindow1('/eCare_out/eCare/assets/templates/Reset_jq.cfm?&NOTETYPE='+$noteType+'&ITEMVALUE=ITEMVALUE1&CODE='+$code+'&PAT1_ID='+$PAT1_ID+'','largeExample1');
	    alert('this is the reset button');
	});	
	
}) //document on function