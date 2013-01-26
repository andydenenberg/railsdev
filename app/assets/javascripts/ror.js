function ChangeProject(Proj) {
	if ( Proj == 'talon' ) {
	document.getElementById('talon_btn').classList.add('active');
	document.getElementById('fairtaxes_btn').classList.remove('active');
	document.getElementById('stin_btn').classList.remove('active');	
	document.getElementById('talon').style.display = 'block'; 		
	document.getElementById('fairtaxes').style.display = 'none'; 		
	document.getElementById('stin').style.display = 'none'; 		
	}
	else if ( Proj == 'fairtaxes') {
		document.getElementById('talon_btn').classList.remove('active');
		document.getElementById('fairtaxes_btn').classList.add('active');
		document.getElementById('stin_btn').classList.remove('active');	
	document.getElementById('talon').style.display = 'none'; 		
	document.getElementById('fairtaxes').style.display = 'block'; 				
	document.getElementById('stin').style.display = 'none'; 		
	}
	else {
		document.getElementById('talon_btn').classList.remove('active');
		document.getElementById('fairtaxes_btn').classList.remove('active');
		document.getElementById('stin_btn').classList.add('active');	
		document.getElementById('talon').style.display = 'none'; 		
		document.getElementById('fairtaxes').style.display = 'none'; 				
		document.getElementById('stin').style.display = 'block'; 				
	}
}

function AddAttachment(Post) {
	$('#add_attachment_button').hide()
    $.get('/posts/add_attachment', 
          { post:Post, type_is:'<%= @type_is %>' },         
          function(data) {
            $("#attachment").html(data);
          });
  }
