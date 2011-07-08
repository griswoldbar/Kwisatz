// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  function ShowQuestion(obj,questionPath)
  {
    currentQuestion=obj
    $.ajax({ 
      url: questionPath,
      type: "GET",
      success: function(data) { 
        $("#id-quiz-round-1").hide("slow"); 
        $("#reply").html(data);
        $("#reply").show("slow");
      },
      error: function(){alert("failed")}
    })
    return false;
  }
  function ShowAnswer(revealPath,rails_question_id)
  {
    question_id=("id-question-"+rails_question_id);
    question=document.getElementById(question_id);
    $(question).hide();
    $.ajax({
      url: revealPath,
      type: "GET",
      success: function(data) {  
        $("#reply").html(data);
      },
      error: function(){alert("failed")}
    })    
  }
  function ShowQuestionBoard()
  {
    $("#id-quiz-round-1").show("slow");
    $("#reply").hide("slow");
  }

