# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  
  status = $('#bug_status').html()
  $('#bug_status').parent().hide()
  console.log(status)
  $('#bug_role').change ->
    role = $('#bug_role :selected').text()
    console.log(role)
    options ='hello'
    if(role=='Bug')
    	options='<option value=new>New</option><option value=started>Started</option><option value=resolved>Resolved</option>'
    else
    	options='<option value=new>New</option><option value=started>Started</option><option value=completed>Completed</option>'
    
    console.log(options)
    if options
      $('#bug_status').html(options)
      $('#bug_status').parent().show()      
    else
      $('#bug_status').empty()
      $('#bug_status').parent().hide()