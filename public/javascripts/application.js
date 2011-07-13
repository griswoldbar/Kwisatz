// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  function CreateRound()
  {
    name=$("#round_name").val();
    questions_per_category=$("#round_questions_per_category").val();
    category_count=$("#round_category_count").val();
    
    $.post('/rounds',{ 
        round:{ 
          name:name, 
          questions_per_category:questions_per_category,
          category_count:category_count        
        }
      },
     function(data){
        $("#reply").html(data);
        $("#new_round").hide();
      }
     );
  }
  
  function EditQuestion(category, difficulty)
  {
    $("#question-form").attr('category',category);
    $("#question-form").attr('difficulty',difficulty);
    $("#question-form").toggleClass('cant-be-seen');
  }
  
  function SaveQuestion(obj, round_id){    
    category_id=$(obj).parent().attr('category');
    category_name=$("#category"+category_id).val();
    difficulty=$(obj).parent().attr('difficulty');
    text=$('#id-question-text').val();
    answer=$('#id-question-answer').val();
    $.post(
      '/roundquestions',
      { question:
        { 
          difficulty:difficulty,
          text:text,
          answer:answer,
        },
        roundquestion:
        {
          round_id:round_id
        },
        category:
        {
          category_name:category_name
        }
      },
      function(data){
        
      }
    )
    
  }

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
        $("#"+question_id).html("&nbsp&nbsp&nbsp");
      },
      error: function(){alert("failed")}
    })    
  }
  function ShowQuestionBoard()
  {
    $.unblockUI();
    $("#reply").hide();
  }

