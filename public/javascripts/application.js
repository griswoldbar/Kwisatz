// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  function ShowQuestion(questionPath)
  {
    $.ajax({ 
      url: questionPath,
      type: "GET",
      success: function(data) { 
        $("#reply").html(data);
        $('#reply').hide();
        $.blockUI({
          message: $("#reply").html()	
        }); 
      },
      error: function(){alert("failed")}
    })
    return false;
  }
  
  function ShowAnswer(revealPath,rails_question_id)
  {
    $.ajax({
      url: revealPath,
      type: "GET",
      success: function(data) { 
        $("#reply").html(data);
        $.blockUI({
          message: $("#reply").html()	
        });
        question_id=("id-question-"+rails_question_id);
    
        $("#"+question_id).hide();
      },
      error: function(){alert("failed")}
    })    
  }
  function ShowQuestionBoard()
  {
    $.unblockUI();
    $("#reply").hide();
  }

