
$(window).on("load", init2);


var x;
function init2(){
	setTimeout(function(){

				tcw = new trashCanWatcher();
				tcw.listenForTrash();
	}, 2000)

}

var trashCanWatcher = function(){

	this.listenForTrash = function(){

		 $('tr').each(function(index){
		 	index = index-1;
		 	$(this).children("td").first().attr('id',"td-"+index )
		 	$(this).children("td").first().draggable()
		 	 });
		   $( "#trashCan" ).droppable({
			      drop: function( event, ui ) {
			     
			      	//x = ui;

			       thisId = ui.draggable.attr('id');
			       whichElement = thisId.replace('td-', '');

			       $('.btn-danger:nth('+whichElement+')').click();
			      }

    		});
	}
}


