var instructorOptions = document.getElementById('instructors').options;
var instructorDisplay = document.getElementById('selected_instructors');
$('#instructors').on('changed.bs.select', function(e, clickedIndex, isSelected, previousValue) {
    if (isSelected) {
        var paragraphNode = document.createElement("p");
        paragraphNode.id = "instructor-" + instructorOptions[clickedIndex].value;
        var textNode = document.createTextNode(instructorOptions[clickedIndex].text);
        paragraphNode.appendChild(textNode);
        instructorDisplay.appendChild(paragraphNode);
    }
    
    else if(!isSelected) {
        var clickedInstructorOption = document.getElementById('instructor-' + instructorOptions[clickedIndex].value);
        clickedInstructorOption.parentNode.removeChild(clickedInstructorOption);
    }
});

var studentOptions = document.getElementById('students').options;
var studentDisplay = document.getElementById('selected_students');;

$('#students').on('changed.bs.select', function(e, clickedIndex, isSelected, previousValue){
    if (isSelected) {
        var paragraphNode = document.createElement("p");
        paragraphNode.id = "student-" + studentOptions[clickedIndex].value;
        var textNode = document.createTextNode(studentOptions[clickedIndex].text);
        paragraphNode.appendChild(textNode);
        studentDisplay.appendChild(paragraphNode);
    }
    
    else if(!isSelected) {
        var clickedStudentOption = document.getElementById('student-' + studentOptions[clickedIndex].value);
        clickedStudentOption.parentNode.removeChild(clickedStudentOption);
    }
});