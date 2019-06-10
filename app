var tbody = d3.select('tbody');
data.forEach(function(ufoTable) {
    console.log(ufoTable);
    var row = tbody.append("tr");

    Object.entries(ufoTable).forEach(function([key, value]) {
    console.log(key, value);
    var cell = tbody.append("td");
    cell.text(value);
    });
    });


var inputField = d3.select("#datetime");
inputField.on('change', function(){
    var datedata = d3.event.target.value;
    var button= d3.select('#filter-btn');
    button.onclick = function(){
        document.getElementById('table-area').innerHTML = data.filter(datedata);
    }
    console.log(datedata);
});  
