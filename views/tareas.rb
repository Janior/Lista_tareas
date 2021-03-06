<!DOCTYPE html> 
<html> 
    <head> 
      <title> To do List</title> 
         <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
         <!-- Latest compiled and minified CSS --> 
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
         <!-- Jquery --> 

        <script 
        src="https://code.jquery.com/jquery-3.2.1.min.js" 
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" 
        crossorigin="anonymous"></script> 
        <!-- Latest compiled and minified JavaScript --> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 
        <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet"> 
        <link rel="stylesheet" href="style.css"> 
    </head> 
    <body> 
        <div class="container"> 
           <div class="row"> 
 	            <div class="col-md-4 col-md-offset-4"> 
 	                <h1>Tareas:</h1> 
 		              <form action="/tareas" method="POST"> 
 			                <div class="form-group"> 
 				                 <input class= "form-control" type="text"  placeholder="Task" name="tarea"> 
 			                </div> 
 			                <div class="form-group"> 
 				                  <input class="btn btn-primary btn-block" type="submit" value="Create"> 
 			                </div> 
 		              </form> 
 	            </div> 
            </div> 
            <div class="row"> 
               	<div class="col-md-4 col-md-offset-1"> 
 	   	               <h2>Tareas por hacer:</h2> 
 		                 <% @tareas.each do |tarea| %> 
 	                      <% if tarea["done"]==false %> 
 				                  <ul class="list-group"> 
 					                    <li class="list-group-item"> <%= tarea["title"] %><a style="float:right" href="tareas/delete/<%=tarea["id"]%>"> <i class="glyphicon glyphicon-trash"></i></a><a style="float:right" href="tareas/edit/<%=tarea["id"]%>"><i class="glyphicon glyphicon-thumbs-up"></i></a></li> 
 				                  </ul> 
 			                  <% end %> 
 	  	              <% end %> 
 	              </div> 
 	              <div class="col-md-4 col-md-offset-2"> 
 	                   <h2>Tareas hechas:</h2> 
 		                 <% @tareas.each do |tarea| %> 
 		                    <% if tarea["done"]==true %> 
 				                  <ul class="list-group undone"> 
 				 		                   <li class="list-group-item"> <%= tarea["title"] %><a style="float:right" href="tareas/delete/<%=tarea["id"]%>"><i class="glyphicon glyphicon-trash"></i></a></li> 
                    			</ul> 
 			                  <% end %> 
 		                 <% end %> 
 	              </div> 
            </div> 
      </div> 
    </body> 
 </html> 