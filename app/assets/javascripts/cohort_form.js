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
        var clickedOption = document.getElementById('instructor-' + instructorOptions[clickedIndex].value);
        clickedOption.parentNode.removeChild(clickedOption);
    }
});